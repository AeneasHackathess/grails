<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Welcome to Aeneas!</title>
		<asset:javascript src="bootstrap.min.js"/>
		<asset:stylesheet src="bootstrap.min.css"/>
		<asset:stylesheet src="mycss.css"/>
		<asset:stylesheet src="landing-page.css"/>
	</head>
<body>
<!-- Header -->
<div class="intro-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="intro-message">
					<h1>Aeneas</h1>
					<h3>A platform for the people requiring medical care in Thessaloniki</h3>
					<hr class="intro-divider">
					<ul class="list-inline intro-social-buttons">
						<li>
							<a href="/Aeneas/register" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Register</span></a>
						</li>
						<li>
							<a href="/Aeneas/neuralNet" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Neural Network</span></a>
						</li>
						<li>
							<a href="/Aeneas/api" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">OpenData API</span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
</div>
<!-- /.intro-header -->
<!-- Page Content -->
<div class="content-section-a">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-sm-6">
				<hr class="section-heading-spacer">
				<div class="clearfix"></div>
				<h2 class="section-heading">Συσκευή</h2>
				<p class="lead">Η συσκευή τοποθετείται πάνω στο σώμα του ηλικιωμένου και κατά τακτά χρονικά διαστήματα εντοπίζει τη θέση του, ανιχνεύει τον παλμό και την κίνησή του. Τέλος, φέρει κουμπί έκτακτης ανάγκης.</p>
			</div>
			<div class="col-lg-5 col-lg-offset-2 col-sm-6">
				<img class="img-responsive" src="images/arduino.png" alt="">
			</div>
		</div>
	</div>
	<!-- /.container -->
</div>
<!-- /.content-section-a -->
<div class="content-section-b">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-lg-offset-1 col-sm-push-6 col-sm-6">
				<hr class="section-heading-spacer">
				<div class="clearfix"></div>
				<h2 class="section-heading">Εφαρμογή κινητού</h2>
				<p class="lead">Μέσω της εφαρμογής Android γίνεται παρακολούθηση της κατάστασης του ηλικιωμένου. Συγκεκριμένα, ενημερώνεται σε περίπτωση που ο ηλικιωμένος πάτησε το κουμπί έκτακτης ανάγκης ή σε περίπτωση που ανιχνευτεί πρόβλημα υγείας. Επιπροσθέτως, δίνεται η δυνατότητα να εντοπιστεί η θέση του ηλικιωμένου καθώς και μαγαζία (επωνυμία,τηλ επικοινωνίας) που βρίσκονται κοντά του. Πολύ χρήσιμο σε περιπτώσεις Alzheimer και Άνοιας.</p>
			</div>
			<div class="col-lg-5 col-sm-pull-6 col-sm-6">
				<img class="img-responsive" src="images/android_app_screen_framed.png"x alt="">
			</div>
		</div>
	</div>
	<!-- /.container -->
</div>
<!-- /.content-section-b -->
<div class="content-section-a">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-6">
                <hr class="section-heading-spacer">
                <div class="clearfix"></div>
                <h2 class="section-heading">Νευρωνικό Δίκτυο</h2>
                <p class="lead">Η ανίχνευση προβλήματος υγείας πραγματοποιείται μέσω νευρωνικού δικτύου. Η πρόβλεψη που παρέχει το δίκτυο βασίζεται στο ιατρικό προφίλ του ηλικιωμένου καθώς και στις μετρήσεις που λαμβάνονται real-time από την συσκευή που βρίσκεται πάνω στο σώμα του ηλικιωμένου. Η εκπαίδευση του νευρωνικού είναι δυνατή μέσα από το παρόν site και με κατάλληλα πειράματα μπορεί να προσφέρει ακριβέστερα αποτελέσματα.</p>
            </div>
            <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                <img class="img-responsive" src="images/neural.png" alt="">
            </div>
        </div>
    </div>
    <!-- /.container -->
</div><!-- /.banner -->
<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<p class="copyright text-muted small">Copyright &copy; <a href="http://www.meerkat.gr">Meerkat</a> 2014. All Rights Reserved</p>
			</div>
		</div>
	</div>
</footer>
<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
