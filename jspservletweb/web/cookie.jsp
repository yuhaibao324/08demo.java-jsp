<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/14
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get Cookie</title>
</head>
<body>
<%
    Cookie cookie = null;
    Cookie[] cookies = null;

    //Get cookies data
    cookies = request.getCookies();
    if( cookies != null ) {

        out.println("find cookie");
        out.println("<hr color=red size=12><br>");
        for(int i = 0; i < cookies.length; i ++) {
            cookie = cookies[i];

            out.println("参数名:" + cookie.getName());
            out.println("<br>");
            out.println("参数值:" + URLDecoder.decode(cookie.getValue(),"utf-8") + "<br>");
            out.println("<hr><br>");
        }
    }else {
        out.println("<h2>没有发现cookie</h2>");
    }
%>

<%
    cookies = request.getCookies();
    if( cookies != null ){
        out.println("<h2> 查找 Cookie 名与值</h2>");
        for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            if((cookie.getName( )).compareTo("name") == 0 ){
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                out.print("<font color=red>删除 Cookie: " +
                        cookie.getName( ) + "</font><br/>");
            }
            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + URLDecoder.decode(cookie.getValue(), "utf-8") +" <br>");
            out.print("------------------------------------<br>");
        }
    }else{
        out.println("<h2>没有发现 Cookie</h2>");
    }
%>


</body>
</html>
