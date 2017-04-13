<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ attribute name="id" required="true" %>
<input id="${id}" name="${id}" value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />" />
<script>
$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>