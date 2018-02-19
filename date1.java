/*
 * date1.java
 *
 * Created on 29 March, 2013, 1:35 PM
 */

import java.io.*;
import java.net.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author ROSHAN
 * @version
 */
public class date1 extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        	Statement stat;
        response.setContentType("text/html;charset=UTF-8");
        ResultSet rs;
       try
		{
                        String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
                        s1=request.getParameter("name");
                        s2=request.getParameter("pass");
                        s3=request.getParameter("cpass");
                        s4=request.getParameter("add");
                        s5=request.getParameter("date");
                        s6=request.getParameter("month");
                        s7=request.getParameter("year");
                        s8=s7.substring(2,4);
                        s9=request.getParameter("sex");
                        System.out.println(s1);
			Class.forName("oracle.jdbc.OracleDriver");
                        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "roshan", "rosh");
			stat=conn.createStatement();
                         rs=stat.executeQuery("select * from register order by id desc");
				String cd="";
				if(!rs.next())
					cd="E0001";
				else
				{
					String cd1=rs.getString("id");
					cd1=cd1.substring(1);
					int n=Integer.parseInt(cd1);
					n++;
					if(n>=0 && n<10)
						cd="E000" + n;
					else if(n>=10 && n<100)
						cd="E00" + n;
					else if(n>=100 && n<1000)
						cd="E0" + n;
					else if(n>=1000 && n<10000)
						cd="E" + n;
				}
                        stat.executeUpdate("insert into register values('" + cd + "','" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 +" - "+  s6 + "-" + s8 + "','" + s9 + "')");
                        //stat.executeUpdate(sql);
                        conn.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
        
        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
