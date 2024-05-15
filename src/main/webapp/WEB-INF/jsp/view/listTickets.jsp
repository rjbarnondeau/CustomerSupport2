
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tickets</title>
</head>
<body>
<h2>Tickets</h2>
<a href="<c:url value='/ticket'>
        <c:param name='action' value='create' />
    </c:url>">Create Ticket</a><br><br>
<c:choose>
    <c:when test="${ticketDataBase.size() == 0}">
        <p>There are no tickets yet</p>
    </c:when>
    <c:otherwise>
        <c:forEach var="ticket" items="${ticketDataBase}">
            Ticket#:&nbsp;<c:out value="${ticket.key}"/>
            <a href="<c:url value='/ticket' >
                    <c:param name='action' value='view' />
                    <c:param name='ticketId' value='${ticket.key}' />
                </c:url>">&nbsp;<c:out value="${ticket.value.customerName}"/></a><br>
        </c:forEach>
    </c:otherwise>
</c:choose>

</body>
</html>
