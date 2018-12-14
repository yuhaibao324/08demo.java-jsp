<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/14
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<%@ page import="sun.invoke.empty.Empty" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
  <title>Rookie Lesson</title>
</head>
<body>

<h2>使用JavaBean实例</h2>
<jsp:useBean id="test" class="com.examples.jsp.TestBean"/>
<jsp:setProperty name="test" property="message" value="菜鸟教程测试 Rookie Lesson..."/>
<p>Output Information.....</p>
<jsp:getProperty name="test" property="message"/>

<!--
<h2> forward ActionExample</h2>
< jsp:forward page="date.jsp" />
-->

<hr/>
<jsp:element name="xmlElement">
<jsp:attribute name="xmlElementAttr">
   属性值
</jsp:attribute>
  <jsp:body>
    XML 元素的主体定义 a
  </jsp:body>
</jsp:element>

<hr/>
<jsp:text>
  <![CDATA[<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "DTD/xhtml1-strict.dtd">]]>
</jsp:text>

<books>
  <book>
    <jsp:text>
      Welcome to JSP Programming
    </jsp:text>
  </book>
</books>

<hr/>
<h2>HTTP 头部请求实例</h2>
<table width="100%" border="1" align="center">
  <tr bgcolor="#949494">
    <th>Header Name</th>
    <th>Header Value(s)</th>
  </tr>
  <%
    Enumeration headerNames = request.getHeaderNames();
    while (headerNames.hasMoreElements()) {
      String paramName = (String) headerNames.nextElement();
      out.print("<tr><td>" + paramName + "</td>\n");
      String paramValue = request.getHeader(paramName);
      out.println("<td> " + paramValue + "</td></tr>\n");
    }
  %>
</table>

<hr color="green" size="12"/>
<a href="http://localhost:8080/index.jsp?name=RookieLesson&url=http://51toper.goho.co">测试网址</a>
<hr>
<H1> Use Get Method </H1>
<ul>
  <li><p><b>SiteName:</b>
    <%=request.getParameter("name")%>
  </p></li>
  <li><p><b>NetAddress:</b>
    <%=request.getParameter("url")%>
  </p></li>
</ul>

<hr color="green" size="12"/>
<form action="index.jsp" method="GET">
  站点名: <input type="text" name="name" value="我的站点">
  <br/>
  网址: <input type="text" name="url" value="51toper.hogo.co"/>
  <input type="submit" value="提交"/>
</form>

<hr color="green" size="12"/>
<H1> Use Post Method </H1>
<ul>
  <li><p><b>SiteName:</b>
    <%
      String strPostName = request.getParameter("name");
      if (strPostName != null && !"".equals(strPostName)) {
        String name = new String( strPostName.getBytes("utf-8"), "utf-8");
        out.println(name);
      }
    %>
  </p></li>
  <li><p><b>Net Address:</b><%=request.getParameter("url")%>
  </p>
  </li>
</ul>


<hr size="12" color="green">
<%

  Object strName = request.getParameter("name");
  if (strName != null && !"".equals(strName)) {
    String str = URLEncoder.encode(request.getParameter("name"), "utf-8");

    Cookie name = new Cookie("name", str);
    Cookie url = new Cookie("url", request.getParameter("url"));

    //设置cookie过期时间
    name.setMaxAge(60 * 60 * 24);
    url.setMaxAge(60 * 60 * 24);

    //在响应头部添加cookie
    response.addCookie(name);
    response.addCookie(url);
  }

%>
<h1>设置 Cookie</h1>

<ul>
  <li><p><b>网站名:</b>
    <%= request.getParameter("name")%>
  </p></li>
  <li><p><b>网址:</b>
    <%= request.getParameter("url")%>
  </p></li>
</ul>

<form action="index.jsp" method=GET>
  站点名: <input type="text" name="name" value="RookieSite">
  <br/>
  网址: <input type="text" name="url" value="http://51toper.hogo.co"/>
  <input type="submit" value="提交"/>
</form>

<hr color="green" size="12"/>
<h1>JSP 文件上传:</h1>
<a href="http://localhost:8080/upload/upload.jsp"> 上传文件测试 </a>
<br />

<hr color="green" size="12"/>
<h1>显示当前时间和日期</h1>
<%
  Date dNow = new Date();
  SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  out.println("<h2>"+ft.format(dNow)+"</h2>");
%>

<hr color="green" size="12"/>
<h1>JSP 页面重定向</h1>
<a href="http://localhost:8080/PageRedirect.jsp"> 测试重定向 </a>

<hr color="green" size="12"/>
<h1>JSP 点击量统计</h1>
<%
  Integer hitsCount =
          (Integer)application.getAttribute("hitCounter");
  if( hitsCount ==null || hitsCount == 0 ){
    /* 第一次访问 */
    out.println("欢迎访问菜鸟教程!");
    hitsCount = 1;
  }else{
    /* 返回访问值 */
    out.println("欢迎再次访问菜鸟教程!");
    hitsCount += 1;
  }
  application.setAttribute("hitCounter", hitsCount);
%>

<p>页面访问量为: <%= hitsCount%></p>


<hr color="green" size="12"/>


</body>
</html>
