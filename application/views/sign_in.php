<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Apik System</title>
    <link rel="shortcut icon" href="<?= base_url(); ?>assets/images/apikrb.png" type=" image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/app.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/pages/auth.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/bootstrap.css">
</head>

<body>
    <div id="auth">

        <div class="row h-100">
            <div class="col-lg-5 col-12">
                <div id="auth-left">
                    <div class="auth-logo">
                        <a href="index.html"><img src="assets/images/apikrb.png" alt="Logo"></a>
                    </div>
                    <h1 class="auth-title">Log in.</h1>
                    <p class="auth-subtitle mb-5">Log in with your data that you entered during registration.</p>

                    <div class="row">
                        <div class="col">
                            <?php if ($this->session->flashdata('pesan')) : ?>
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <?= $this->session->flashdata('pesan'); ?>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>

                    <?= form_open(); ?>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-xl <?= form_error('nip') ? 'is-invalid' : ''; ?>" name="nip" placeholder="NIP" autofocus>
                        <div class="form-control-icon">
                            <i class="bi bi-person"></i>
                        </div>
                        <div class="invalid-feedback">
                            <?= form_error('nip'); ?>
                        </div>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="password" class="form-control form-control-xl <?= form_error('password') ? 'is-invalid' : ''; ?>" name="password" placeholder="Password" autofocus>
                        <div class="form-control-icon">
                            <i class="bi bi-shield-lock"></i>
                        </div>
                        <div class="invalid-feedback">
                            <?= form_error('password'); ?>
                        </div>
                    </div>

                    <div class="form-check form-check-lg d-flex align-items-end">
                        <input class="form-check-input me-2" type="checkbox" value="" id="flexCheckDefault">
                        <label class="form-check-label text-gray-600" for="flexCheckDefault">
                            Keep me logged in
                        </label>
                    </div>
                    <button class="btn btn-primary btn-block btn-lg shadow-lg mt-5" type="submit">Log in</button>
                    </form>

                </div>
            </div>
            <div class="col-lg-7 d-none d-lg-block">
                <div id="auth-right">

                </div>
            </div>
        </div>

    </div>
</body>

</html>