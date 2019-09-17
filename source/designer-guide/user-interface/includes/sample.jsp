<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%>
<jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="<%=ivy.style()%>"/>
    <title><%=ivy.content("Caption","String")%></title>
  </head>
  <body>
    <jsp:include page='<%=ivy.panel("Panel1")%>' flush="true"/>
  </body>
</html>