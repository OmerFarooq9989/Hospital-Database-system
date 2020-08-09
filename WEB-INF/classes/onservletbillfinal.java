
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
/**
 * Servlet implementation class onservletlogin
 */

public class onservletbillfinal extends HttpServlet {
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
     int b,c,d,f;
      int a=Integer.parseInt(request.getParameter("usr"));
      PreparedStatement ps=cn.prepareStatement("select pname,phno from patient where pid=?");
      ps.setInt(1,a);
       ResultSet ds=ps.executeQuery();
       ds.next();
       PreparedStatement app=cn.prepareStatement("select doctor_table.dfees from doctor_table,patient where pid=? and doctor_table.did=patient.aptwith");
        app.setInt(1,a);
        ResultSet as=app.executeQuery();
        
        if(as.next()){
 f=as.getInt(1);}else{
  f=0;
}
         PreparedStatement wd=cn.prepareStatement("select ward.cost*wbill.ndays from ward,wbill where wbill.wpid=? and ward.wid=wbill.wbwid");
        wd.setInt(1,a);
         ResultSet ws=wd.executeQuery();
       if(ws.next()){
b=ws.getInt(1);}else{
  b=0;
}
          PreparedStatement med=cn.prepareStatement("select sum(mlist.mcost*medbill.quantity) from mlist,medbill,mbill where mbill.mpid=? and mbill.mbid=medbill.medbid and medbill.medid=mlist.mid group by mbill.mpid ");
       med.setInt(1,a);
       ResultSet ms=med.executeQuery();
               if(ms.next()){
c=ms.getInt(1);}else{
  c=0;
}
       
     
        PreparedStatement dig=cn.prepareStatement("select dlist.dacost from dlist,diagbill,dbill where dbill.dpid=? and dbill.dbid=diagbill.diagbid and dlist.daid=diagbill.diagid ");
        dig.setInt(1,a);
        ResultSet dis=dig.executeQuery();
          if(dis.next()){
 d=dis.getInt(1);}else{
  d=0;
}
    pw.println("<!DOCTYPE html>");
pw.println("<html>");
pw.println("<head>");
  pw.println("<title>FINAL BILLING</title>");
  pw.println("<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>");
pw.println("</head>");
pw.println("<body>");
  pw.println("<div class='container-fluid'>");
      pw.println("<div class='jumbotron'>");
        pw.println("<h1 style='text-align:center'>OU HOSPITALS</h1> ");     
        pw.println("<p style='text-align:center'></p>");
    pw.println("</div>");
    
    pw.println("<div class='row'>");
  pw.println("<div class='col-sm-2'></div>");
  pw.println("<div class='col-sm-8'>");
    pw.println("<h1>TOTAL BILL</h1>");
    pw.println("<div class='container'>");
    pw.println("<form action='bill_search.html' method='GET'");
    pw.println("<div class='form-group form-inline'>");
     pw.println("<label for='usr'>Patient Id:</label>");
     pw.println("<input type='text' class='form-control' id='usr' value='"+a+"'>");
    pw.println("</div>");
    pw.println("<div class='form-group form-inline'>");
     pw.println("<label for='usr1'>Name:</label>");
     pw.println("<input type='text' class='form-control' id='usr1' value='"+ds.getString(1)+"'>");
    pw.println("</div>");
    pw.println("<div class='form-group'>");
     pw.println("<label for='usr2'>Phone No:</label>");
     pw.println("<input type='text' class='form-control' id='usr2' value='"+ds.getInt(2)+"'>");
    pw.println("</div>");
    pw.println("<table class='table'>");
    pw.println("<thead>");
      pw.println("<tr>");
        pw.println("<th>Serial No.</th>");
        pw.println("<th>BILL</th>");
        pw.println("<th>Cost</th>");
      pw.println("</tr>");
    pw.println("</thead;");
    pw.println("<tbody>");

      pw.println("<tr>");
        pw.println("<td>1</td>");
        pw.println("<td>Appointment</td>");
        pw.println("<td><input type='text' class='form-control' id='usr1' value='"+f+"' ></td>");
      pw.println("</tr>");
 

      
      
      pw.println("<tr>");
        pw.println("<td>2</td>");
        pw.println("<td>Ward</td>");
        pw.println("<td><input type='text' class='form-control' id='usr2' value='"+b+"'></td>");
      pw.println("</tr>");
      
       
    
      
      pw.println("<tr>");
        pw.println("<td>3</td>");
        pw.println("<td>Medical</td>");
        pw.println("<td><input type='text' class='form-control' id='usr3' value='"+c+"'></td>");
      pw.println("</tr>");
      
      
      
       pw.println("<tr>");
        pw.println("<td>4</td>");
        pw.println("<td>Diagnostic</td>");
        pw.println("<td><input type='text' class='form-control' id='usr4' value='"+d+"'></td>");
      pw.println("</tr>");
 
        
    pw.println("</tbody>");
  pw.println("</table>");
  
  pw.println("<div class='form-group form-inline'>");
     pw.println("<label for='usr'>Total Cost:</label>");
     pw.println("<input type='text' class='form-control' id='usr' value='"+(f+b+c+d)+"'>");
    pw.println("</div>");
  pw.println("</div>");
  pw.println("<div class='col-sm-2'></div>");
pw.println("</div>");
 pw.println("<div style='padding-left:30%;padding-top:5%'><button type='submit' class='btn btn-primary'>submit</button></div>");
pw.println("</form>");
pw.println("</div>");
pw.println("</body>");
pw.println("</html>");
   
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