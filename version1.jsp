<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>

<html>
   <head>
      <title>Assignment 1: Esmiralda Aliyeva</title>
   </head>
   <body>
      <center>
         <h1>Food Time Recommender by Esmiralda Aliyeva</h1>
         <p>In this version I took hour from date and used Integer.parseInt() function<br>
         to make that hour integer in order to be able to compare it with 12 Pm and 16 Pm.
         </p>
      
      <%
         Date today = new Date();
         out.println(today);
         SimpleDateFormat form = new SimpleDateFormat("HH");
         out.print( "<h2 align=\"center\">" + form.format(today) + "</h2>");
         int hour = Integer.parseInt(form.format(today));
         if (hour <12) {
         out.print("Hey Esmiralda, it is breakfast time");
         }
         else if (hour >= 12 && hour <=16){ 
         out.print("Hey Esmiralda, it is dinner time");
         }
         else {
         out.print("Hey Esmiralda, you can do either dinner or supper!");
         }
         
        
      %>
       </center>
   </body>
</html>