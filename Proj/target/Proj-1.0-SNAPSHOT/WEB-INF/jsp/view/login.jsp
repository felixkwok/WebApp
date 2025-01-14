<!DOCTYPE html>
<html>
    <head>
        <title>Online Course Website Login</title>
    </head>
    <body>
        <c:if test="${param.error != null}">
            <p>Login failed.</p>
        </c:if>
        <c:if test="${param.logout != null}">
            <p>You have logged out.</p>
        </c:if>
            ${param}
        <h2>Online Course Website Login</h2>
        <form action="cslogin" method="POST">
            <label for="username">Username:</label><br/>
            <input type="text" id="username" name="username" /><br/><br/>
            <label for="password">Password:</label><br/>
            <input type="password" id="password" name="password" /><br/><br/>
            <input type="checkbox" id="remember-me" name="remember-me" />
            <label for="remember-me">Remember me</label><br/><br/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input type="submit" value="Log In"/>
        </form>
            <a href="<c:url value="/user/create" />"><button>Sign Up</button></a><br /><br />
            <a href="<c:url value="/Lecture/list" />"><button>To Main Page</button></a><br /><br />
    </body>
</html>
