<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String url = request.getScheme()+"://"+request.getServerName()+":"+request.getLocalPort()+request.getContextPath()+"/";
	request.setAttribute("domain", url);
%>