<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/15
  Time: 1:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>JSP 表达式语言</title>
</head>
<body>

<!--
<jsp setProperty name="box" property="perimeter" value="100" />
-->

<jsp:text>
    Hello JSP!
</jsp:text>

<jsp:text>
    Box Perimeter is : ${2*box.width + 2*box.height}
</jsp:text>

</body>
</html>
