<%--
  Created by IntelliJ IDEA.
  User: 26barondeauroland
  Date: 5/9/24
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ticket Forms</title>
</head>
<body>
<h2>Ticket Forms</h2>
<a href="<c:url value='/ticket'>
        <c:param name='action' value='createTicket' />
    </c:url>">Create Form</a><br><br>
<c:choose>
    <c:when test="${ticketDB.size() == 0}">
        <p>There are no tickets yet</p>
    </c:when>
    <c:otherwise>
        <c:forEach var="ticket" items="${ticketDB}">
            Ticket#:&nbsp;<c:out value="${ticket.key}"/>
            <a href="<c:url value='/ticket' >
                    <c:param name='action' value='view' />
                    <c:param name='ticketId' value='${ticket.key}' />
                </c:url>">&nbsp;<c:out value="${ticket.value.title}"/></a><br>
        </c:forEach>
    </c:otherwise>
</c:choose>

</body>
</html>

