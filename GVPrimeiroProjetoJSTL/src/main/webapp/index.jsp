<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet" />

    
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

	<c:set var="variavel" value="Primeira página JSP utilizando JSTL"/> 
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje é: <c:out value="${d1}"></c:out></h1>
	<h1>A data de hoje é: <fmt:formatDate pattern ="yyyy-mm-ss" value = "${d1}"/> </h1>
	<c:if test="${formatar == true }">
		<p>Variável formatar = <c:out value="${formatar}"/></p>
	</c:if>	
	<h1>A data de hoje é: <c:choose>
							<c:when test = "${formatar == true }">
								<c:out value="<%=today() %>"/> <!-- ou gerar um arquivo. tld -->
								</c:when>
								<c:otherwise>
									<:out value="${d1}"/>
								</c:otherwise>
						</c:choose>	</h1>	
										
	
	
	
	
	
<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-dark">Dark</button>

<button type="button" class="btn btn-link">Link</button>



<a href ="https://www.google.com.br" "<c:url value = "/jsp/index.htm"/>">IR PARA O  GOOGLE </a>
		
		
</body>
</html>