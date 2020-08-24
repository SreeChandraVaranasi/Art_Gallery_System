<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%-- <%@ page import="javax.portlet.PortletPreferences" %> --%>
<%-- <%@ taglib uri="/WEB-INF/tld/liferay-portlet.tld" prefix="portlet" %>
<portlet:defineObjects /> --%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>ASVS ART GALLERY</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
<link rel="stylesheet" href="css/homepage.css">

</head>

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
        <li>
          <a href="frontpage.jsp">Home</a>
        </li>
        <li>
          <a href="visitorsignup.jsp">SignUp/Login</a>
        </li>
        <li>
          <a href="About_us.jsp">About Us</a>
        </li>
      </ul>
    </nav>
  </div>
</header>

  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="d-block w-100" src="images/5.jpg" alt="First slide">
        <div class="carousel-caption d-none d-md-block">
  <h3>A premier online Indian art gallery, Indian art ideas, houses original contemporary art, traditional and modern art paintings, drawings, sketches from famous Indian artists and as well as talented upcoming Indian artists. A finest collection of acrylic painting, oil paintings and mixed media paintings aggregated in various categories including but not limited to abstract, landscape, figurative and still life paintings adorns the online art collection. An art collector has an option to choose from the beautiful collection and sort the same by artist names, art categories, art style, medium, surface and price. Go ahead browse artworks and enjoy the liberty of creating your personal art collection!!</h3>
 
  </div>
  </div>


  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js'></script>
</body>
</html>