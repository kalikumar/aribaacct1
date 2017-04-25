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
							   
	    String str1 = req.getParameter("projectname");
	    String str2 = req.getParameter("projectid");
	    String str3 = req.getParameter("projecttype");
	    String str4 = req.getParameter("contractnumber");
	    String str5 = req.getParameter("startdate");
	    String str6 = req.getParameter("enddate");
	    String str7 = req.getParameter("headcount");	  
	    String str8 = req.getParameter("uom");	
	    String str9 = req.getParameter("TCVvalue");	

	Database db = null;

				db = CloudantClientMgr.getDB("projectdetails");
		
				System.out.println(db);
				Map<String, Object> data = new HashMap<String, Object>();
			
				data.put("_id", str2);
				data.put("projectname", str1);
				data.put("projecttype", str3);
				data.put("contractnumber", str4);
				data.put("startdate", str5);
				data.put("enddate", str6);
				data.put("headcount", str7);
				data.put("uom", str8);
				data.put("TCVvalue", str9);
				data.put("Industry", "AA&D");
				data.put("Pal", "Vinayak J Oak/India/IBM");
				data.put("creation_date", new Date().toString());
				db.save(data);
				req.getSession().setAttribute("kkr", str1); 
	            req.getRequestDispatcher("InsertSuccessful.jsp").forward(req, res);
				
				  }         
  

}  