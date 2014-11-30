<%--
  Created by IntelliJ IDEA.
  User: meerkat
  Date: 11/29/14
  Time: 4:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Neural Network</title>
    <!-- Bootstrap core CSS -->
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
<div id="neural"  class="container-fluid" style="padding-top: 30px;padding-bottom: 30px; background-color: #2C3E50;">
    <div class="page-header">
    <h1 class="text-center" style="color: #FFF">Train Neural Network</h1>
    </div>
    <p class="lead text-center" style="color: #FFF">Train the neural network.</p>
    </div>
    <fieldset class = "col-md-6 col-md-offset-3" class="embedded">
        <legend>Περιγραφή Αλγορίθμου</legend>
    <div>
        Χρησιμοποιείται ο αλγόριθμος Multilayer Perceptron του Weka με Heart Disease δεδομένα από το Πανεπιστημιακό Νοσοκομείο του Cleveland<br>
        <a href="https://archive.ics.uci.edu/ml/datasets/Heart+Disease">Link to Data</a><br>
        <dl class="dl-horizontal">
            <dt>Learning Rate</dt>
            <dd>The amount the weights are updated.</dd>
            <dt>Hidden Layers</dt>
            <dd>This defines the hidden layers of the neural network. This is a list of positive whole numbers. 1 for each hidden layer.</dd>
            <dt>Momentum</dt>
            <dd>Momentum applied to the weights during updating.</dd>
            <dt>Training Time</dt>
            <dd>The number of epochs to train through. If the validation set is non-zero then it can terminate the network early.</dd>
        </dl>
    </div>
    </fieldset>
    <g:form name="trainingForm" controller="neuralNet" action="train" class = "col-md-6 col-md-offset-3" >
        <div class="form-group">
            <label for="hiddenLayers">Hidden Layers:</label>
            <input type="number" value="4" class="form-control" id="hiddenLayers" name="hiddenLayers">
        </div>
        <div class="form-group">
            <label for="learningR">Learning Rate:</label>
            <input type="number" value="0.3" class="form-control" id="learningR" name="learningR">
        </div>
        <div class="form-group">
            <label for="momentum">Momentum:</label>
            <input type="number" value="0.2" class="form-control" id="momentum" name="momentum">
        </div>
        <div class="form-group">
            <label for="trainingTime">Training Time:</label>
            <input type="number" value="500" class="form-control" id="trainingTime" name="trainingTime">
        </div>
        <button type="submit" class="btn btn-default">Start Training</button>
    </g:form>
</div>
</div>
</body>
</body>

<script src="https://code.jquery.com/jquery.js"></script>

</html>