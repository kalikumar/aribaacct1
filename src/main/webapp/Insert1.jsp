<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>View Details</title>
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
<script type="text/javascript">
 //<![CDATA[ 
 // array of possible countries in the same order as they appear in the country selection list 
 var industryLists = new Array(4) 
 industryLists["empty"] = ["Select a Country"]; 
 industryLists["AA&D"] = ["Vinayak J Oak/India/IBM"]; 
 industryLists["C&P"] = ["Sandeep Debray/India/IBM"]; 
 industryLists["ELE"] = ["Milind M Kulkarni/India/IBM"]; 
 industryLists["IP"]= ["Santosh Prasad2/India/IBM"]; 
 /* CountryChange() is called from the onchange event of a select element. 
 * param selectObj - the select object which fired the on change event. 
 */ 
 function palChange(selectObj) { 
 // get the index of the selected option 
 var idx = selectObj.selectedIndex; 
 // get the value of the selected option 
 var which = selectObj.options[idx].value; 
 // use the selected option value to retrieve the list of items from the countryLists array 
 cList = industryLists[which]; 
 // get the country select element via its known id 
 var cSelect = document.getElementById("pal"); 
 // remove the current options from the country select 
 var len=cSelect.options.length; 
 while (cSelect.options.length > 0) { 
 cSelect.remove(0); 
 } 
 var newOption; 
 // create new options 
 for (var i=0; i<cList.length; i++) { 
 newOption = document.createElement("option"); 
 newOption.value = cList[i];  // assumes option string and value are the same 
 newOption.text=cList[i]; 
 // add the new option 
 try { 
 cSelect.add(newOption);  // this will fail in DOM browsers but is needed for IE 
 } 
 catch (e) { 
 cSelect.appendChild(newOption); 
 } 
 } 
 } 
//]]>
</script>
<script type="text/javascript">
 //<![CDATA[ 
 // array of possible countries in the same order as they appear in the country selection list 
 var clientLists = new Array(4) 
 clientLists["empty"] = ["Select a Client"]; 
 clientLists["Caterpillar"] = ["AMS support","Ariba AMS","PeopleSoft AMS","SO mainframe support services on premise"];
  clientLists["ALSTOM"] = ["SHAPE AMS : Alstom ITC ASC Tra","EC1 Transport","EC6-Lotus Notes","rec11-sharepoint","REC13-Java","EC-1 PoweMax"];
 clientLists["AMS - RSO"] = ["RSO"]; 
 clientLists["Associated Motorways Limited"] = ["TAC Delivered (SAP)"]; 
 clientLists["AVIALL SERVICES INC"]= ["Santosh Prasad2/India/IBM"]; 
 clientLists["Bridgestone (Firestone)"] = ["Vinayak J Oak/India/IBM"]; 
 clientLists["Carrier Corp"] = ["Sandeep Debray/India/IBM"]; 
 clientLists["CATERPILLAR INC"] = ["Milind M Kulkarni/India/IBM"]; 
 clientLists["Foundation Brakes"]= ["Santosh Prasad2/India/IBM"]; 
 clientLists["GESTAMP SERVICIOS, SL"] = ["Vinayak J Oak/India/IBM"]; 
 clientLists["Meggit"] = ["Sandeep Debray/India/IBM"]; 
 clientLists["Meggitt plc"] = ["Milind M Kulkarni/India/IBM"]; 
 clientLists["Mitsubishi Motors Europe Benelux"]= ["Santosh Prasad2/India/IBM"]; 
 clientLists["Rush Enterprise"] = ["Vinayak J Oak/India/IBM"]; 
 clientLists["VALEO"] = ["Sandeep Debray/India/IBM"]; 
 clientLists["Volkswagen"] = ["Milind M Kulkarni/India/IBM"]; 
 clientLists["Volkswagen Group of America, Inc."]= ["Santosh Prasad2/India/IBM"];
 clientLists["VW AG EMEA Central"]= ["Santosh Prasad2/India/IBM"]; 
 
 /* CountryChange() is called from the onchange event of a select element. 
 * param selectObj - the select object which fired the on change event. 
 */ 
 function clientChange(selectObj) { 
 // get the index of the selected option 
 var idx = selectObj.selectedIndex; 
 // get the value of the selected option 
 var which = selectObj.options[idx].value; 
 // use the selected option value to retrieve the list of items from the countryLists array 
 cList = clientLists[which]; 
 // get the country select element via its known id 
 var cSelect = document.getElementById("projectname"); 
 // remove the current options from the country select 
 var len=cSelect.options.length; 
 while (cSelect.options.length > 0) { 
 cSelect.remove(0); 
 } 
 var newOption; 
 // create new options 
 for (var i=0; i<cList.length; i++) { 
 newOption = document.createElement("option"); 
 newOption.value = cList[i];  // assumes option string and value are the same 
 newOption.text=cList[i]; 
 // add the new option 
 try { 
 cSelect.add(newOption);  // this will fail in DOM browsers but is needed for IE 
 } 
 catch (e) { 
 cSelect.appendChild(newOption); 
 } 
 } 
 } 
//]]>
</script>

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
                  		<form action="Insert" method="post">
<div class="row">
    <div class="col-sm-4" style="background-color:lavender;">
    
   <tr>
									<th width="75%">Industry</th>

									<td><select id="industry" onchange="palChange(this);">
    <option value="empty">Select a Industry</option>
    <option value="AA&D">AA&D</option>
    <option value="C&P">C&P</option>
    <option value="ELE">ELE</option>
    <option value="IP">IP</option>
  </select></td>
								</tr></div>
     <div class="col-sm-4" style="background-color:lavenderblush;"><tr>
									<th width="50%">PAL</th>
									<td width="50%"><select id="pal">
    <option value="0">Select a Pal</option>
  </select></td>
	
								</tr></div>
    <div class="col-sm-4" style="background-color:lavender;"><tr>
									<th width="50%">Project DB ID</th>
									<td width="50%"><input TYPE="text" NAME="projectid"></td>
	
								</tr></div>
								</div>
								<div class="row">
    <div class="col-sm-4" style="background-color:lavenderblush;">
    
   <tr>
									<th width="20%">Client Name</th>
									<td width="50%"><select id="industry" onchange="clientChange(this);">
    <option value="empty">Select a Client</option>
    <option value="Caterpillar">Caterpillar</option>
    <option value="ALSTOM">ALSTOM</option>
    <option value="AMS - RSO">AMS - RSO</option>
    <option value="Associated Motorways Limited">Associated Motorways Limited</option>
    <option value="AVIALL SERVICES INC">AVIALL SERVICES INC</option>
    <option value="Bridgestone (Firestone)">Bridgestone (Firestone)</option>
    <option value="Carrier Corp">Carrier Corp</option>
    <option value="CATERPILLAR INC">CATERPILLAR INC</option>
    <option value="Foundation Brakes">Foundation Brakes</option>
    <option value="GESTAMP SERVICIOS, SL">GESTAMP SERVICIOS, SL</option>
    <option value="Meggit">Meggit</option>
    <option value="Meggitt plc">Meggitt plc</option>
    <option value="Mitsubishi Motors Europe Benelux">Mitsubishi Motors Europe Benelux</option>
    <option value="Rush Enterprise">Rush Enterprise</option>
    <option value="VALEO">VALEO</option>
    <option value="Volkswagen">Volkswagen</option>
    <option value="Volkswagen Group of America, Inc.">Volkswagen Group of America, Inc.</option>
    <option value="VW AG EMEA Central">VW AG EMEA Central</option>
    
    
  </select></td>
								</tr></div>
    <div class="col-sm-4" style="background-color:lavender;"><tr>
									<th width="50%">ProjectName</th>
									<td width="50%"><select id="projectname">
    <option value="0">Select a ProjectName</option>
  </select></td>
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
									<td width="50%"></td>
								</tr>
							<input TYPE="text" NAME="uom">
						</div>
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
						 </form>

  </div>
 
        
</div>

          
          

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