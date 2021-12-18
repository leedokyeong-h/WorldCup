<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="com.mycom.myapp.choice.ChoiceDAO, com.mycom.myapp.choice.ChoiceVO,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<style>
.block{
	display:none; 
}
.Form {
	position: absolute;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 2px solid #adadad;
	border-radius: 15px;
}
.botton{
    width:200px;
    height:30px;
    border:none;
    background-color: #636e72;
    color:#fff;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<script>
	var jbAry = [ "${list.getItem1()}", "${list.getItem2()}",
			"${list.getItem3()}", "${list.getItem4()}", "${list.getItem5()}",
			"${list.getItem6()}", "${list.getItem7()}", "${list.getItem8()}",
			"${list.getItem9()}", "${list.getItem10()}", "${list.getItem11()}",
			"${list.getItem12()}", "${list.getItem13()}",
			"${list.getItem14()}", "${list.getItem15()}", "${list.getItem16()}" ];
	var number = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
	var files = [ "./img/짜장면.jpg", "./img/돈까스.jpg", "./img/찜닭.jpg",
			"./img/김치찌개.jpg", "./img/햄버거.jpg", "./img/보쌈.jpg",
			"./img/도시락.jpg", "./img/냉면.jpg", "./img/설렁탕.jpg",
			"./img/분식.jpg", "./img/라면.jpg", "./img/짬뽕.jpg",
			"./img/볶음밥.jpg", "./img/쌀국수.jpg", "./img/김밥.jpg", "./img/치킨.jpg" ];
	var imgs = new Array();
	for (var i = 0; i < files.length; i++) {
		imgs[i] = new Image(); // 이미지 객체 생성
		imgs[i].src = files[i]; // 이미지 미리 로딩
	}

	//다음 이미지 출력
	var count =1;
	var next = 0;
	function changeabc(img) {

		count=count+1;
		var imgDiv1 = document.getElementById('1');
		var imgDiv2 = document.getElementById('2');
		imgs.splice(next + 1, 1);
		jbAry.splice(next+1,1);
		next = next + 1; // 다음 이미지 인덱스
		next %= imgs.length; // 개수를 넘으면 처음으로
		if (imgs.length == 1) {
			imgDiv1.src = imgs[0].src; // 이미지 변경
			imgDiv2.src = imgs[0].src; // 이미지 변경
			
			document.getElementsByName("username")[0].value="${username}";
			document.getElementsByName("category")[0].value="${list.getCategory()}";
			document.getElementsByName("item")[0].value= jbAry[0];

			document.getElementById("first").innerText = jbAry[0];
			document.getElementById("second").innerText = jbAry[0];
		} else {
			imgDiv1.src = imgs[next].src; // 이미지 변경
			imgDiv2.src = imgs[next + 1].src; // 이미지 변경

			document.getElementById("first").innerText = jbAry[next];
			document.getElementById("second").innerText = jbAry[next+1];
			
		}
		if(count < 9){
			document.getElementById("te").innerText = "16강 "+ count + " / 8";
		}
		else if(count < 13){
			var num = count-8;
			document.getElementById("te").innerText = "8강 "+ num + " / 4";
		}
		else if(count < 15){
			var num = count-12;
			document.getElementById('te').innerText = "4강 "+ num + " / 2";
		}
		else if(count < 16){
			var num = count-13;
			document.getElementById('te').innerText = "2강 "+ num + " / 1";
		}
		else {
			document.getElementById('te').innerText = "우승!!!";
		}
	} 

	function changecba(img) {
		count=count+1;
		var imgDiv1 = document.getElementById('1');
		var imgDiv2 = document.getElementById('2');
		imgs.splice(next, 1);

		jbAry.splice(next,1);
		next = next + 1; // 다음 이미지 인덱스
		next %= imgs.length; // 개수를 넘으면 처음으로
		if (imgs.length == 1) {
			imgDiv1.src = imgs[0].src; // 이미지 변경
			imgDiv2.src = imgs[0].src; // 이미지 변경

			document.getElementsByName("username")[0].value="${username}";
			document.getElementsByName("category")[0].value="${list.getCategory()}";
			document.getElementsByName("item")[0].value= jbAry[0];

			document.getElementById("first").innerText = jbAry[0];
			document.getElementById("second").innerText = jbAry[0];
		} else {
			imgDiv1.src = imgs[next].src; // 이미지 변경
			imgDiv2.src = imgs[next + 1].src; // 이미지 변경

			document.getElementById("first").innerText = jbAry[next];
			document.getElementById("second").innerText = jbAry[next+1];
		}
		if(count < 9){
			document.getElementById("te").innerText = "16강 "+ count + " / 8";
		}
		else if(count < 13){
			var num = count-8;
			document.getElementById("te").innerText = "8강 "+ num + " / 4";
		}
		else if(count < 15){
			var num = count-12;
			document.getElementById('te').innerText = "4강 "+ num + " / 2";
		}
		else if(count < 16){
			var num = count-14;
			document.getElementById('te').innerText = "결승전 "+ num + " / 1";
		}
		else {
			document.getElementById('te').innerText = "우승!!!";
		}
	}
</script>
</head>
<body class ="Form">
	<h1>음식 월드컵</h1>
	<h2 id="te">16강 1 / 8</h2>
	<img src="./img/짜장면.jpg" id="1" width="300" height="300"
		onclick="changeabc(this)" />
	<img src="./img/돈까스.jpg" id="2" width="300" height="300" onclick="changecba(this)" />
	<br>
	<p id="first" style="float:left; margin-left:130px;">짜장면</p><p id="second" style="float:right; margin-right:130px;">돈까스</p><br><br>
	<form action="add" method="get">
		<input type="text" class="block" name="username" value="" />
		 <input type="text" class="block"  name="category" value="" /> 
		 <input	type="text" class="block" name="item" value="" /> <br> 
		 <input class="botton" type="submit" value="결과 저장하기" /> <input class="botton" type="button" value="돌아가기" onclick="history.back()" />
	</form>
</body>
</html>