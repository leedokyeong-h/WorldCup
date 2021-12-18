<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style>
* {
	margin: 0px;
	padding: 0px;
	text-decoration: none;
	font-family: sans-serif;
}

body {
	background-image: #34495e;
}

.signupForm {
	position: absolute;
	width: 300px;
	height: 400px;
	padding: 30px, 20px;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 2px solid #adadad;
	border-radius: 15px;
}

.loginForm h2 {
	text-align: center;
	margin: 30px;
}

.idForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.passForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.genderForm {
	text-align: left;
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.id {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.pw {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}
.gender {
	color: #636e72;
	background: none;
}

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
	height: 40px;
	background: linear-gradient(125deg, #81ecec, #6c5ce7, #81ecec);
	background-position: left;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}

.btn:hover {
	background-position: right;
}
</style>
</head>
<body>
	<div class="container">
		<form action="signupok" method="post" class="signupForm">
			<div class="idForm">
				<input type="text" class="id" name="userid" placeholder="Enter ID">
			</div>
			<div class="idForm">
				<input type="text" name="username" class="id"
					placeholder="Enter Name">
			</div>
			<div class="passForm">
				<input type="password" class="pw" name="password"
					placeholder="Enter Password">
			</div>
			<div class="genderForm">
				<input type="radio" class="gender" id="male" name="gender" value="male"> <label class="gender" for="male">male</label>
				<input type="radio" class="gender" id="female" name="gender" value="female"> <label class="gender" for="female">female</label>
			</div>
			<button type="submit" class="btn">SIGN UP</button>
		</form>
	</div>
</body>
</html>
