<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
    <head>
        <title>Spring Web MVC project</title>
    </head>
    <body>
    <form:form method="get" action="index.htm">    
        <h3>${response}</h3>
        <input type="submit" value="Back" /></td>
    </form:form>
    </body>
</html>
