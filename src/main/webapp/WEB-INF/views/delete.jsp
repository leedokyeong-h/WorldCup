<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.record.RecordDAO, com.mycom.myapp.record.RecordVO"%>
<%
	String sid = request.getParameter("id");
	String msg = "데이터 추가 성공 !";
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		RecordVO u = new RecordVO();
		u.setSeq(id);
		RecordDAO recordDAO = new RecordDAO();
		int i = recordDAO.deleteRecord(u.getSeq());
	}
	response.sendRedirect("record.jsp");
%> 