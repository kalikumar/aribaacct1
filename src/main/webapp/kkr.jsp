<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 

<%@ page import="java.io.*" %> 
<HTML>
<HEAD>
  <TITLE>insert data using prepared statement </TITLE>
</HEAD>
    <BODY bgcolor="#ffffcc">
  <font size="+3" color="green"><br>Welcome to CAT Account Bulletin</font>
  <FORM action="kkr" method="post">
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
         <TR>
	      <TH width="50%">ProjectName</TH>
		   
		  <td><select name="projectname" id="projectname" style="width:160px">  
        <option value="Ariba AMS">Ariba AMS</option>  
        <option value="OMP">OMP</option>  
        <option value="AOD">AOD</option>  
        <option value="Mainframe">Mainframe</option>  
        <option value="other">other</option>  
    </select>  
    </td>  
	  </tr>
	  <TR>
	     <TH width="50%">Project ID</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="projectid"></TD>
	  </tr>
	  <TR>
      <TR>
	     <TH width="50%">Project Type</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="projecttype"></TD>
	  </tr>
	  <TR>
	     <TH width="50%">Contract Number</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="contractnumber"></TD>
	  </tr>
	  	  <TR>
	  	  <TR>
	     <TH width="50%">Start Date</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="startdate"></TD>
	  </tr>
	  	  <TR>
	  	  <TR>
	     <TH width="50%">End Date</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="enddate"></TD>
	  </tr>
	  	  <TR>
	  	  <TR>
	     <TH width="50%">Head Count</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="headcount"></TD>
	  </tr>
	  	  <TR>
	  	  <TR>
	     <TH width="50%">UOM</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="uom"></TD>
	  </tr>
	  	  <TR>
	  	  <TR>
	     <TH width="50%">TCV Value</TH>
		 <TD width="50%"><INPUT TYPE="text" NAME="TCVvalue"></TD>
	  </tr>
	  	  <TR>
	      <TH></TH>
		  <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
	  </tr>
   </TABLE>
  


  </FORM>
 </body> 
</html>