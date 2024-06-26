<?php
	include 'includes/session.php';

	if(isset($_POST['reset'])){
		$email = $_POST['email'];

		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM users WHERE email=:email");
		$stmt->execute(['email'=>$email]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){
			//generate code
			$set='123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$code=substr(str_shuffle($set), 0, 15);
			try{
				$stmt = $conn->prepare("UPDATE users SET reset_code=:code WHERE id=:id");
				$stmt->execute(['code'=>$code, 'id'=>$row['id']]);
			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
			
			header('location: http://localhost/coffee-shop/password_reset.php?code='.$code.'&user='.$row['id'].'');
		}
		else{
			$_SESSION['error'] = 'Email not found';
			header('location: password_forgot.php');
		}
		
		$pdo->close();
		
	}
	else{
		$_SESSION['error'] = 'Input email associated with account';
		header('location: password_forgot.php');
	}
	
	

?>