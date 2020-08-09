
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

public class onservlet1 extends HttpServlet {
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

       //int a=Integer.parseInt(request.getParameter("no"));
   String a=request.getParameter("no");
       String b=request.getParameter("pwd");
     
  PreparedStatement ps=cn.prepareStatement("select dept from login where userid=? and password=?");
       ps.setString(1,a);
       ps.setString(2,b);
      
  ResultSet rs=ps.executeQuery();
  rs.next();
  abc=rs.getString(1);
 pw.println(abc);

if(rs!=null)
  {
     
     if(abc.equals("medical")){
      
  response.sendRedirect("medical.html");
        }
          else if(abc.equals("diag")){
            
  response.sendRedirect("diag.html");
        }else if(abc.equals("billdesk")){
          response.sendRedirect("bill_search.html");
        }
        else if((abc!="medical")&&(abc!="diag")&&(abc!="billdesk")){
           
response.sendRedirect("./"+abc);
        }
}
else{
 pw.println("hello2"); 
   
         pw.println("Enter valid details");
}
   
  }
   catch(Exception e)
   {
    e.printStackTrace();
   }
 }
 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  doGet(request, response);
 }
}
