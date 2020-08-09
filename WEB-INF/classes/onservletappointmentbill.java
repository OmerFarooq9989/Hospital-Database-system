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

public class onservletappointmentbill extends HttpServlet {
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
        int a=Integer.parseInt(request.getParameter("sample1"));
       String b=request.getParameter("sample2");
       int c=Integer.parseInt(request.getParameter("sample3"));
       int f=Integer.parseInt(request.getParameter("sel1"));
       long d=Long.parseLong(request.getParameter("sample4"));
       String e=request.getParameter("sample5");
  PreparedStatement ps=cn.prepareStatement("insert into patient(pid,pname,pproblem,age,phno,aptwith) values(?,?,?,?,?,?)");
       ps.setInt(1,a);
       ps.setString(2,b);
       ps.setString(3,e);
       ps.setInt(4,c);
       ps.setLong(5,d);
       ps.setInt(6,f);
 pw.println("updated");
  int g=ps.executeUpdate();

  if(g>0){
      PreparedStatement ds=cn.prepareStatement("select dfees from doctor_table where did=?");
      ds.setInt(1,f);
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
      pw.println("<form action='appointment' method='get' class='form-inline'>");
        pw.println("<div  style='padding-left:30%;padding-bottom:2px;' class='form-group'>");
          pw.println("<label for='exampleInputName2'>Patient id</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputName2'value='"+a+" '>");
        pw.println("</div>");
        pw.println("<br><br>");
        pw.println("<div class='form-group' style='padding-left:35%;padding-bottom:2px;'>");
          pw.println("<label for='exampleInputEmail2' >appointment with</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputEmail2' value='"+f+" '>");
        pw.println("</div>");
        pw.println("<br><br>");
        pw.println("<div class='form-group' style='padding-left:39%;padding-bottom:2px;'>");
          pw.println("<label for='exampleInputEmail2'>problem</label>");
          pw.println("<input type='text' class='form-control' id='exampleInputEmail2' value='"+e+" '>");
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
