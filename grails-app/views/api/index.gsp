<%--
  Created by IntelliJ IDEA.
  User: meerkat
  Date: 11/30/14
  Time: 1:20 AM
--%>

<%@ page import="gr.meerkat.DatasetPlaces" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Place API</title>
    <asset:javascript src="application.js"/>
    <script>
    function complete(){
        console.log('in');
    }
    </script>
</head>

<body>
<g:form controller="api" action="add">
    <label for=address>Διεύθυνση:</label>
    <g:select name="address" id="address" from="${ DatasetPlaces.createCriteria().list{isNull("number")}}"/>
    <label for=name>Επωνυμία</label>
    <input type="text" name="name" id="name">
    <label for=number>Τηλ. Επικοινωνίας</label>
    <input type="text" name="number" id="number">
    <button type="submit" class="btn btn-default">Εισαγωγή στα Data</button>
</g:form>
</body>
</html>