<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<%!
	String today(){
		java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
}
%>

	<c:set var="variavel" value="Primeira p�gina JSP utilizando JSTL"/> 
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje �: <c:out value="${d1}"></c:out></h1>
	<h1>A data de hoje �: <fmt:formatDate pattern ="yyyy-mm-ss" value = "${d1}"/> </h1>
	<c:if test="${formatar == true }">
		<p>Vari�vel formatar = <:out value="${formatar}"/></p>
	</c:if>c:if>	
		
		
</body>
</html>