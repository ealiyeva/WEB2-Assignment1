<%@ page import = "java.io.*,java.util.*, java.time.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<html>
   <head>
      <title>Assignment 1: Esmiralda Aliyeva</title>
   </head>
   <body>
      <center>
         <h1>Food Time Recommender by Esmiralda Aliyeva</h1>
         <p>In this second version, I parse my 2 necessary values 12:00 and 16:00 as String <br>
         and converted them to time, then I used isBefore() and isAfter() functions to compare.
         </p>
     
      <%
      LocalTime present=LocalTime.now();
      
      String hour1= "12:00:00";
      String hour2= "16:00:00";
      LocalTime HOUR1=LocalTime.parse(hour1);
      LocalTime HOUR2=LocalTime.parse(hour2);
      
      if(present.isAfter(HOUR1) && present.isBefore(HOUR2)){
      out.println("Hey Esmiralda, it is Dinner Time");
      }
      else if (present.isBefore(HOUR1)) {
      out.print("Hey Esmiralda, it is Breakfast");
      }else{
      out.print("Hey Esmiralda, it is Dinner or Supper Time ");
      }
      
    %>
     </center>
   </body>
</html>
