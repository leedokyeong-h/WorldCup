<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
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

.mypageForm {
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
	margin-bottom: 20px;
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
.btn2 {
	position: relative;
	margin-bottom: 40px;
	width: 80%;
	height: 40px;
	background-position: left;
	background-size: 200%;
	color: #646464;
	border: none;
	cursor: pointer;
	display: inline;
}
</style>
</head>
<body>
	
	<form action="mypageok" method="post" class="mypageForm">
<h2>게시물 수정</h2>
		<div class="idForm">
			<input type="text" class="id" name="username"
				placeholder="Enter User Name">
		</div>
		<div class="passForm">
			<input type="password" class="pw" name="password" placeholder="PW">
		</div>
		<div class="genderForm">
			<input type="radio" class="gender" id="male" name="gender"
				value="male"> <label class="gender" for="male">male</label>
			<input type="radio" class="gender" id="female" name="gender"
				value="female"> <label class="gender" for="female">female</label>
		</div>
		<input type="submit" value="수정하기" class="btn"/> 
		<input type="button" value="취소하기" onclick="history.back()" class="btn2"/>
	</form>

</body>
</html>