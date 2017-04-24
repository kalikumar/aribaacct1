<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="assets/css/displaytag.css" type="text/css">
<link rel="stylesheet" href="assets/css/screen.css" type="text/css">
<link rel="stylesheet" href="assets/css/site.css" type="text/css">
<title>Report</title>
</head>
<body>
  <div id="wrapper">
         
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="Insert.jsp" ><i class="fa fa-desktop "></i>Insert New </a>
                    </li>
                   

                    <li>
                        <a href="Update.jsp"><i class="fa fa-table "></i>Update  </a>
                    </li>
                    <li>
                        <a href="View1.jsp"><i class="fa fa-edit "></i>View  </a>
                    </li>

                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
              <center> <h1 align="center">CAT Account Bulletin</h1> </center>     
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
           <display:table name="sessionScope.view" pagesize="10"
	export="true" sort="list">
	<display:column property="projectName" title="Project Name"
		sortable="true" headerClass="sortable" />
	<display:column property="projectId" title="Project ID"
		sortable="true" headerClass="sortable" />
		<display:column property="uom" title="UOM"
		sortable="true" headerClass="sortable" />
		<display:column property="projectType" title="Project Type"
		sortable="true" headerClass="sortable" />
		<display:column property="contractNumber" title="Contract Number"
		sortable="true" headerClass="sortable" />
		<display:column property="startDate" title="Start Date"
		sortable="true" headerClass="sortable" />
		<display:column property="endDate" title="End Date"
		sortable="true" headerClass="sortable" />
		<display:column property="tcvValue" title="TCVValue"
		sortable="true" headerClass="sortable" />
		
	
</display:table>     
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</div></div></div>
	<div class="footer">
      
    
            <div class="row">
                 <div class="col-lg-12" >
                </div>
            </div>
        </div>
	<a href="#" style="color: #fff;">LOGOUT</a>
	<div class="col-lg-12"></div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="adjust-nav">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> </a>

			</div>

			<span class="logout-spn"> </span>
		</div>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"> </a>

				</div>

				<span class="logout-spn"> </span>
			</div>
		</div>
	</div>


</body>
</html>