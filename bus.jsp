<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>transport</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.setup.js"></script>
</head>
<body id="top">
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="header">
    <div class="fl_left">
      <h1><a href="#">Transpeople</a></h1>
    </div>
    <!--<div class="fl_right"> <a href="#"><img src="images/" alt="" /></a> </div> -->
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="topnav">
    <ul>
      <li class="active"><a href="index.jsp">Home</a><span>wanna go home ??</span></li>
      <li><a href="train.jsp">train</a><span>looking for trains ??</span></li>
      <li><a href=#>bus</a><span>looking for bus ??</span></li>
      <li><a href="register.jsp">register</a><span>u gotta register ??</span></li>
	  <li><a href="feedback.jsp">feedback</a><span>your suggestion matters </span></li>
	  <li><a href="map.jsp">maps</a><span>just look around</span> </li>
    </ul>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_slide">
    <div id="featured_content">
      <ul>
       <li><a href="#"><img src="images/bus.jpg" alt="" /></a></li>
        <!--<li><a href="#"><img src="images/train.jpg" alt="" /></a></li>-->
        <!--<li><a href="#"><img src="images/regis.jpg" alt="" /></a></li>--> 
        <!--<li><a href="#"><img src="images/feedback.jpg" alt="" /></a></li>-->
         <!--<li><a href="#"><img src="images/google.gif" alt="" /></a></li> -->
      </ul>
    </div>
    
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">
    <div id="content">
	 <BODY>
        <H1>Bus Search</H1>
        <FORM ACTION="search.jsp" METHOD="POST">
            Please enter bus search details :
            <BR>
            <h1>Enter Source here</h1><INPUT TYPE="TEXT" NAME="src">
            <BR>
            <BR>
            <h1>Enter Destination here</h1><INPUT TYPE="TEXT" NAME="des">
            <BR><BR><BR>
            <INPUT TYPE="SUBMIT" value="Submit">
        
<!-- 
        <% 	    
            Connection connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "roshan", "rosh");
            Statement statement = connection.createStatement();

            String source = request.getParameter("src");
            String destination = request.getParameter("des");

            ResultSet resultset = 
                statement.executeQuery("select * from search where source = '" + source + "'"); 

            if(!resultset.next()) {
                out.println("Sorry, could not find that publisher. " +
                "Please <A HREF='tryAgain.html'>try again</A>.");
            } else {
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               <TH>Name</TH>
               
           </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               
           </TR>
       </TABLE>
       <BR>
       <% 
           }
       %>
-->

</FORM>
	 </div>
    <br class="clear" />
  </div>
<!-- ####################################################################################################### -->
<!-- ####################################################################################################### -->

</body>
</html>
