import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
/**
 * Servlet implementation class onservletlogin
 */

public class onservletdiag extends HttpServlet {
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
      
      int a=Integer.parseInt(request.getParameter("sample1"));
      int b=Integer.parseInt(request.getParameter("sample2"));
      String diags[]=request.getParameterValues("txtbox[]");
       
  PreparedStatement ps=cn.prepareStatement("insert into dbill(dbid,dpid) values(?,?)");
       ps.setInt(1,b);
       ps.setInt(2,a);
    pw.println("updated");
  int g=ps.executeUpdate();


  PreparedStatement ps1=cn.prepareStatement("insert into diagbill values(?,?)");

  for(int i=0;i<diags.length;i++){ 

    
     ps1.setInt(1,b);
      

   ps1.setInt(2,Integer.parseInt(diags[i]));

      int e=ps1.executeUpdate();

        }


   int t=0;
  if((g>0)){
   

     pw.println("<!DOCTYPE html>");
pw.println("<html>");
pw.println("<head>");
  pw.println("<title>MEDICAL FINAL BILL</title>");
  pw.println("<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>");
pw.println("</head>");
pw.println("<body>");
  pw.println("<div class='container-fluid'>");
      pw.println("<div class='jumbotron'>");
        pw.println("<h1 style='text-align:center'>OU HOSPITALS</h1>");      
        pw.println("<p style='text-align:center'></p>");
    pw.println("</div>");
   pw.println("<form action='medical.html' method='GET'>");
    pw.println("<div class='form-group form-inline'>");
     pw.println("<label for='usr'>Patient Id:</label>");
     pw.println("<input type='text' class='form-control' id='usr' value='"+a+" '>");
    pw.println("</div>");
    
    pw.println("<div class='form-group form-inline'>");
     pw.println("<label for='usr1'>Bill id:</label>");
     pw.println("<input type='text' class='form-control' id='usr1' value='"+b+" '>");
    pw.println("</div>");
    pw.println("<table class='table'>");
    pw.println("<thead>");
      pw.println("<tr>");
        pw.println("<th>serial no</th>");
        pw.println("<th>Diagnostic name </th>");
       
        pw.println("<th>Cost</th>");
      pw.println("</tr>");
    pw.println("</thead>");
      pw.println("<tbody>");
      for(int i=0;i<diags.length;i++){
          PreparedStatement ps3=cn.prepareStatement("select daname from dlist where daid=? ");
          ps3.setInt(1,Integer.parseInt(diags[i]));
          PreparedStatement ps4=cn.prepareStatement("select dacost from dlist,diagbill where daid=? and diagid=? and diagbid=?");
          ps4.setInt(1,Integer.parseInt(diags[i]));
          ps4.setInt(2,Integer.parseInt(diags[i]));
          ps4.setInt(3,b);
  ResultSet ds=ps3.executeQuery();
  ResultSet ds1=ps4.executeQuery();
  ds.next();
  ds1.next();

        pw.println("<tr>");
        pw.println("<td >"+(i+1)+"</td>");
        pw.println("<td >"+ds.getString(1)+"</td>");
      
        pw.println("<td >"+ds1.getInt(1)+"</td>");
      pw.println("</tr>");
        }
      pw.println("</tbody>");
    pw.println("</table>");
      pw.println("</form>");
  pw.println("< a href='diag.html'><button class='btn'>go back</button></a>");
pw.println("</body>");
pw.println("</html>");

}


   

}
   catch(Exception e)
   {
    e.printStackTrace();
   }
 
 }
  /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response);
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  doGet(request, response);
}
}
 