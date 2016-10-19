<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<script src='js/jquery-3.1.0.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>
</head>
<body>
	<div class="login-page">
  		<div class="form">
    		<!-- <form class="register-form">
      			<input type="text" placeholder="name"/>
      			<input type="password" placeholder="password"/>
      			<input type="text" placeholder="email address"/>
      			<button>create</button>
      			<p class="message">Already registered? <a href="#">Sign In</a></p>
    		</form> -->
    		<form class="login-form">
      			<input type="text" placeholder="username"/>
      			<input type="password" placeholder="password"/>
      			<button>login</button>
      			<p class="message">Not registered? <a href="joinForm">Create an account</a></p>
      			<br/>
      			<button id="googleplus">Sign in with Google</button>
    		</form>
  		</div>
	</div>
</body>
</html>