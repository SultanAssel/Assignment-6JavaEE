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
    <div class="col-sm-6 offset-3">
      <%
        String success = request.getParameter("success");
      if(success!=null){
      %>
      <%-- Here we use bootstrap alert to inform our user--%>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        Item added successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%
        }
      %>
     <form action="/additem" method="post">
       <div class="form-group">
         <label>NAME : </label>
         <input type="text" name="name" class="form-control">
       </div>
       <div class="form-group">
         <label>AMOUNT : </label>
         <input type="number" name="amount" class="form-control">

       </div>
       <div class="form-group">
         <label>PRICE : </label>
         <input type="number" name="price" class="form-control">
       </div>
       <div class="form-group">
         <button class="btn btn-success">ADD ITEM</button>
       </div>
     </form>
    </div>
  </div>
</div>

</body>
</html>
