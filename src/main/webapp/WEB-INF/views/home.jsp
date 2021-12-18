<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style type="text/css">
#container {
border: 2px solid #adadad;
border-radius: 25px;
background:#EBEBEB;
width: 80%;
height: 80%;
text-align: center;
margin: auto;
line-height: 40%;
}
a {
display: inline-block;
margin-left: 5%;
margin-right: 5%;
margin-top: 10%;
font-weight: bold;
font-size: 25pt;
height: 40px;
color: #646464;
}
</style>
</head>
<body>
	<h1>이상형 월드컵</h1>

	<div id="container">
	
		<a href="/myapp/choicelist">강아지 월드컵</a>
		<a href="/myapp/choicelist2">음식 월드컵</a><br>
		<a href="/myapp/record">기록 보기</a>
		<a href="/myapp/login/mypage">마이페이지</a>
		<a href="/myapp/login/logout">로그아웃</a>
	</div>
	

</body>
</html>
