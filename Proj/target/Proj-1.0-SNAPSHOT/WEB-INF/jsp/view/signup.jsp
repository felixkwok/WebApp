<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
<h1 style="text-align: center;">Create a Account</h1>
<form:form method="POST" enctype="multipart/form-data" modelAttribute="WebsiteUser">
    <form:label path="username">Username</form:label><br/>
    <form:input type="text" path="username" /><br/><br/>
    <form:label path="password">Password</form:label><br/>
    <form:input type="text" path="password" /><br/><br/>
    <form:label   hidden="yes" path="roles">Roles</form:label>
    <form:checkbox   path="roles" value="ROLE_USER" checked="yes" hidden="yes" />
        <form:label path="fullname">fullname</form:label><br/>
    <form:input type="text" path="fullname" /><br/><br/>
        <form:label path="phone">Phone</form:label><br/>
    <form:input type="text" path="phone" /><br/><br/>
        <form:label path="address">Address</form:label><br/>
    <form:input type="text" path="address" /><br/><br/>
    <br /><br />
    <input type="submit" value="Add User"/>
</form:form>
</body>
</html>
