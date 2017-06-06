<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                        <a href="View.jsp"><i class="fa fa-edit "></i>View  </a>
                    </li>

                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            

	
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<center>
					<h1 align="center">Industrial Account Bulletin</h1>
				</center>
				<h2>ADMIN DASHBOARD</h2>
			
				
			</div>
			
		</div>
		<!-- /. ROW  -->
		<hr>
		<form action="View" method="post">
<div class="row">
    <div class="col-sm-4" style="background-color:lavender;">
    
   <tr>
									<th width="75%">ProjectName</th>

									<td><select name="projectname" id="projectname"
										style="width: 100px">
											<option value="Ariba AMS">Ariba AMS</option>
											<option value="OMP">OMP</option>
											<option value="AOD">AOD</option>
											<option value="Mainframe">Mainframe</option>
											<option value="other">other</option>
									</select></td>
								</tr></div>
     <div class="col-sm-4" style="background-color:lavenderblush;"><tr>
									<th width="50%">ProjectType</th>
									<td width="50%"><input TYPE="text" NAME="projecttype"></td>
	
								</tr></div>
    <div class="col-sm-4" style="background-color:lavender;"><tr>
									<th width="50%">Project ID</th>
									<td width="50%"><input TYPE="text" NAME="projectid"></td>
	
								</tr></div>
								</div>
								<div class="row">
    <div class="col-sm-4" style="background-color:lavenderblush;">
    
   <tr>
									<th width="20%">C.Number</th>
									<td width="50%"><input TYPE="text" NAME="contractnumber"></td>
								</tr></div>
    <div class="col-sm-4" style="background-color:lavender;"><tr>
									<th width="50%">Start Date</th>
									<td width="50%"><input TYPE="text" NAME="startdate"></td>
								</tr></div>
    <div class="col-sm-4" style="background-color:lavenderblush;"><tr>
									<th width="50%">End Date</th>
									<td width="50%"><input TYPE="text" NAME="enddate"></td>
	
								</tr></div> </div>
								<div class="row">
    <div class="col-sm-4" style="background-color:lavender;">
    
   <tr>
								<th width="50%">Head Count</th>
									<td width="50%"><input TYPE="text" NAME="headcount"></td>
								</tr></div>
    <div class="col-sm-4" style="background-color:lavenderblush;"><tr>
									<th width="50%">UOM</th>
									<td width="50%"><input TYPE="text" NAME="uom"></td>
								</tr></div>
    <div class="col-sm-4" style="background-color:lavender;"><tr>
									<th width="50%">TCV Value</th>
									<td width="50%"><input TYPE="text" NAME="TCVvalue"></td>
	
								</tr></div>
								</div>
								<div class="container">
							<td width="50%">
<center>							
							
							<button type="submit" 
									class="btn btn-info btn-lg" value="submit">Submit</button>
									
									
						</center>			</td>


						</div>
  </div>
  
</div>
</form>
		
	</div>
	</div>
	<div class="footer">
      
    
            <div class="row">
                 <div class="col-lg-12" >
                </div>
            </div>
        </div>
<!-- 	<a href="#" style="color: #fff;">LOGOUT</a>  -->
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
