<%@include  file="header.jsp"%>

<%@page import="dao.StudentDAO"%>
<%!
  int n;
%>
<html>
    <head>
         
   <title>Student Marks Entry Section</title>
   <script language="javascript">
       function validate()
       {
           var rno,name,phy,chem,math;
           rno=document.getElementById("RNO").value;
           name=document.getElementById("NAME").value;
           phy=document.getElementById("PHY").value;
           chem=document.getElementById("CHEM").value;
           math=document.getElementById("MATH").value;
          if(rno=="")
          {
              alert("Roll No Can't be left blank");
              document.getElementById("RNO").focus();
              return false
          }
          if(name=="")
          {
              alert("Name Can't be left blank");
              document.getElementById("NAME").focus();
              return false
          }
          if(phy=="")
          {
              alert("Phyics Can't be left blank");
              document.getElementById("PHY").focus();
              return false
          }
           if(phy>100 || phy<0)
          {
             alert("Invalid Phyics Marks ");
              document.getElementById("PHY").focus();
              document.getElementById("PHY").select();
              return false  
          }   
          if(chem=="")
          {
              alert("Chemistry Can't be left blank");
              document.getElementById("CHEM").focus();
              return false
          }
          if(math=="")
          {
              alert("Maths Can't be left blank");
              document.getElementById("MATH").focus();
              return false
          }
          return true;
       }
       
   </script>
   
    </head>
    <body>
      <% 
         int i;
         for(i=1;i<=10;i++)
             out.println("<br>");
      %>  
       <center> 
           
          <h1>Student DAO Application</h1>
      <br> 
        <% 
              StudentDAO sd=new StudentDAO();
             n=sd.autoIncr();
        %>      
     <br><br>
       <font color="blue" size="5">Student Entry Section</font>    
       <form method="post" action="InsertData.jsp">    
       <table border="1"> 
       <tr>
           <th>Roll No:</th>
           <td><input type="text"  name="rno" value=<%=n%> id="RNO" disabled="true"></td>
       </tr>    
        <tr>
           <th>Name:</th>
           <td><input type="text" name="name" id="NAME"></td>
       </tr>    
       <tr>
           <th>Physics:</th>
           <td><input type="text" name="phy" id="PHY"></td>
       </tr>     
       <tr>
           <th>Chemistry:</th>
           <td><input type="text" name="chem" id="CHEM"></td>
       </tr>     
        <tr>
           <th>Maths:</th>
           <td><input type="text" name="math" id="MATH"></td>
       </tr>            <tr>
           <td></td>
          <td>
              <input type="submit" value="Submit" onclick="return validate()">
              <input type="reset" value="Reset">
          </td> 
       </tr>
       
       </table>
       </form>    
       </center>    

    </body>
</html>
