<%@ page errorPage="ShowError.jsp"  pageEncoding="UTF-8" %>

<html>
<head>
    <title>Error Handling Example</title>
</head>
<body>
<%
    // Throw an exception to invoke the error page
    int x = 1;
    if (x == 1)
    {
        throw new RuntimeException("Error condition!!! 标题");
    }
%>
</body>
</html>