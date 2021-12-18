<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.record.RecordDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.mycom.myapp.record.RecordVO" />
<jsp:setProperty property="*" name="u"/>

<%
	RecordDAO recordDAO = new RecordDAO();
	int i = recordDAO.insertRecord(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러]";
%>

<script>
	alert('<%=msg%>');
	location.href='list.jsp';
</script>