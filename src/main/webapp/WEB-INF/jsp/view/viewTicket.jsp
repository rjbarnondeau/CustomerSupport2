<%--
  Created by IntelliJ IDEA.
  User: 26barondeauroland
  Date: 5/9/24
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ticket #<c:out value="${ticketId}"/></title>
</head>
<body>
<h1>Ticket Post</h1>
<h3>Ticket #<c:out value="${ticketId}"/>: <c:out value="${ticket.title}"/></h3>
<p>Date: <c:out value="${ticket.date}"/></p>
<p><c:out value="${blog.body}"/></p>
<c:if test="${ticket.hasAttachment()}">
  <a href="<c:url value='/blog' >
            <c:param name='action' value='download' />
            <c:param name='ticketId' value='${ticketId}' />
            <c:param name='attachment' value='${ticket.attachment.name}'/>
        </c:url>"><c:out value="${ticket.attachment.name}"/></a>
</c:if>
<br><a href="ticket">Return to blog list</a>

</body>
</html>