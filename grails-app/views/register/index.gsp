<%--
  Created by IntelliJ IDEA.
  User: meerkat
  Date: 11/29/14
  Time: 12:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register Form</title>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="mycss.css"/>
</head>

<body style="background-color: #D5E2D5">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/Aeneas"><img src="images/aeneas_logo.png"  height="35" width="35"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/Aeneas">Home</a>
                </li>
                <li>
                    <a href="/Aeneas/register">Register</a>
                </li>
                <li>
                    <a href="/Aeneas/neuralNet">Neural Network</a>
                </li>
                <li>
                    <a href="/Aeneas/api">OpenData API</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
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
    <div id="register_head_class_j"  class="container-fluid" style="padding-top: 30px;padding-bottom: 30px; background-color: #2C3E50;">
        <div class="page-header">
            <h1 class="text-center" style="color: #FFF">Register</h1>
        </div>
        <p class="lead text-center" style="color: #FFF">Register your device.</p>
    </div>
<div id="registerForm">
<g:form name="registerForm" controller="register" action="register" class = "col-md-6 col-md-offset-3" style="padding-top: 30px">
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
            <div class="checkbox">
                <label for="dementia">Άνοια<input type="checkbox" id="dementia" name="dementia"></label>
            </div>
            <div class="checkbox">
                <label for="alzheimer">Alzheimer</label>
                <input type="checkbox" id="alzheimer" name="alzheimer">
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