<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("EUC-KR");%>
<%@ page import = "java.util.*" %>
<%@ page import = "project.TotalizationBean" %>
<jsp:useBean id="bean" class="project.TotalizationBean"/>
<jsp:useBean id="mMgr" class="project.TotalizationMgr"/>
<jsp:setProperty name="bean" property="*"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>지점 정보 변경</h1></center>
<%
request.setCharacterEncoding("EUC-KR");
String[] items = request.getParameterValues("item");
String[] tnum = request.getParameterValues("tnum");
String[] tbid = request.getParameterValues("tbid");
String[] trevenue = request.getParameterValues("trevenue");
String[] texpenditure = request.getParameterValues("texpenditure");
System.out.println((String)session.getAttribute("id"));
Vector<TotalizationBean> vlist = new Vector<TotalizationBean>();

	
	for (int i = 0; i < items.length; i++) {
		
		
		boolean result = mMgr.updateTotalization(Integer.parseInt(tnum[i]),tbid[i],Integer.parseInt(trevenue[i]),Integer.parseInt(texpenditure[i]));
			}

%>

<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Totalization_Select.jsp"/>
</jsp:forward>

</body>
</html>