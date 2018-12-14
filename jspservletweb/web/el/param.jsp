<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/15
  Time: 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.util.*" %>
<%
    String title = "Accessing Request Param";
%>
<html>
<head>
    <title><% out.println(title); %></title>
</head>
<body>
<center>
<h1><% out.print(title); %></h1>
</center>

<div align="center">
    <p>${param["username"]}</p>
</div>

<div align="center">
    <p>${header["user-agent"]}</p>
</div>
</body>
</html>
