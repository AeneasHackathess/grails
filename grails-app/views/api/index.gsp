<%--
  Created by IntelliJ IDEA.
  User: meerkat
  Date: 11/30/14
  Time: 1:20 AM
--%>

<%@ page import="gr.meerkat.DatasetPlaces" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data API</title>
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
<div align="center" class = "col-md-6 col-md-offset-3" style="padding-top: 30px"><h1>Εισαγωγή Δεδομένων σε OpenData API</h1></div>
<div class="form-group">
<g:form controller="api" action="add" class="col-md-8 col-md-offset-2">
    <div class="form-group">
    <label for=address>Διεύθυνση:</label>
    <g:select name="address" id="address" from="${ DatasetPlaces.createCriteria().list{isNull("number")}}" class="form-control"/>
    </div>
    <div class="form-group">
    <label for=name>Επωνυμία:</label>
    <input type="text" name="name" id="name" class="form-control">
    </div>
    <div class="form-group">
    <label for=number>Τηλ. Επικοινωνίας:</label>
    <input type="text" name="number" id="number" class="form-control">
    </div>
    <button type="submit" class="btn btn-default">Εισαγωγή στα Data</button>
</g:form>
</div>
</body>
</html>