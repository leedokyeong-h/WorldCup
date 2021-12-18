<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
.botton{
    width:200px;
    height:30px;
    border:none;
    background-color: #636e72;
    color:#fff;
}
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: hotpink;
	color: white;
}

a {
	color: Red;
}
</style>
<script>
	function deletes(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'delete/' + id;
	}
</script>
</head>
<body>
	<h1><br><br><br></h1>
	<table id="list" width="90%">
		<tr>
			<th>순서</th>
			<th>닉네임</th>
			<th>카테고리</th>
			<th>아이템</th>
			<th>시간</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.username}</td>
				<td>${u.category}</td>
				<td>${u.item}</td>
				<td>${u.regdate}</td>
				<td><a href="javascript:deletes('${u.getSeq()}')">삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<input class="botton" type="button" value="돌아가기" onclick="history.back()" />
</body>
</html>