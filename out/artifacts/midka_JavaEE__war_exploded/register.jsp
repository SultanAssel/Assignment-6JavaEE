
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
<head>
    <title>Title</title>
<%@include file="vendor/head.jsp"%>
</head>
<div>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
  <div class="row mt-5">
  <div class="col-sm-6 offset-3">
    <h4 class="mb-4">
      REGISTER TO SYSTEM
    </h4>
    <%
      String passError = request.getParameter("passworderror");
      if(passError!=null){
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
     Passwords are not same
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
      }
    %>

    <%
      String emailError = request.getParameter("emailerror");
      if(emailError!=null){
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      Incorrecrt email
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
      }
    %>
    <form action="/auth" method="post">
      <div class = "form-group">
        <label>EMAIL : </label>
        <input type="email" required class="form-control" name="email">
      </div>
      <div class = "form-group">
        <label>PASSWORD : </label>
        <input type="password" required class="form-control" name="password">
      </div>
      <div class = "form-group">
        <label>RE-TYPE PASSWORD : </label>
        <input type="re-password" required class="form-control" name="password">
      </div>
      <div class = "form-group">
        <label>Name: </label>
        <input type="text" required class="form-control" name="name">
      </div>
      <div class = "form-group">
        <button class="btn btn-success">Register</button>
      </div>
      </form>
      </div>
  </div>
</div>
</div>
</div>
</body>
</html>
