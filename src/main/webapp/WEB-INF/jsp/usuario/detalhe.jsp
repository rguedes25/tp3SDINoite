<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TP3</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		<h2>Cadastramento de Aluno</h2>

		<form action="/usuario/incluir" method="post">

			<div class="form-group">
				<label for="nome">Nome</label> <input type="text"
					class="form-control" id="nome" placeholder="Entre com o seu nome"
					name="nome">
			</div>

			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" placeholder="Entre com o seu email"
					name="email">
			</div>

			<div class="form-group">
				<label for="pwd">Informa a sua Senha</label> <input type="password"
					class="form-control" id="pwd" placeholder="Entre com a sua senha"
					name="senha">
			</div>

			<button type="submit" class="btn btn-default">Salvar</button>

		</form>

		<c:if test="${not empty usuarios}">
		<h2>Usuários</h2>
		<p>Listagem de usuários cadastrados.</p>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>E-mail</th>
					<th></th>
				</tr>
			</thead>
			
			<tbody>
			
				<c:forEach var="u" items="${usuarios}">
				<tr>
					<td>${u.nome}</td>
					<td>${u.email}</td>
					<td><a href="/usuario/${u.id}/excluir">excluir</a></td>
				</tr>
				
				
				
				</c:forEach>
				
			</tbody>
		</table>
		</c:if>
		
		<c:if test="${empty usuarios}">
		<p>Nenhum usuário cadastrado!!!</p>
		</c:if>


	</div>

</body>
</html>