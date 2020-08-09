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

public class onservletwardbill extends HttpServlet {
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
  //response.getWriter().append("Served at: ").append(request.getContextPath());
  response.setContentType("text/html");
  PrintWriter pw=response.getWriter();
  try
  {
        int a=Integer.parseInt(request.getParameter("p_id"));
       int b=Integer.parseInt(request.getParameter("ward_id"));
        int c=Integer.parseInt(request.getParameter("ndays"));
       int d=Integer.parseInt(request.getParameter("ward_bill"));
       
     
  PreparedStatement ps=cn.prepareStatement("insert into wbill (wpid,wbwid,ndays,wbid) values(?,?,?,?)");
       ps.setInt(1,a);
       
       ps.setInt(2,b);
       ps.setInt(4,d);
       ps.setInt(3,c);
      

  int g=ps.executeUpdate();
 pw.println("updated");
  if(g>0){
      PreparedStatement ds=cn.prepareStatement("select cost*ndays from ward,wbill where wid=? and wbwid=?");
      ds.setInt(1,b);
      ds.setInt(2,b);
     // ds.setInt(1,f);
 ResultSet ds1=ds.executeQuery();
 if(ds1.next()){
pw.println("<html>");
pw.println("<head>");
  pw.println("<title>OU HOSPITALS</title>");
  pw.println("<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>");
pw.println("</head>");
pw.println("<body>");
    pw.println("<div class='container-fluid'>");
      pw.println("<div class='jumbotron'>");
        pw.println("<h1 style='text-align:center'>OU HOSPITALS</h1>");      
        pw.println("<p style='text-align:center'>please be sick for our development</p>");
      pw.println("</div>");
      pw.println("<form action='ward' method='get' class='form-inline'>");
        pw.println("<div  style='padding-left:30%;padding-bottom:2px;' class='form-group'>");
          pw.println("<label for='exampleInputName2'>Patient id</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputName2'value='"+a+" '>");
        pw.println("</div>");
        pw.println("<br><br>");
        pw.println("<div class='form-group' style='padding-left:35%;padding-bottom:2px;'>");
          pw.println("<label for='exampleInputEmail2' >bill id</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputEmail2' value='"+d+" '>");
        pw.println("</div>");
        pw.println("<br><br>");
        pw.println("<div class='form-group' style='padding-left:39%;padding-bottom:2px;'>");
          pw.println("<label for='exampleInputEmail2'>Ward id</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputEmail2' value='"+b+" '>");
        pw.println("</div>");
        pw.println("<br><br>");
          pw.println("</div>");
        pw.println("<br><br>");
        pw.println("<div class='form-group' style='padding-left:39%;padding-bottom:2px;'>");
          pw.println("<label for='exampleInputEmail2'>Number of days</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputEmail2' value='"+c+" '>");
        pw.println("</div>");
        pw.println("<br><br>");
        pw.println("<div class='form-group' style='padding-left:42%'>");
          pw.println("<label for='exampleInputEmail2'>Bill</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputEmail2' value='"+ds1.getInt(1)+" '>");
        pw.println("</div>");
        pw.println("<br><br><br>");
      pw.println("<div style='padding-left:45%'>  <button type='submit' class='btn btn-default'>make new appointment</button></div>");
      pw.println("</form>");
    pw.println("</div>");
    pw.println("</body>");
pw.println("</html>");
}
 
    
  }

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