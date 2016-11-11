<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spring Web MVC project</title>
    </head>
    <body>
       <div align="center" style="height: 200px;width: 500px;">
           
       <!--    The commandName specifies the model attribute name that contains a backing object (similar to
       the managed bean in JSF) and the properties of this object will be used to populate the generated form 
       Ref: https://www.packtpub.com/sites/default/files/downloads/7368OS_AppendixC.pdf
       -->
        <form:form method="post" action="response.htm" commandName="profileBean">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Financial Consultation Request</h2></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <!--  This path attribute binds the input field to the form-backing object's property. -->
                    <td><form:input path="clientName" items="${clientName}"/></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>  
                        <form:radiobutton path="gender" value="Female" items="${gender}"/>Female
                        <form:radiobutton path="gender" value="Male" items="${gender}"/>Male
                    </td>
                </tr>
                <tr>
                    <td>Position : </td>
                    <!--  This path attribute binds the input field to the form-backing object's property. -->
                    <td><form:select path="position" items="${position}"/></td>
                </tr>
               <tr>
                    <td>Industries: </td>
                    <td><form:select path="industries" multiple="true" items="${industriesList}" /></td>
                </tr>
                <tr>
                    <td>Interest: </td>
                    <td><form:checkboxes path="interests"  items="${interestList}" /></td> 
                </tr>
                 <tr>
                    <td>Comment: </td>
                    <td><form:textarea path="comment" rows="10" cols="30" items="${comment}"/></td> 
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
