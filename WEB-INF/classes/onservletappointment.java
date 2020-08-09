
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
/**
 * Servlet implementation class onservletlogin
 */

public class onservletappointment extends HttpServlet {
 private static final long serialVersionUID = 1L;
      static int count=0;
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

    pw.println("count++");

      pw.println("<html><head>  <title>Appointment</title>  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>");  
        pw.println("link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>");
      pw.println("<link rel='stylesheet' href='https://code.getmdl.io/1.3.0/material.indigo-pink.min.css'>");
pw.println("</head>");
pw.println("<body>");
  pw.println("<div class='container-fluid'>");
  pw.println("<div class='jumbotron'>");
    pw.println("<h1 style='text-align:center'>OU Hospitals</h1> "   );  
 pw.println(  " <p style='text-align:center'>please be sick for our well being</p>");
  pw.println("</div>");
     pw.println("<div style='padding-left:20%;' class='container'>");
      pw.println("<h3 style='padding-left:20%;padding-bottom:5%'>APPOINTMENT</h3>");
      pw.println("<form action='appointmentbill' method='GET'>");
    
     pw.println("<div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>");
    pw.println("<input class='mdl-textfield__input' type='text' name='sample1'>");
    pw.println("<label class='mdl-textfield__label' for='sample1'>Patientid</label>");
  
  pw.println("</div>");
  pw.println("<div class='form-group'>");
    pw.println("<div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>");
    pw.println("<input class='mdl-textfield__input' type='text' name='sample2'>");
    pw.println("<label class='mdl-textfield__label' for='sample2'>Patientname</label>");
  pw.println("</div>");
  pw.println("</div>");
   pw.println("<div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>");
    pw.println("<input class='mdl-textfield__input ' type='text' name='sample3'>");
    pw.println("<label class='mdl-textfield__label' for='sample3'>Age</label>");
  
  pw.println("</div>");
  pw.println("<div class='form-group'>");
    pw.println("<div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>");
    pw.println("<input class='mdl-textfield__input' type='text' pattern='-?[0-9]*([0-9]+)?' name='sample4'>");
    pw.println("<label class='mdl-textfield__label' for='sample4'>Phone Number</label>");
    pw.println("<span class='mdl-textfield__error'>Input is not a number!</span>");
  pw.println("</div>");
  pw.println("</div>");
    pw.println("<div class='form-group'>");
  pw.println("<label name='sel1'>Doctor id:</label>");
  pw.println("<select class='form-control' name='sel1'>");
     PreparedStatement ds=cn.prepareStatement("select did from doctor_table");
   ResultSet ds1=ds.executeQuery();

   while(ds1.next()){
    pw.println("<option value='"+ds1.getInt(1)+ "'>"+ds1.getInt(1)+ "</option>");
    }
 pw.println("</select></div>");
 pw.println("<div class='form-group'>");
 pw.println(" <div class='mdl-textfield mdl-js-textfield'>");
 pw.println(" <textarea class='mdl-textfield__input' type='text' rows= '3' name='sample5' ></textarea>");
 pw.println("<label class='mdl-textfield__label' for='sample5'>Problem</label>");
 pw.println("</div></div><div style='padding-left:30%'><button type='submit' class='btn btn-primary'>Make Bill</button></div>");
 pw.println("</form> </div><script defer src='https://code.getmdl.io/1.3.0/material.min.js'></script>");
  
    pw.println("<a href='login.html'class='btn btn-secondary' >Logout</a>");
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
