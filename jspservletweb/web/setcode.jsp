<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/14
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Setting HTTP Status Code</title>
</head>
<body>
<%
    // 设置错误代码，并说明原因
    response.sendError(405, "Need authentication!!!" );
%>
</body>
</html>