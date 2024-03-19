<%
   response.sendRedirect("index.jsp");
   session.invalidate();
   session=null;
%>