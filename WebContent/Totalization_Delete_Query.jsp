<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.TotalizationBean"/>
<jsp:useBean id="mMgr" class="project.TotalizationMgr"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>���� ����</h1></center>
<%
String _Tnum=request.getParameter("_Tnum");
boolean result = mMgr.deleteTotalization(_Tnum);
%>
<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Totalization_Delete_List.jsp"/>
</jsp:forward>

</body>
</html>