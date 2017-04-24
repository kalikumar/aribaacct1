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
public class Register extends HttpServlet
{  
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	  {
	    res.setContentType("text/html");
	    PrintWriter pw = res.getWriter( );
							   
	    String str1 = req.getParameter("userid");
	    String str2 = req.getParameter("password");
	    String str3 = req.getParameter("userid1");
	    String str4 = req.getParameter("userid2");
	    String str5 = req.getParameter("userid3");
	    String str6 = req.getParameter("userid4");
	    String str7 = req.getParameter("password1");	  
	  


	Database db = null;

				db = CloudantClientMgr.getDB("login");
			
				
				Map<String, Object> data = new HashMap<String, Object>();
			
				data.put("_id", str1);
				data.put("password", str2);
				data.put("firstnameid", str3);
				data.put("lastname", str4);
				data.put("email", str5);
				data.put("phone", str6);
				data.put("confirmpass", str7);
				data.put("creation_date", new Date().toString());
				db.save(data);
				res.sendRedirect("index.jsp");
				  }         
  

}  