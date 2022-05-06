<!DOCTYPE html>
<html>
    <head>
        <title>Online Course Website</title>
    </head>
    <body>
        <c:url var="logoutUrl" value="/cslogout"/>
        <form action="${logoutUrl}" method="post">
            <input type="submit" value="Log out" />
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Lecture #${lecture.id}</h2>
        <form:form method="POST" enctype="multipart/form-data"
                   modelAttribute="lectureForm">
            <form:label path="LectureName">Subject</form:label><br />
            <form:input type="text" path="LectureName" /><br /><br />
            <c:if test="${fn:length(lecture.attachments) > 0}">
                <b>Attachments:</b><br/>
                <ul>
                    <c:forEach items="${lecture.attachments}" var="attachment">
                        <li>
                            <c:out value="${attachment.name}" />
                            [<a href="<c:url
                                    value="/lecture/${lecture.id}/delete/${attachment.name}"
                                    />">Delete</a>]
                        </li>
                    </c:forEach>
                </ul>
            </c:if>
            <b>Add attachments</b><br />
            <input type="file" name="attachments" multiple="multiple"/><br/><br/>
            <input type="submit" value="Save"/><br/><br/>
        </form:form>
        <a href="<c:url value="/lecture/list" />">Return to list lecture</a>
    </body>
</html> 