<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
<title>Customer_Page</title>
<link type="text/css" rel="stylesheet" href="css/homepage.css"/>


</head>
<body>

    <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a href="./" class="navbar-brand">AVSV ART GALLERY</a>
          </div>
          <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#">Home</a></li>
              <li><a href="#">Your Orders</a></li>
              <li><a href="frontpage.jsp">Logout</a></li>
              <li><a href="#"> <% HttpSession httpSession=request.getSession();
                String id = request.getParameter("email");
                httpSession.setAttribute("login1",id );
                if(id != null) {
                    out.println("Welcome "+httpSession.getAttribute("login1"));
                }
                String a = (String)httpSession.getAttribute("login1");
%></a></li>
            </ul>
          </nav>
        </div>
      </header>



     
</div>
<form action="likes1.jsp" method="post"  onsubmit="index.jsp">
<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>
        
	        	  	


<%
String url = "jdbc:mysql://localhost:3306/";
String dbName = "mydb";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "system";
String query= "select * from painting";
//String query2 = "insert into likes (v_id, title) values(?, ?)";
try {
    Class.forName(driver).newInstance();
    Connection conn = DriverManager.getConnection(url + dbName, userName, password);

    Statement st = conn.createStatement();
   
    ResultSet rs = st.executeQuery(query);
    while(rs.next()){
    	%>
    	<div class="item">
        		<div class="animate-box">
	        		<a href=<%= rs.getString("url") %> class="image-popup fh5co-board-img"><img src=<%= rs.getString("url") %> alt="Free HTML5 Bootstrap template"></a>
	        		<div class="image-popup fh5co-desc"><%= rs.getString("title") %>
	        		
	        		</div>
	        		<a href="likes1.jsp?value=<%= rs.getString("title")%>">Like</a>
        		</div>
        		</div>
   <%}
    rs.close();
    // rs1.close();
     st.close();
     conn.close();
     }
     catch (Exception e) {
  	   
  	   System.out.println(e.getMessage());
     }
 
%> 
   
   </div>
</div>
</div>
   <script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
    <script src="js/main1.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js'></script>

   
</form>
</body>
</html>