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
<g:form controller="api" action="add" class="col-md-8 col-md-offset-2">
    <div class="form-group">
    <div align="center"><h1>Εισαγωγή Δεδομένων σε OpenData API</h1></div>
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
</body>
</html>