<?php require 'views/head.php'; ?>

<div class="container-fluid container-home">
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-6">
            <img src="<?php echo constant('URL_S3') ?>images/LogoBlanco.svg" alt="Endeavor Mentors Day Live" class="logo-home">
        </div>
    </div>
    <div class="row pt-3 pb-2">
        <div class="col text-center">
            <h1 class="welcome-title">¡LLEGÓ EL DÍA!</h1>
            <p class="description-text-home pt-1">
                Inicia sesión usando el email con el que realizaste el registro.
            </p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-8">
            <form action="<?php echo constant('URL') ?>home/logIn" method="post" class="form-group">
                <input type="email" name="email" id="" required class="form-control" placeholder="Email">
                <div class="button-block">
                    <button type="submit" class="mt-3 login-button">Ingresar</button>
                </div>
            </form>
            <p class="normal-p m-0 red">
                <?php echo $this->msg ?>
            </p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6 pt-3">
            <p class="normal-text text-center">
                ¿Tienes problemas? Comunícate con nosotros: <a class="qa-link" href="https://wa.me/573116258427?text=Hola,%20tengo%20una%20duda%20frente%20al%20evento%20Mentors'%20Day%20Live" target="_blank"><img class="qa-icon" src="<?php echo constant('URL_S3') ?>images/socialMedia/whatsapp.png" alt=""></a></p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col text-center">
            <p class="promo-text">
                No olvides tener
            </p>
            <img src="<?php echo constant('URL_S3') ?>images/icons_home.png" alt="" class="icons-home">
        </div>
    </div>
</div>


<?php require 'views/footer.php'; ?>