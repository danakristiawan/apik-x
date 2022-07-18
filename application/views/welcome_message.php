<?php
$uri = sso()['base_uri'] . sso()['authorize']['endpoint'];
$grant_type = sso()['authorize']['grant_type'];
$response_type = sso()['authorize']['response_type'];
$client_id = sso()['authorize']['client_id'];
$scope = sso()['authorize']['scope'];
$nonce = sso()['authorize']['nonce'];
$state = sso()['authorize']['state'];
$redirect_uri = sso()['authorize']['redirect_uri'];
$authorize_url = $uri . '?grant_type=' . $grant_type . '&response_type=' . $response_type . '&client_id=' . $client_id . '&scope=' . $scope . '&nonce=' . $nonce . 'state=' . $state . '&redirect_uri=' . $redirect_uri;
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>APIK System</title>
	<link rel="shortcut icon" href="<?= base_url(); ?>assets/images/apikrb.png" type=" image/x-icon">
	<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendors/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/bootstrap.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/app.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/pages/error.css">
</head>

<body>
	<div id="error">


		<div class="error-page container">
			<div class="col-md-8 col-12 offset-md-2">
				<div class="text-center">
					<img style="width: 50%;" src="<?= base_url(); ?>assets/images/apikrb.png" alt="Apik Logo">
					<h1 class="error-title">Aplikasi Penatausahaan Internal Kas</h1>
					<p class="fs-5 text-gray-600">Dengan kolaborasi antar pemangku kepentingan, kami hadirkan data dan informasi secara handal, akurat dan terintegrasi.</p>
					<a href="<?= $authorize_url; ?>" class="btn btn-lg btn-outline-primary mt-3">Login Menggunakan Kemenkeu ID</a>
				</div>
			</div>
		</div>


	</div>
</body>

</html>