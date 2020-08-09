import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class onservletlogin
 */
public class onservletlogin extends HttpServlet {
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
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		try
		{
		PreparedStatement ps=cn.prepareStatement("select * from sample");
		ResultSet rs=ps.executeQuery();
		rs.next();
		while(rs.next())
		{
                 pw.println(rs.getString(1));
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

}
