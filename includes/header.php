<!DOCTYPE html>
<html>
<head>
  	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<title>Community Coffee PH</title>
  	<!-- Tell the browser to be responsive to screen width -->
  	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  	<!-- Bootstrap 3.3.7 -->
  	<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  	<!-- DataTables -->
    <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  	<!-- Font Awesome -->
  	<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  	<!-- Theme style -->
  	<link rel="stylesheet" href="dist/css/AdminLTE.css">
  	<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  	<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- Magnify -->
    <link rel="stylesheet" href="magnify\magnify.min.css">

  	<!-- Google Font -->
  	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <!-- Paypal Express -->
    <script src="https://www.paypalobjects.com/api/checkout.js"></script>
    <!-- Google Recaptcha -->
    <script src='https://www.google.com/recaptcha/api.js'></script>

  	<!-- Custom CSS -->
    <style type="text/css">
    /* Small devices (tablets, 768px and up) */
    @media (min-width: 768px){ 
      #navbar-search-input{ 
        width: 60px; 
      }
      #navbar-search-input:focus{ 
        width: 100px; 
      }
    }

    /* Medium devices (desktops, 992px and up) */
    @media (min-width: 992px){ 
      #navbar-search-input{ 
        width: 150px; 
      }
      #navbar-search-input:focus{ 
        width: 250px; 
      } 
    }

    .word-wrap{
      overflow-wrap: break-word;
    }
    .prod-body{
      height:300px;
    }

    .box:hover {
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    }
    .register-box{
      margin-top:20px;
    }

    #trending{
      list-style: none;
      padding:10px 5px 10px 15px;
    }
    #trending li {
      padding-left: 1.3em;
    }
    #trending li:before {
      content: "\f046";
      font-family: FontAwesome;
      display: inline-block;
      margin-left: -1.3em; 
      width: 1.3em;
    }

    /*Magnify*/
    .magnify > .magnify-lens {
      width: 100px;
      height: 100px;
    }
    
    /*Custom Navbar*/
    .navbar {
      background-color: #ffffff; /* Change navbar background to white */
      border: none; /* Remove border */
      border-radius: 0; /* Remove border radius */
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
    }

    .navbar-brand img {
      height: 40px; /* Adjust logo height as needed */
      margin-right: 1px; /* Add space between logo and text */
    }


    /*Custom Login Page / Register Page*/
    .login-page {
      width: 500px;
      margin: 7% auto;
      background: url('images/homepageBG.jpg') no-repeat center;
      background-size: cover;
      background-position: center;
      padding: 10px;
      border-radius: 10px;
    }

    /* Logo */
    .login-logo {
      display: flex; /* Use flexbox */
      align-items: center; /* Center items vertically */
      justify-content: center; /* Center items horizontally */
      margin-bottom: 25px;
    }

    .login-logo img {
      max-width: 40px;
    }

    /* Shop Name */
    .shop-name {
      color: #333; /* Change text color */
      font-size: 16px; /* Adjust font size */
      font-weight: bold;
      margin-top: 8px;
    }

    /* Login Box */
    .login-box {
      width: 100%;
      color: #333;
    }

    /* Login Box Body */
    .login-box-body {
      background: rgba(255, 255, 255, 1);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      color: #333;
    }

    /* Login Box Message */
    .login-box-msg {
      margin-bottom: 10px;
      font-size: 30px;
      font-weight: bold;
    }

    /* Form Control */
    .form-control {
      border: 1px solid #333;; /* Earth tone: Brown */
      border-radius: 20px;
      font-size: 16px;
    }

    .form-control:focus {
      border-color: #8D6E63; /* Earth tone: Darker Brown */
    }

    /* Primary Button */
    .btn-primary {
      background-color: #6D4C41; /* Earth tone: Brown */
      border-color: #6D4C41; /* Earth tone: Brown */
      color: #fff;
      font-weight: bold;
    }

    .btn-primary:hover {
      background-color: #8D6E63; /* Earth tone: Darker Brown */
      border-color: #8D6E63; /* Earth tone: Darker Brown */
    }
    </style>

</head>