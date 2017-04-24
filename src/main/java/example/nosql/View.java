package example.nosql;


import example.nosql.CloudantClientMgr;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
public class View extends HttpServlet
{  
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	  {
	    res.setContentType("text/html");
	    PrintWriter pw = res.getWriter( );
							   
	    
	    List list = new ArrayList();
       // HttpSession httpSession = req.getSession();
 					
	  
	  


	Database db = null;

				db = CloudantClientMgr.getDB("projectdetails");
			

			JsonObject resultObject = new JsonObject();
			JsonArray jsonArray = new JsonArray();

					// get all the document present in database
					List<HashMap> allDocs = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
							.getDocsAs(HashMap.class);
	         System.out.println(allDocs);
	             for (HashMap doc : allDocs) {
	             HashMap<String, Object> obj = db.find(HashMap.class, doc.get("_id") + "");
	             String	projectId = (String) obj.get("_id");
	             String projectName= (String) obj.get("projectname");
	             String projectType= (String) obj.get("projecttype");
	             String contractNumber= (String) obj.get("contractnumber");
	             String startDate= (String) obj.get("startdate");
	             String endDate= (String) obj.get("enddate");
	             String headCount= (String) obj.get("headcount");
	             String uom= (String) obj.get("uom");
	             String tcvValue= (String) obj.get("TCVvalue");
	            // String projectName= (String) obj.get("projectname");
	            	System.out.println(projectId);	
					System.out.println(projectName);	
					
					list.add(new ViewPage(projectId,projectName,projectType,contractNumber,startDate,endDate,headCount,uom,tcvValue));
					 System.out.println(list);     
					}
	            
	             
	             List list1 = new ArrayList();
	     		HttpSession httpSession = req.getSession();

	     		/*
	     		 * Hard-coded sample data. Normally this would come from a real data
	     		 * source such as a database
	     		 */
	     		httpSession.setAttribute("view", list);
	     		RequestDispatcher dispatcher = req
	     				.getRequestDispatcher("View.jsp");
	     		// RequestDispatcher dispatcher = request
	     		// .getRequestDispatcher("reportWithoutPagination.jsp");
	     		// RequestDispatcher dispatcher = request
	     		// .getRequestDispatcher("simpleReport.jsp");
	     		dispatcher.forward(req, res);
	             
	             req.getSession().setAttribute("Viewpage", list);
	             req.getRequestDispatcher("View.jsp").forward(req, res);
	             // RequestDispatcher dispatcher = request
	             // .getRequestDispatcher("reportWithoutPagination.jsp");
	             // RequestDispatcher dispatcher = request
	             // .getRequestDispatcher("simpleReport.jsp");
	            // dispatcher.forward(req, res);
	 
	  }         
  

}  