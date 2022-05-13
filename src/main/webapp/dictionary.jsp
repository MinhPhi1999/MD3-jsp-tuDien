<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/13/2022
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String,String> dic = new HashMap<>();
%>
<%  dic.put("hello","xin chao");
    dic.put("cat","con meo");
    dic.put("dog","con cho");
    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result!=null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    }else {
        out.println("Not found");
    }
%>
</body>
</html>
