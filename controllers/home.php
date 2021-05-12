<?php

session_start();

class Home extends Controller{
    function __construct(){
        parent::__construct();
        $this->view->msg = "";
    }

    function render(){
        $this->view->render('view_home');
    }

    function logIn(){
        $email = $_POST['email'];

        $users = $this->model->consult($email);

        if(count($users) === 1){
            $_SESSION['login_user'] = $users[0]->email;
            header("location: ".constant('URL')."event");
        }else{
            $msg = "*Usuario no registrado";
        }

        $this->view->msg = $msg;
        $this->render();
    }
}
