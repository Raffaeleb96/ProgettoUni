<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<jsp:include page="header.jsp" />


<div class="wrapper fadeInDown zero-raduis">
  	  <div id="formContent">
  	    <!-- Tabs Titles -->

  	    <!-- Icon -->
  	    <div class="fadeIn first">
  	      <!-- <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" /> -->
  	      <h1 class="my-5">Benvenuto</h1>
  	    </div>
  	    
  	    <div class="fadeIn first">
  	      <!-- <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" /> -->
  	      <h4 class="my-5">Accedi</h4>
  	    </div>

  	    <!-- Login Form -->
  	    <form>
  	      <input type="email" id="email" class="fadeIn second zero-raduis" name="email" placeholder="E-Mail">
  	      <input type="text" id="password" class="fadeIn third zero-raduis" name="login" placeholder="Password">
		      <div id="formFooter">
  	      	<a class="underlineHover" href="#">Password dimenticata?</a>
  	      </div>
  	      <input type="submit" class="fadeIn fourth zero-raduis" value="login">
  	      <div><a href="register.jsp"><h2>Non hai un account?</h2></a></div>
  	      
  	    </form>
  	    

  	  </div>
  </div>
  
</body>
</html>