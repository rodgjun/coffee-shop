<?php
	include 'includes/session.php';

	if(isset($_GET['pay'])){
		$payid = $_GET['pay'];
		$date = date('Y-m-d');

		$conn = $pdo->open();

		try{
			
			$stmt = $conn->prepare("SELECT * FROM cart WHERE user_id=:user_id");
			$stmt->execute(['user_id'=>$user['id']]);
			$cart = $stmt->fetchAll();

			if(count($cart) == 0){
				$_SESSION['error'] = 'Your cart is empty. Please add items to your cart before proceeding to checkout.';
				header('location: cart_view.php');
				exit;
			}
			
			else{
// add check if numprod is empty in chart

						$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products ON products.id=cart.product_id WHERE user_id=:user_id");
						$stmt->execute(['user_id'=>$user['id']]);


					$stock_enough = true;

					foreach($stmt as $row){
						$stmt = $conn->prepare("SELECT * FROM products WHERE id = :product_id");
						$stmt->execute(['product_id' => $row['product_id']]);
						$product = $stmt->fetchAll();
						if($row['num_products'] <= 0){
							$_SESSION['error'] = "No more Stocks for product "  .$row['name'];
							$stock_enough = false;
							break;
						}

						else if($row['num_products'] < $row['quantity']){
							$_SESSION['error'] = "Stock for product " . $row['name'] . " is not enough";
							$stock_enough = false;
							break;
						}


					}

					if(!$stock_enough){
						header('location: cart_view.php');
						return;
					}

					


				
				else{

				
				$stmt = $conn->prepare("INSERT INTO sales (user_id, pay_id, sales_date) VALUES (:user_id, :pay_id, :sales_date)");
				$stmt->execute(['user_id'=>$user['id'], 'pay_id'=>$payid, 'sales_date'=>$date]);
				$salesid = $conn->lastInsertId();
			
				try{
					$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products ON products.id=cart.product_id WHERE user_id=:user_id");
					$stmt->execute(['user_id'=>$user['id']]);

					foreach($stmt as $row){
						// insert
						$stmt = $conn->prepare("INSERT INTO details (sales_id, product_id, quantity) VALUES (:sales_id, :product_id, :quantity)");
						$stmt->execute(['sales_id'=>$salesid, 'product_id'=>$row['product_id'], 'quantity'=>$row['quantity']]);
						
						$stmt = $conn->prepare("UPDATE products SET num_products = num_products - :quantity WHERE id = :product_id");
						$stmt->execute(['product_id'=>$row['product_id'], 'quantity'=>$row['quantity']]);
					}
					

					$stmt = $conn->prepare("DELETE FROM cart WHERE user_id=:user_id");
					$stmt->execute(['user_id'=>$user['id']]);

					$_SESSION['success'] = 'Transaction successful. Thank you.';

				}
			



				catch(PDOException $e){
					$_SESSION['error'] = $e->getMessage();
					
				}
		
			}
		
	}

}


		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	
	header('location: profile.php');
	
?>