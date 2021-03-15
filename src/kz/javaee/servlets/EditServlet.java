package kz.javaee.servlets;

import kz.javaee.db.DBManager;
import kz.javaee.db.Items;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Long id = Long.parseLong(request.getParameter("id"));
      String name = request.getParameter("name");
      int amount = Integer.parseInt(request.getParameter("amount"));
      int price = Integer.parseInt(request.getParameter("price"));

      Items item = DBManager.getItem(id);
      if(item!=null){
   item.setName(name);
   item.setAmount(amount);
   item.setPrice(price);

   if(DBManager.saveItem(item)) {
     response.sendRedirect("/edit?id="+id+"&success");
   }else {
     response.sendRedirect("/edit?id="+id+"&error");
   }

      }else{
        response.sendRedirect("/");
      }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Long id = 0L;
      try {
        id = Long.parseLong(request.getParameter("id"));
      }catch (Exception e){

      }
      Items item = DBManager.getItem(id);

      if(item!=null){
        request.setAttribute("item", item);
        request.getRequestDispatcher("/edit.jsp").forward(request, response);

      }else{
        request.getRequestDispatcher("/404.jsp").forward(request, response);


      }
    }
}
