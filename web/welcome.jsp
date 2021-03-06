<%-- 
    Document   : welcome
    Created on : 28 Apr, 2019, 11:34:29 PM
    Author     : Adishi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Dashboard | FaLRAS</title>
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="main.js"></script>
                <style>
                    * {
	box-sizing: border-box;
}
body {
	margin: 0;
	paddin: 0;
	font-family: 'Source Sans Pro', sans-serif;
	background-color: #d5dae5;
	-webkit-font-smoothing: antialiased;
  	-moz-osx-font-smoothing: grayscale;
}
.header {
	position: absolute;
	width: 100%;
	z-index: 3;
	height: 44px;
	background-color: #fff;
	border-bottom: 3px solid #2d3d51;
}
.footer{
  background-color: #000;
  font-size: 13px;
  font-weight:bold;
  text-align:center;
      padding: 10px;
  color: white;
         position:relative;
      bottom: 0;
         width: 100%;
  
  }
/* logo in header(mobile version) and side-nav (tablet & desktop) */
.logo {
	height: 44px;
	padding: 10px;
    text-align: center;
	font-weight: 700;
}
.header .logo {
	color: #233245;
}
.side-nav .logo {
	background-color: #233245;
	color: #fff;
}
.header .logo {
	float: left;
}
.header .logo {
	height: 44px;
	z-index: 1;
	padding: 10px;
	font-weight: 700;
	color: #233245;
}
.logo  i {
	font-size: 22px;
}
.logo span {
	margin-left: 5px;
	text-transform: uppercase;
}
.nav-trigger {
	position: relative;
	float: right;
	width: 20px;
	height: 44px;
	right: 30px;
	display: block;	
}
.nav-trigger span, .nav-trigger span:before, span:after {
	width: 20px;
	height: 2px;
	background-color: #35475e;
	position: absolute;
}
.nav-trigger span {
	top: 50%;
}
.nav-trigger span:before, .nav-trigger span:after {
	content: '';
}
.nav-trigger span:before {
	top: -6px;
}
.nav-trigger span:after {
	top: 6px;
}
.side-nav {
	position: absolute;
	width: 100%;
	height: 100vh;
	background-color: #35475e;
	z-index: 1;
	display: none;
}
.side-nav.visible {
	display: block;
}
.side-nav ul {
	margin: 0;
	padding: 0;
}
.side-nav ul li {
	padding: 16px 16px;
	border-bottom: 1px solid #3c506a;
	position: relative;
}
.side-nav ul li.active:before {
	content: '';
	position: absolute;
	width: 4px;
	height: 100%;
	top: 0;
	left: 0;
	background-color: #fff;
}
.side-nav ul li a {
	color: #fff;
	display: block;
	text-decoration: none;
}
.side-nav ul li i {
	color: #0497df;
	min-width: 20px;
	text-align: center;
}
.side-nav ul li span:nth-child(2) {
	margin-left: 10px;
	font-size: 14px;
	font-weight: 600;
}
.main-content {
	padding: 40px;
	margin-top: 0;
	padding: 0;
	padding-top: 44px;
	height: 100%;
	overflow: scroll;
}
.main-content .title {
	background-color: #eef1f7;
	border-bottom: 1px solid #b8bec9;
	padding: 10px 20px;
	font-weight: 700;
	color: #333;
	font-size: 18px;
}
@media screen and (min-width: 600px) {
	.header {
		background-color: #35475e;
		z-index: 1;
	}
	.header .logo {
		display: none;
	}
	.nav-trigger {
		display: none;
	}
	.nav-trigger span, .nav-trigger span:before, span:after {
		background-color: #fff;
	}
	.side-nav {
		display: block;
		width: 70px;
		z-index: 2;
	}
	.side-nav ul li span:nth-child(2) {
		display: none;
	}
	.side-nav .logo i {
		padding-left: 12px;
	}
	.side-nav .logo span {
		display: none;
	}
	.side-nav ul li i {
		font-size: 26px;
	}
	.side-nav ul li a {
		text-align: center;
	}
	.main-content {
		margin-left: 70px;
	}
}
@media screen and (min-width: 800px) {
	.side-nav {
		width: 200px;
	}
	.side-nav ul li span:nth-child(2) {
		display: inline-block;
	}
	.side-nav ul li i {
		font-size: 16px;
	}
	.side-nav ul li a {
		text-align: left;
	}
	.side-nav .logo i {
		padding-left: 0;
	}
	.side-nav .logo span {
		display: inline-block;
	}
	.main-content {
		margin-left: 200px;
	}
}

.main {
	display: flex;
	flex-flow: row wrap;
}
.widget {
	flex-basis: 300px;
	flex-grow: 10;
	height: 500px;
	margin: 15px;
	border-radius: 6px;
	background-color: #ffffff;
	position: relative;
}
.widget .title {
	background-color: #eef1f7;
	border-bottom: 1px solid #dfe4ec;
	padding: 10px;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
	color: #617085;
	font-weight: 600;
}
                </style>
	</head>
	<body>
        <a href="#" class="nav-trigger"><span></span></a>
		<div class="side-nav">
			<div class="logo">
				<span>FaLRAS  |  ABPS Nagda </span>
			</div>
			<nav>
				<ul>
                    <li class = "active">
						<a href="welcome.jsp">
							<span>
                                <i class="fa fa-home" aria-hidden="true"></i>
							<span>Home</span>
						</a>
                    </li>
					<li>
						<a href="falras.jsp">
							<span><i class="fa fa-user-plus"></i></span>
							<span>FaLRAS</span>
						</a>
                    </li>
					<li>
						<a href="result.jsp">
							<span><i class="fa fa-home"></i></span>
							<span>Teacher Information</span>
						</a>
					</li>
                                                            <li>
						<a href="index.html">
							<span><i class="fa fa-sign-out" aria-hidden="true"></i>
</span>
							<span>Logout</span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
    <div class="main-content">
        <div class="title">
            <h3 align = 'center'>DASHBOARD</h3>
        </div>
        <div class="main">
            <div class="widget">
                <div class="title">
                    <h3 font-color='black', align = 'center'>WELCOME TO<br><br><b>FaLRAS | Faculty Lecture Re-Allocation System</b></h3><br>
                    </div>
                <div class="chart"><p align="center">Features of FaLRAS</p>
                    <ol>
                        <li>Rapid faculty re-allocation with an unbiased selection of faculty.</li>
                        <br>
                        <li>Retrieve Information of any Faculty Member.</li></ol>
 </div>
                		</div>
		</div>

        </body>
            <footer align = "center" class="footer">
            <p>Copyright ©2019 All rights reserved | Developed by Aditya Sharma</p>
</footer>
</html>
