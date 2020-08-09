<!doctype html>
<%
	if(session.getAttribute("session")==null)
		response.sendRedirect("home.jsp");
	else if(!((Integer)session.getAttribute("semester")==1))
		response.sendRedirect("logout.jsp");
	else if(!session.getAttribute("course").equals("be"))
		response.sendRedirect("logout.jsp");

%>

<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
.footer {
    
    padding: 5px 20px;
    background-color: #2d3d5a;
    text-align: right;
    color: #fff;
    font-size: 15px;
}
button {
  background-color: #428bca;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
</style>
    <!---------css------------>
      <link href="assets/feedbackbootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
      <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
      <link href="assets/css/nav.css" rel="stylesheet" />
  

 <link rel="SHORTCUT ICON" href="favicon.png" type="image/x-icon" />
 <link rel="ICON" href="favicon.png" type="image/png" />
  
</head>

<body>


<header class="main_menu_sec navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-12">
        <div class="lft_hd">
          <a href="http://www.uceou.edu"><img src="assets/img/logo.png" alt=""/></a>
        </div>
      </div>      
      <div class="col-lg-9 col-md-9 col-sm-12">
        <div class="rgt_hd">          
          <div class="main_menu">
                <h1 STYLE="COLOR:WHITE;ALIGN:CENTER;flaot:left">DEPARTMENT OF COMPUTER SCIENCE AND ENGINEERING,UCE OU
				  <a  href="logout.jsp" style="width:auto; color:orange; border=2px; float:right"><b>LOGOUT</b></a> </h1>
          </div>          
       
        </div>
      </div>  
    </div>
  </div>      
   
   
   
   <link rel="SHORTCUT ICON" href="assets/img/favicon.png" type="image/x-icon" />
   <link rel="ICON" href="assets/img/favicon.png" type="image/png" />
</header>

                                        </br>
<!-- Use any element to open the sidenav -->
<br><br><br>
	<DIV CLASS="FORMHEAD" STYLE="BACKGROUND-COLOR:RGB(200,220,245);position:fixed ;MARGIN-TOP : -5PX; HEIGHT:50PX;WIDTH:100%;TEXT-ALIGN:CENTER;PADDING-TOP:0.015PX"><h1 >FEEDBACK FORM</h1></DIV>
	
	<div class="formcontainer" style="background-color:rgb(242,247,246)">
	<p align="center">
	<br><br><br>
<b><i><u>Appeal to the students:</u></i></b>  Your considered feedback will be of great value to the department to enhance the quality of teaching and learning. Please give your rating for all the items listed for all theory subjects and labs.  The rating is on a 6 point (1-6) scale.<i><br>
<b>NOTE: Only those students having more than 70% attendance are required to fill the  form.</b></p>
		<form action="form1_process.jsp" method="post">
		<table border="1px" >
		<tr>
		<th >S.no</th>
		<th>Theory</th>
		<th>Engineering Mathematics I</th>
		<th>Engineering Physics I</th>
		<th>Engineering Chemistry</th>
		<th>Engineering mechanics I</th>
		<th>Computer Programming And Problem Solving</th>
		<th>Engineering English I</th>
		
		</tr>
		
		
		<!--first row-->
		<tr>
		<td>1</td>
		<td>Rate the course in general</td>
		<td>
		<select  name="1t1" required  > 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="1t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="1t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="1t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="1t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    <td>
		<select required name="1t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
	
	    
		</tr>
		
		<!--second row-->
		<tr>
		<td>2</td>
		<td>Instructor's knowledge of the subject   &nbsp</td>
		<td>
		<select required  name="2t1"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="2t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="2t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="2t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="2t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
		<td>
		<select required name="2t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
	    
		
		
		
		</tr>
		
		<!--third row-->

		<tr>
		<td>3</td>
		<td>Is the instructor regular in taking class   &nbsp</td>
		<td>
		<select required  name="3t1"> 
		 <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select>
		</td>
		
		<td>
		<select required name="3t2">
         <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="3t3"> 
		<option value="">--</option> 
		  
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="3t4"> 
		  <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="3t5"> 
		   <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="3t6"> 
		   <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		
		
	    
		</tr>
		
		<!-- fourth row-->
		
		
		
		<tr>
		<td>4</td>
		<td>Percentage of syllabus covered &nbsp</td>
		<td>
		<select required  name="4t1"> 
		  <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select>
		</td>
		
		<td>
		<select required name="4t2">
          <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		  <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="4t3"> 
<option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		  <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="4t4"> 
		  <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="4t5"> 
		  <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    <td>
		<select required name="4t6"> 
		   <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
		</select> 
		</td>
	    
		
		
		
	    
		</tr>
		
		<!--fifth row-->
		
	
		<tr>
		<td>5</td>
		<td>Quality of assignment for learning the course   &nbsp</td>
		<td>
		<select required  name="5t1"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="5t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="5t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="5t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="5t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="5t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
	    
		</tr>
		
		
    <!--sixth row-->

  
		<tr>
		<td>6</td>
		<td>Were the solutions to class test papers and assignments discussed in the class?  &nbsp</td>
		<td>
		<select required  name="6t1"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="6t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="6t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="6t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="6t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="6t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		</tr>
		
		
		<!-- seventh row-->
		

		<tr>
		<td>7</td>
		<td>Did the course improve your understanding of concepts and principles  &nbsp</td>
		<td>
		<select required  name="7t1"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option> 
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="7t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="7t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="7t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="7t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="7t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
	
	    
		</tr>
		
		
    <!--eight row-->

  
		<tr>
		<td>8</td>
		<td>Did the instructor made good use of examples and illustrations?  &nbsp</td>
		<td>
		<select required  name="8t1"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="8t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="8t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="8t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="8t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="8t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
	
	    
		</tr>
		
		
		<!-- ninth row-->
		

		<tr>
		<td>9</td>
		<td>Did the instructor use appropriate innovative teaching methods?		&nbsp</td>
		<td>
		<select required  name="9t1"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option> 
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="9t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="9t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="9t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="9t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="9t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
	    
		</tr>
		
		
    
		
		
		<!-- tenth row-->
		

		<tr>
		<td>10</td>
		<td>Was there positive interaction between students and instructor? &nbsp</td>
		<td>
		<select required  name="10t1"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option> 
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select>
		</td>
		
		<td>
		<select required name="10t2">
          <option value="">--</option> 		
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		<td>
		<select required name="10t3"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="10t4"> 
		  <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		<td>
		<select required name="10t5"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		<td>
		<select required name="10t6"> 
		   <option value="">--</option> 
		  <option value="6">Excellent-6</option>
		  <option value="5">Very Good-5</option>
		  <option value="4">Good-4</option>
		  <option value="3">Average-3</option>
		  <option value="2">Satisfactory-2</option>
		  <option value="1">Poor-1</option>
		</select> 
		</td>
	    
		
		
		</tr>
		
		</table><br><br><br>
		
	    <table border="1px" align="center" width="100%">
			<tr>
			<th>S.no</th>
			<th>Practical</th>
			<th>Engineering Graphics I </th>
			<th>Engineering Physics Lab I</th>
			<th>Engineering Chemistry Lab I</th>
			<th>Computer Programming Lab </th>
			<th>Workshop</th>
			<th>Engineering English Lab I</th>

						
			</tr>
			<tr>
			<td>1</td>
			<td>Did the experiments help you in understanding the theoretical concepts?&nbsp</td>
			<td>
			<select required name="1pl1">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="1pl2">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="1pl3">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="1pl4">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="1pl5">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="1pl6">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			</tr>
			
			
			<!--- 2nd row---->
			<tr>
			<td>2</td>
			<td>Rate the instructor's practical knowledge of the subject &nbsp</td>
			<td>
			<select required name="2pl1">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="2pl2">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="2pl3">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>

			<td>
			<select required name="2pl4">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="2pl5">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="2pl6">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			</tr>
			<!---3rd row---->
			
			<tr>
			<td>3</td>
			<td>Is the instructor regular in taking lab classes and verifying observations/results? &nbsp</td>
			<td>
			<select required name="3pl1">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="3pl2">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="3pl3">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="3pl4">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="3pl5">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="3pl6">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			</tr>
			
			<!-- 4th row -->
			<tr>
			<td>4</td>
			<td>Percentage of laboratory syllabus covered &nbsp</td>
			<td>
			<select required name="4pl1">
			 <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
			</select> 
			</td>
			<td>
			<select required name="4pl2">
			 <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
			</select> 
			</td>
			<td>
			<select required name="4pl3">
			 <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
			</select> 
			</td>
			<td>
			<select required name="4pl4">
			 <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
			</select> 
			</td>
			<td>
			<select required name="4pl5">
			 <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
			</select> 
			</td>
			<td>
			<select required name="4pl6">
			 <option value="">--</option> 
		  <option value="6">100%-6</option>
		  <option value="5">90%-5</option>
		  <option value="4">80%-4</option>
		  <option value="3">70%-3</option>
		  <option value="2">60%-2</option>
		   <option value="1"> < = 50%-1</option>
			</select> 
			</td>
			</tr>
			
			<!---- 5th row-->
			<tr>
			<td>5</td>
			<td>Instructor's help in boosting your confidence in practical work &nbsp</td>
			<td>
			<select required name="5pl1">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="5pl2">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="5pl3">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="5pl4">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="5pl5">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			<td>
			<select required name="5pl6">
			 <option value="">--</option> 
			  <option value="6">Excellent-6</option>
			  <option value="5">Very Good-5</option>
			  <option value="4">Good-4</option>
			  <option value="3">Average-3</option>
			  <option value="2">Satisfactory-2</option>
			  <option value="1">Poor-1</option>
			</select> 
			</td>
			</tr>
        </table>		
  	<br><br><br>
	
	<div align="center">

	                <button style="width:170px;background-color: #428bca"><SPAN STYLE="COLOR:BLACK;">SUBMIT</SPAN></button><br>
					<br><br>
		</div>
		
		
	</form>
		</div>
		<div class="footer">
      
     &copy 2017 uceou.com | All Rights Reserved | Design by : TEAM CSE Batch Of 2018
     
     
     
    </div>
	
   
	
</script>
</div>
   </body>
        </html>






