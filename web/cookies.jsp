<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.javaee.db.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
  <div class="row mt-5">
    <div class="col-sm-12">
      <h1 class="text-center"><% String cookieValue = (String)request.getAttribute("cookieValue");
      out.print("Your cookie data is : "+cookieValue);
      %></h1>
<form action="/setcookie" method="post">
  <div class="form-group">
    <label>COOKIE VALUE: </label>
<input type="text" name="cookie_value" class="form-control">
    </div>
  <button class=" btn btn-success">SET COOKIE</button>
</form>


      <form action="/deletecookie" method="post">
        <button class="btn btn-danger">DELETE</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>
