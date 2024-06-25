<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="cl.praxis.servlet.ObtieneFactorial"%>
<%@page import="cl.praxis.servlet.ObtieneParImpar"%>
<%

ObtieneFactorial factorial = new ObtieneFactorial();
ObtieneParImpar parimpar = new ObtieneParImpar();

%>
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Desafío JEE - JSP</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.mi
n.css"
	rel="stylesheet"
	integrity="sha384-
gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Desafío JEE - JSP</h1>
		<div class="row">
			<div class="col-12 col-sm-12">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Número</th>
							<th scope="col">Calcular Factorial</th>
							<th scope="col">¿Es par o impar?</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (int x = 1; x < 11; x++) {
						%>
						<tr>
							<th scope="row"><%=x%></th>
							<td>
								<a href="ObtieneFactorial?num=<%=x%>">
									Factorial de <%=x%>
								</a>
							</td>
							<td>
								<a href="ObtieneParImpar?num=<%=x%>">
									¿Es par o impar el número <%=x%>?
								</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous">
	</script>
</body>