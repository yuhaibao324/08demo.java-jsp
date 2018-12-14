<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/15
  Time: 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page errorPage="ShowError1.jsp"  pageEncoding="utf-8" %>
<html>
<head>
    <title>Try Catch Example</title>
</head>
<body>
<%
    try {
        int i = 1;
        i = i / 0;
        out.println("The answer is : " + i);
    }
    catch(Exception e) {
        out.println("An Exception occurred 一个例外发生: " + e.getMessage() );
    }
%>
</body>
</html>
