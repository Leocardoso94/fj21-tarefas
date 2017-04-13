<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<html>
<head>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" /> Descrição:<br />
		<textarea name="descricao" cols="100" rows="5">
			${tarefa.descricao}
		</textarea>
		<br /> Finalizado? <input type="checkbox" name="finalizado"
		value="true" ${tarefa.finalizado? 'checked' : '' } /> <br /> Data
		de finalização: <br />
		<caelum:campoData id="dataFinalizacao" />
		<br /> <input type="submit" value="Alterar" />
	</form>
</body>
</html>