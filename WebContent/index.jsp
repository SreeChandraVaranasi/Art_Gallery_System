<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<h2>Online Art Gallery</h2>
  <div class="form">
        <div id="signup">
          <h1>Sign Up for Free</h1>

          <form action="SignupServlet" method="post">

          <!-- <div class="top-row"> -->
            <div class="field-wrap">
              <label>
                Full Name<span class="req">*</span>
              </label>
              <input type="text" name="fullname" pattern="[A-Za-z.\s]{1,}"required autocomplete="off" title="Fullname should only contain letters. e.g. john" />
            </div>
            
            


          <div class="field-wrap">
            <label>
              Email<span class="req">*</span>
            </label>
            <input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required autocomplete="off" title="Enter valid email"/>
          </div>

          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
          

          <button type="submit" class="button button-block"/>Get Started</button>

          </form>

        </div>

     <!-- tab-content -->

</div> 
<!-- /form -->
<%-- <% /* String passThis = request.getParameter("loginid");
        request.setAttribute("param1",passThis); */
        HttpSession httpSession = request.getSession();
        String id = request.getParameter("email");
        httpSession.setAttribute("login1",id );
        %> --%>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>
 