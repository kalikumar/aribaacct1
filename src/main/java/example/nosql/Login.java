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
public class Login extends HttpServlet
{  
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	  {
	    res.setContentType("text/html");
	    PrintWriter pw = res.getWriter( );
							   
	    String str1 = req.getParameter("userid");
	    String str2 = req.getParameter("password");
		    						
	  
	  


	Database db = null;

				db = CloudantClientMgr.getDB("login");
			

			JsonObject resultObject = new JsonObject();
			JsonArray jsonArray = new JsonArray();

					// get all the document present in database
					List<HashMap> allDocs = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
							.getDocsAs(HashMap.class);
	         System.out.println(allDocs);
	             for (HashMap doc : allDocs) {
	             HashMap<String, Object> obj = db.find(HashMap.class, doc.get("_id") + "");
	             String	email1 = (String) obj.get("_id");
	             String pass1= (String) obj.get("password");
	             String first=(String) obj.get("firstnameid");
	             String last=(String) obj.get("lastname");
	             String name= first+" " +last ;	
					System.out.println(email1);	
					System.out.println(pass1);	
					
					  if(str1.equalsIgnoreCase(email1) && str2.equals(pass1))
					    {
					     // pw.println("<h3>Thankyou, you are VALID</h3>");
					
						  req.getSession().setAttribute("kkr", name); 
				            req.getRequestDispatcher("main.jsp").forward(req, res);
					      //res.sendRedirect("main.jsp");
					      break;
					    } 
					    else
					    {
					      pw.println("<h3>Sorry, you are INVALID</h3>");
					    }
					    pw.close( );
					
					}
	 
	  }         
  

}  