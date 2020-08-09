import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class onservletlogin
 */

public class onservletward extends HttpServlet {
 private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
 
 Connection cn;
    public  void init()
    {
     try
     {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","39682");
     }
     catch(Exception e)
     {
      e.printStackTrace();
     }
    }
 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.getWriter().append("Served at: ").append(request.getContextPath());
  response.setContentType("text/html");
  PrintWriter pw=response.getWriter();
  try
  {
    String abc;

      pw.println("<html><head> <title>Ward</title> ");
      pw.println("<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>");
pw.println("<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>");
pw.println("<link rel='stylesheet' href='https://code.getmdl.io/1.3.0/material.indigo-pink.min.css'> </head> <body>");
 pw.println("  <div class='container-fluid'>  <div class='jumbotron'> <h1 style='text-align:center'>OU Hospitals</h1>");
 pw.println(" <p style='text-align:center'>please be sick for our well being</p>");
 pw.println("</div>");
 pw.println("<div style='padding-left:35%;' class='container'><h3 style='padding-left:15%;padding-bottom:5%'>Ward</h3>");
 
 pw.println("<form action='wardbill' method='GET'><div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>");
 pw.println("<input class='mdl-textfield__input' type='text' name='p_id'>");
 pw.println("<label class='mdl-textfield__label' for='p_id'>Patientid</label>");
 pw.println("</div>");
 
 pw.println("<div class='form-group'><div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label '>");
 pw.println("<input class='mdl-textfield__input' type='text' name='p_name'>");
 pw.println("<label class='mdl-textfield__label' for='p_name'>Patientname</label>");
  pw.println("</div></div><div class='form-group'>");
 
 pw.println("<div class='form-group'>");
  pw.println("<label name='ward_id'>Ward id:</label>");
  pw.println("<select class='form-control' name='ward_id'>");
     PreparedStatement ds=cn.prepareStatement("select wid from ward");
   ResultSet ds1=ds.executeQuery();

   while(ds1.next()){
    pw.println("<option value='"+ds1.getInt(1)+ "'>"+ds1.getInt(1)+ "</option>");
    }
 pw.println("</select></div>");
 
 pw.println("<div class='form-group'><div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>");
 pw.println("<input class='mdl-textfield__input' type='text' name='ward_bill'>");
 pw.println("<label class='mdl-textfield__label' for='ward_bill'>Wardbillid</label></div></div>");

 pw.println("<div class='form-group'><div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>");
 pw.println("<input class='mdl-textfield__input' type='text' name='ndays'>");
 pw.println("<label class='mdl-textfield__label' for='ndays'>Number of Days</label></div></div>");
 
 pw.println("<div style='padding-left:15%'><button type='submit' class='btn btn-primary'>Make Bill</button></div>");
 pw.println(" <a href='login.html'><button class='btn btn-primary'>Log outs</button></a></form></div>");

 
 pw.println("<script defer src='https://code.getmdl.io/1.3.0/material.min.js'></script>");
 pw.println("</body></html>");

 

/* else
  {
         pw.println("Enter valid details"); 
        }
  
}*/
}
   catch(Exception e)
   {
    e.printStackTrace();
   }
 
 }/**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response);
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  doGet(request, response);
 }
}
