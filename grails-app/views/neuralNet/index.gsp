<%--
  Created by IntelliJ IDEA.
  User: meerkat
  Date: 11/29/14
  Time: 4:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Neural Network</title>
</head>

<body>
<div id="neural">
    <h3>Train Neural Network</h3>
    <fieldset class="embedded"><legend>Περιγραφή Αλγορίθμου</legend>
    <div>
        Χρησιμοποιείται ο αλγόριθμος Multilayer Perceptron του Weka με Heart Disease δεδομένα από το Πανεπιστημιακό Νοσοκομείο του Cleveland<br>
        <a href="https://archive.ics.uci.edu/ml/datasets/Heart+Disease">Link to Data</a><br>

        learningRate -- The amount the weights are updated.<br>

        hiddenLayers -- This defines the hidden layers of the neural network. This is a list of positive whole numbers. 1 for each hidden layer.<br>

        momentum -- Momentum applied to the weights during updating.<br>

        trainingTime -- The number of epochs to train through. If the validation set is non-zero then it can terminate the network early<br>
    </div>
    </fieldset>
    <g:form name="trainingForm" controller="neuralNet" action="train">
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
</body>
</html>