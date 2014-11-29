<%--
  Created by IntelliJ IDEA.
  User: meerkat
  Date: 11/29/14
  Time: 12:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Register Form</title>
</head>

<body>
<div id="create-shop" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${patientInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${patientInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${userInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${userInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
<div id="registerForm">
<g:form name="registerForm" controller="register" action="register">
        <div class="form-group">
            <label for="username">Όνομα Χρήστη:</label>
            <input type="text" class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="mac">Mac Address Συσκευής:</label>
            <input type="text" class="form-control" id="mac" name="mac">
        </div>
        <fieldset class="embedded"><legend>Προφίλ Ηλικιωμένου</legend>
            <div class="form-group">
                <label for="patientName">Όνομα Ηλικιωμένου:</label>
                <input type="text" class="form-control" id="patientName" name="patientName">
            </div>
            <div class="form-group">
                <label for="age">Ηλικία:</label>
                <g:select name="age" id="age" from="${18..100}"
                          noSelection="['':'Συμπληρώστε Ηλικία']"/>
            </div>
            <div class="form-group">
                <label for="sex">Φύλο:</label>
                <g:select name="sex" id="sex" from="${["Άνδρας","Γυναίκα"]}"
                          noSelection="['':'Συμπληρώστε Φύλο']"/>
            </div>
            <div class="form-group">
                <label for="dementia">Άνοια:</label>
                <input type="checkbox" class="form-control" id="dementia" name="dementia">
            </div>
            <div class="form-group">
                <label for="alzheimer">Alzheimer:</label>
                <input type="checkbox" class="form-control" id="alzheimer" name="alzheimer">
            </div>
            <div class="form-group">
                <label for="chol">Επίπεδα Χολιστερόλης:</label>
                <input type="number" class="form-control" id="chol" name="chol">
            </div>
        </fieldset>
        <button type="submit" class="btn btn-default">Εγγραφή</button>
    </g:form>
</div>
</body>
</html>