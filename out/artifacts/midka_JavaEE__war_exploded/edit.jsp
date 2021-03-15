
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
      <%
        Items item = (Items)request.getAttribute("item");
        if(item!=null){
        String success = request.getParameter("success");
        if(success!=null){
      %>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        Item saved successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%
        }
      %>
      <form action="/edit" method="post">
        <input type="hidden" name="id" value="<%=item.getId()%>">
        <div class="form-group">
          <label>NAME : </label>
          <input type="text" name="name" class="form-control" value="<%=item.getName()%>">
        </div>
        <div class="form-group">
          <label>AMOUNT : </label>
          <input type="number" name="amount" class="form-control" value="<%=item.getAmount()%>" >

        </div>
        <div class="form-group">
          <label>PRICE : </label>
          <input type="number" name="price" class="form-control" value="<%=item.getPrice()%>">
        </div>
        <div class="form-group">
          <button class="btn btn-success" >SAVE ITEM</button>
        </div>
      </form>
       <%
         }
      %>
</div>
  </div>
</div>

</body>
</html>
