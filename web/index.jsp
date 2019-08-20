<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Prog.kiev.ua</title>
  </head>
  <body>
    <% String login = (String)session.getAttribute("user_login"); %>

    <form action="/login" method="POST">
           First Name: <input type="text" name="fist name"><br>
           Last Name: <input type="text" name="Last name"><br>

      <p><br/> Do you have job?</p>
      <p><br/><input type="radio" name="job" value="yes" /> yes</p>
      <p><br/><input type="radio" name="job" value="no" /> no</p>

      <p><br/>Which area you want to work?</p>
      <p><br/><input type="radio" name="area" value="service" /> service</p>
      <p><br/><input type="radio" name="area" value="production" /> production</p>

      <input type="submit" value="submit"/>
    </form>
  </body>
</html>