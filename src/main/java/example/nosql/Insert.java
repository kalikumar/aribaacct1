package example.nosql;
import example.nosql.CloudantClientMgr;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.cloudant.client.api.Database;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
public class Insert extends HttpServlet
{  
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	  {
	    res.setContentType("text/html");
	    //PrintWriter pw = res.getWriter( );
							   
	    String str1 = req.getParameter("industry");
	    String str2 = req.getParameter("pal");
	    String str3 = req.getParameter("projectid");
	    String str4 = req.getParameter("client");
	    String str5 = req.getParameter("projectname");
	    String str6 = req.getParameter("projecttype");
	    String str7 = req.getParameter("startdate");	  
	    String str8 = req.getParameter("enddate");	
	    String str9 = req.getParameter("TCVvalue");
	    String str10 = req.getParameter("headcount");

	Database db = null;

				db = CloudantClientMgr.getDB("projectdetails");
		
				System.out.println(db);
				Map<String, Object> data = new HashMap<String, Object>();
			
				
				data.put("industry", str1);
				data.put("pal", str2);
				data.put("projectid", str3);
				data.put("client", str4);
				data.put("projectname", str5);
				data.put("projecttype", str6);
				data.put("startdate", str7);
				data.put("enddate", str8);
				data.put("TCVvalue", str9);
				data.put("headcount", str10);
				
				data.put("creation_date", new Date().toString());
				db.save(data);
				req.getSession().setAttribute("kkr", str5); 
	            req.getRequestDispatcher("InsertSuccessful.jsp").forward(req, res);
				
				  }         
  

}  