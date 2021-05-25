<?php require 'views/head.php'; ?>



<section class="main-event-section">
    <header class="main-header">
        <div class="logo-main-header">
            <img src="<?php echo constant('URL_S3') ?>images/LogoBlanco-2.png" alt="Endeavor Mentors' Live">
        </div>
        <a href="<?php echo constant('URL') ?>/event/logOut" class="log-out">Cerrar sesión</a>
    </header>
    <div class="container">
        <div class="row justify-content-center pt-5 pb-3">
            <div class="col text-center">
                <h2 class="normal-text">¡Ya estás en <span class="green">MENTORS' DAY </span>LIVE!</h2>
                <p class="normal-text pt-3">Antes de ingresar a tu primera sesión, mira el video que iniciará a las 9:10 a.m.</p>
            </div>
        </div>
        <div class="row justify-content-center pb-4 text-center">
            <div class="col-12 pb-3" id="clock-container">
                <h4 class="title-clock red">EL EVENTO INICIARÁ EN</h4>
                <ul id="clock-list">
                    <li id="days"></li>
                    <li id="hours"></li>
                    <li id="minutes"></li>
                    <li id="seconds"></li>
                </ul>
            </div>
            <div class="col-lg-8 col-md-10">
                <video id="main-video-section" src="<?php echo constant('URL_S3') ?>videos/LoopdeLogosMentorsDay2021.mp4" class="video-section-mentors" autoplay muted playsinline loop>
                    Tu navegador no soporta video HTML.
                </video>
            </div>
            <div class="col-md-6 pt-4">
                <p class="normal-text text-center">
                    ¿Tienes problemas? Comunícate con nosotros: <a class="qa-link" href="https://wa.link/z4hx2d" target="_blank"><img class="qa-icon" src="<?php echo constant('URL_S3') ?>images/socialMedia/whatsapp.png" alt=""></a></p>
            </div>
        </div>
        <div class="row pb-4 justify-content-center hidden" id="nps_form">
            <div class="col-lg-8 col-md-10 text-center">
                <p class="text-center green"><b>TU OPINIÓN ES IMPORTANTE PARA NOSOTROS</b></p>
                <form action="<?php echo constant('URL') ?>event/insert_nps" method="POST">
                    <label for="recomendation">De 0 a 10 (siendo 0 el menor y 10 el mayor).<br>¿Con qué probabilidad recomendarías Mentors' Day a un amigo o a un compañero?</label>
                    <div class="radio-buttons pb-3">
                        <?php for ($i = 0; $i < 11; $i++) { ?>
                            <div class="form-check form-check-inline">
                                <input type="radio" class="form-check-input" name="recomendation" value="<?php echo $i ?>" id="rec_<?php echo $i ?>" required>
                                <label for="rec_<?php echo $i ?>" class="form-check-label"><?php echo $i ?></label>
                            </div>
                        <?php }; ?>
                    </div>
                    <div class="form-group pb-2">
                        <label for="nps_opinion">Cuéntanos tu opinión sobre el evento:</label>
                        <textarea class="form-control" name="nps_opinion" id="nps_opinion"></textarea>
                    </div>
                    <button class="btn btn-light" type="submit">Enviar</button>
                </form>
                <p class="text-center pt-2"><?php echo $this->msg; ?></p>
            </div>
        </div>
        <div class="row justify-content-center pb-4">
            <div class="col">
                <h2 class="title-red">TU AGENDA</h2>
                <p class="pt-3">Ten presente que cada sesión tiene una hora indicada de ingreso. Una vez finalice cada mentoría regresa aquí para acceder a la siguiente.</p>
            </div>
        </div>
        <div class="row justify-content-center">
            <?php if ($this->user[0]->type === 1 || $this->user[0]->type === 2 || $this->user[0]->type === 4) {
                $i = 0;
                $j = 0;
                foreach ($this->sessions as $session) { ?>
                    <div class="col-md-4 col-sm-6 pt-1 pb-1">
                        <div class="event-card h-100">
                            <?php if ($this->user[0]->type === 3) {
                                switch ($i) {
                                    case 0:
                                        echo '<p class="event-hour">SESIÓN 1:<br>8:20 A.M. - 9:20 A.M.</p>';
                                        break;
                                    case 1:
                                        echo '<p class="event-hour">SESIÓN 2:<br>9:30 A.M. - 10:30 A.M.</p>';
                                        break;
                                    case 2:
                                        echo '<p class="event-hour">SESIÓN 3:<br>10:40 A.M. - 11:40 P.M.</p>';
                                        break;
                                    case 3:
                                        echo '<p class="event-hour">SESIÓN 4:<br>10:40 A.M. - 11:40 P.M.</p>';
                                        break;
                                }
                            } ?>


                            <?php if ($this->user[0]->type === 1 && $j <= 13 && $session->area != "0") {
                                echo '<p class="event-hour">SESIÓN A.M.</p>';
                                $j = $j + 1;
                                }
                                elseif ($this->user[0]->type === 1 && $j > 13) {
                                    echo '<p class="event-hour">SESIÓN P.M.</p>';
                                    $j = $j + 1;
                                    }

                            ?>


                            <p class="area-event"><?php if ($session->area != "0" ) {echo $session->area;} ?></p>
                            <p class="name-event"><?php if ($session->area != "0" ) {echo $session->name;} ?></p>
                            <p class="name-event">Contraseña: <?php if ($session->area != "0" ) {echo $session->password;} ?></p>
                            <a class="button-event" href="<?php if ($session->area != "0" ) {echo $session->link;} ?>" target="_blank">Entrar</a>
                        </div>
                    </div>
            <?php $i++;
                }
            } ?>

            <?php if ($this->user[0]->type === 3) {
                for ($i = 0; $i < 4; $i++) { ?>
                    <div class="col-md-6 col-sm-6 pt-1 pb-1">
                        <div class="event-card h-100">
                            <?php switch ($i) {
                                case 0:
                                    if ($this->first_user_session[0]->area != '0') {
                                        echo '<p class="event-hour">SESIÓN:<br>9:20 A.M. - 10:20 A.M.</p>';
                                        echo '<p class="area-event">' . $this->first_user_session[0]->area . '</p>';
                                        echo '<p class="name-event">' . $this->first_user_session[0]->name . '</p>';
                                        echo '<p class="name-event">Contraseña: ' . $this->first_user_session[0]->password . '</p>';
                                        echo '<a class="button-event" href="' . $this->first_user_session[0]->link . '" target="_blank">Entrar</a>';
                                        break;
                                    } else {
                                        break;
                                    }
                                case 1:
                                    if ($this->second_user_session[0]->area != '0') {
                                        echo '<p class="event-hour">SESIÓN:<br>10:30 A.M. - 11:30 A.M.</p>';
                                        echo '<p class="area-event">' . $this->second_user_session[0]->area . '</p>';
                                        echo '<p class="name-event">' . $this->second_user_session[0]->name . '</p>';
                                        echo '<p class="name-event">Contraseña: ' . $this->second_user_session[0]->password . '</p>';
                                        echo '<a class="button-event" href="' . $this->second_user_session[0]->link . '" target="_blank">Entrar</a>';
                                        break;
                                    } else {
                                        break;
                                    }
                                case 2:
                                    if ($this->third_user_session[0]->area != '0') {
                                        echo '<p class="event-hour">SESIÓN:<br>3:20 P.M. - 4:40 P.M.</p>';
                                        echo '<p class="area-event">' . $this->third_user_session[0]->area . '</p>';
                                        echo '<p class="name-event">' . $this->third_user_session[0]->name . '</p>';
                                        echo '<p class="name-event">Contraseña: ' . $this->third_user_session[0]->password . '</p>';
                                        echo '<a class="button-event" href="' . $this->third_user_session[0]->link . '" target="_blank">Entrar</a>';
                                        break;
                                    } else {
                                        break;
                                    }
                                case 3:
                                    if ($this->fourth_user_session[0]->area != '0') {
                                        echo '<p class="event-hour">SESIÓN:<br>4:30 P.M. - 5:30 P.M.</p>';
                                        echo '<p class="area-event">' . $this->fourth_user_session[0]->area . '</p>';
                                        echo '<p class="name-event">' . $this->fourth_user_session[0]->name . '</p>';
                                        echo '<p class="name-event">Contraseña: ' . $this->fourth_user_session[0]->password . '</p>';
                                        echo '<a class="button-event" href="' . $this->fourth_user_session[0]->link . '" target="_blank">Entrar</a>';
                                        break;
                                    } else {
                                        break;
                                    }
                            } ?>
                        </div>
                    </div>
            <?php }
            } ?>
        </div>
       
        <!--
        <div class="row justify-content-center pt-5">
            <div class="col">
                <div class="networking-block text-center">
                    <p>Espacio de networking 11:50 a.m. - 12:30 p.m.</p>
                    <a class="networking-block--link" href="https://endeavornetworking.hubilo.com/community" target="_blank">ENTRAR AL NETWORKING LOUNGE</a>
                </div>
            </div>
        </div>
        -->
        
        <?php if ($this->user[0]->type === 2) { ?>
            <div class="row justify-content-center pt-5 pb-4">
                <div class="col">
                    <h2 class="title-red">ASISTENTES REGISTRADOS</h2>
                    <p class="pt-3">Estos son los asistentes registrados a cada una de las 4 sesiones.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <h5 class="text-center">SESIÓN 9:20 A.M. - 10:20 A.M.</h5>
                    <table class="table table-sm table-dark text-center table-responsive">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Email</th>
                        </tr>
                        <?php $i = 1;
                        foreach ($this->first_session as $session) { ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $session->name; ?></td>
                                <td><?php echo $session->last_name; ?></td>
                                <td><?php echo $session->email; ?></td>
                            </tr>
                        <?php $i++;
                        } ?>
                    </table>
                </div>
                <div class="col-6">
                    <h5 class="text-center">SESIÓN 10:30 A.M. - 11:30 A.M.</h5>
                    <table class="table table-sm table-dark text-center table-responsive">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Email</th>
                        </tr>
                        <?php $i = 1;
                        foreach ($this->second_session as $session) { ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $session->name; ?></td>
                                <td><?php echo $session->last_name; ?></td>
                                <td><?php echo $session->email; ?></td>
                            </tr>
                        <?php $i++;
                        } ?>
                    </table>
                </div>
                <div class="col-6">
                    <h5 class="text-center">SESIÓN 3:20 P.M. - 4:40 P.M.</h5>
                    <table class="table table-sm table-dark text-center table-responsive">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Email</th>
                        </tr>
                        <?php $i = 1;
                        foreach ($this->third_session as $session) { ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $session->name; ?></td>
                                <td><?php echo $session->last_name; ?></td>
                                <td><?php echo $session->email; ?></td>
                            </tr>
                        <?php $i++;
                        } ?>
                    </table>
                </div>
                <div class="col-6">
                    <h5 class="text-center">SESIÓN 4:30 P.M. - 5:30 P.M.</h5>
                    <table class="table table-sm table-dark text-center table-responsive">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Email</th>
                        </tr>
                        <?php $i = 1;
                        foreach ($this->fourth_session as $session) { ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $session->name; ?></td>
                                <td><?php echo $session->last_name; ?></td>
                                <td><?php echo $session->email; ?></td>
                            </tr>
                        <?php $i++;
                        } ?>
                    </table>
                </div>
            </div>
        <?php } ?>
        <?php if ($this->user[0]->type === 4) { ?>
            <div class="row pt-5 pb-4">
                <div class="col text-center">
                    <h3 class="title-green">ASISTENTES POR SESIÓN</h3>
                </div>
            </div>
            <div class="row">
                    <div class="col-12" id="first-session-mentor">
                        <h4 class="text-center">SESIÓN 9:20 A.M. - 10:20 A.M.</h4>
                    </div>
                    <?php foreach ($this->first_session_mentor as $key => $val) { ?>
                        <div class="col-lg-4 col-md-6 pb-3 h-100">
                            <div class="user-info-card">
                                <p class="text-center" style="color: #81d0d6;"><b>ASISTENTE <?php echo $key + 1 ?></b></p>
                                <p>Nombre: <?php echo $val['name'] . " " . $val["last_name"]?></p>
                                <p>Empresa: <?php echo $val['company'] ?></p>
                                <p>Cargo: <?php echo $val['position'] ?></p>
                                <p>Facturación: <?php echo $val['billing'] ?></p>
                                <p>Website: <a href="<?php echo $val['website'] ?>" target="_blank"><?php echo $val['website'] ?></a></p>
                                <p>Descripción de la empresa: <?php echo $val['description'] ?></p>
                                <p>Preguntas: <?php echo $val['q_first'] ?></p>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="col-12" id="first-session-mentor">
                        <h4 class="text-center">SESIÓN 10:30 A.M. - 11:30 A.M.</h4>
                    </div>
                    <?php foreach ($this->second_session_mentor as $key => $val) { ?>
                        <div class="col-lg-4 col-md-6 pb-3 h-100">
                            <div class="user-info-card">
                                <p class="text-center" style="color: #81d0d6;"><b>ASISTENTE <?php echo $key + 1 ?></b></p>
                                <p>Nombre: <?php echo $val['name'] . " " . $val["last_name"]?></p>
                                <p>Empresa: <?php echo $val['company'] ?></p>
                                <p>Cargo: <?php echo $val['position'] ?></p>
                                <p>Facturación: <?php echo $val['billing'] ?></p>
                                <p>Website: <a href="<?php echo $val['website'] ?>" target="_blank"><?php echo $val['website'] ?></a></p>
                                <p>Descripción de la empresa: <?php echo $val['description'] ?></p>
                                <p>Preguntas: <?php echo $val['q_second'] ?></p>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="col-12" id="first-session-mentor">
                        <h4 class="text-center">SESIÓN 3:20 P.M. - 4:40 P.M.</h4>
                    </div>
                    <?php foreach ($this->third_session_mentor as $key => $val) { ?>
                        <div class="col-lg-4 col-md-6 pb-3 h-100">
                            <div class="user-info-card">
                                <p class="text-center" style="color: #81d0d6;"><b>ASISTENTE <?php echo $key + 1 ?></b></p>
                                <p>Nombre: <?php echo $val['name'] . " " . $val["last_name"]?></p>
                                <p>Empresa: <?php echo $val['company'] ?></p>
                                <p>Cargo: <?php echo $val['position'] ?></p>
                                <p>Facturación: <?php echo $val['billing'] ?></p>
                                <p>Website: <a href="<?php echo $val['website'] ?>" target="_blank"><?php echo $val['website'] ?></a></p>
                                <p>Descripción de la empresa: <?php echo $val['description'] ?></p>
                                <p>Preguntas: <?php echo $val['q_third'] ?></p>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="col-12" id="first-session-mentor">
                        <h4 class="text-center">SESIÓN 4:30 P.M. - 5:30 P.M.</h4>
                    </div>
                    <?php foreach ($this->fourth_session_mentor as $key => $val) { ?>
                        <div class="col-lg-4 col-md-6 pb-3 h-100">
                            <div class="user-info-card">
                                <p class="text-center" style="color: #81d0d6;"><b>ASISTENTE <?php echo $key + 1 ?></b></p>
                                <p>Nombre: <?php echo $val['name'] . " " . $val["last_name"]?></p>
                                <p>Empresa: <?php echo $val['company'] ?></p>
                                <p>Cargo: <?php echo $val['position'] ?></p>
                                <p>Facturación: <?php echo $val['billing'] ?></p>
                                <p>Website: <a href="<?php echo $val['website'] ?>" target="_blank"><?php echo $val['website'] ?></a></p>
                                <p>Descripción de la empresa: <?php echo $val['description'] ?></p>
                                <p>Preguntas: <?php echo $val['q_fourth'] ?></p>
                            </div>
                        </div>
                    <?php } ?>
            </div>
        <?php } ?>
        <div class="row pt-5 pb-5">
            <div class="col-12 pb-4">
                <h2 class="title-green">RECOMENDACIONES IMPORTANTES</h2>
            </div>
            <div class="col">
                <ul>
                    <li>Accede desde un portátil o un equipo de escritorio para tener una mejor experiencia.</li>
                    <li>Comprueba tu conexión a internet. Tener tu equipo conectado por medio de un cable de red garantizará una mayor estabilidad de la señal.</li>
                    <li>Ten a la mano una libreta para tomar nota de cada lección. Te recomendamos también tener listas tus preguntas para los mentores.</li>
                    <li>Tu calificación es muy importante para nosotros. Por favor responde la encuesta solicitada al finalizar cada jornada. Además, entrarás a concursar por una suscripción de Platzi, un bono de $200,000 para pautar en Mi Megáfono y una asesoría personalizada con Viliv.</li>
                    <li>Tendrás 10 minutos de receso entre las sesiones, aprovéchalos para conectarte a tu siguiente sesión.</li>
                    <li>Comparte en redes sociales los mejores consejos que recibiste de los Mentores Endeavor con el #MentorsDay.</li>
                </ul>
            </div>
        </div>
        <div class="row pb-4 justify-content-center">
            <div class="col-12 text-center social-networks">
                <ul class="social-media-list">
                    <li><a class="social-media-icon" href="https://endeavor.org.co/" target="_blank"><img src="<?php echo constant('URL_S3') ?>images/socialMedia/endeavorE.png" alt=""></a></li>
                    <li><a class="social-media-icon" href="https://www.facebook.com/endeavorcolombia/" target="_blank"><img src="<?php echo constant('URL_S3') ?>images/socialMedia/facebook.png" alt=""></a></li>
                    <li><a class="social-media-icon" href="https://twitter.com/EndeavorCol" target="_blank"><img src="<?php echo constant('URL_S3') ?>images/socialMedia/twitter.png" alt=""></a></li>
                    <li><a class="social-media-icon" href="https://www.youtube.com/channel/UCABxynec_xVkaWMtIk0c-Eg" target="_blank"><img src="<?php echo constant('URL_S3') ?>images/socialMedia/youtube.png" alt=""></a></li>
                    <li><a class="social-media-icon" href="https://www.linkedin.com/company/endeavor-colombia/" target="_blank"><img src="<?php echo constant('URL_S3') ?>images/socialMedia/linkedin.png" alt=""></a></li>
                    <li><a class="social-media-icon" href="https://www.instagram.com/endeavorcolombia/" target="_blank"><img src="<?php echo constant('URL_S3') ?>images/socialMedia/instagram.png" alt=""></a></li>
                </ul>
            </div>
        </div>
    </div>
<!--
    <div class="container-fluid featured-allies">
        <div class="row featured-allies-row">
            <div class="col-12">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/05/FBD-Blanco.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/05/SAP-Blanco.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/EY-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/Oracle-blanco-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/Wework-blanco-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/Deloitte-blanco-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/Hubilo-blanco-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/Caracol-NT-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/Caracol-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/08/Blu-mentors.png" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="featured-ally-img" src="https://endeavor.org.co/wp-content/uploads/2020/05/Eventtia-Blanco.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
-->
    <div class="container">
        <div class="row pb-5 pt-5 justify-content-center">
            <div class="col-12 pb-5">
                <h2 class="title-red">APOYAN</h2>
            </div>
            <div class="col-12">
		<img src="https://www.endeavor.org.co/wp-content/uploads/2021/05/Banner-MentorsDay-ALIADOS.png" alt="">
            </div>
        </div>
    </div>
    <footer class="text-center">
        <p class="text-center m-0">Un evento de:</p>
        <img src="<?php echo constant('URL_S3') ?>images/Logo Endeavor Blanco.png" alt="" class="logo-footer">
    </footer>
</section>

<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="<?php echo constant('URL') ?>public/js/events.js"></script>
<?php require 'views/footer.php' ?>
