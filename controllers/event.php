<?php

session_start();

class Event extends Controller{
    function __construct(){
        parent::__construct();
        $this->view->msg = "";
    }

    function render(){

        $this->main();
        $this->get_table_info();
        $this->get_sessions_users();
        $this->get_users_info_mentors();

        $this->view->render('view_event');
    }

    function main(){
        $user = $this->model->getUser($_SESSION['login_user']);
        $sessions = $this->model->getSessions($user);
        $this->view->sessions = $sessions;
        $this->view->user = $user;
//	var_dump($sessions);
//	var_dump($user);
   }

    function logOut(){
        unset($_SESSION['login_user']);
        header('location:'.constant('URL'));
    }

    function insert_nps(){
        $user = $this->model->getUser($_SESSION['login_user']);
        $msg = "";
        $res = false;

        $score   = $_POST['recomendation'];
        $opinion = $_POST['nps_opinion'];

        $data = [$user, $score, $opinion];

        $res = $this->model->insert_nps($data);

        if($res === true){
            $msg = "¡Muchas gracias por tu respuesta!";

            $this->view->msg = $msg;
            $this->render();
        }
    }

    function get_table_info(){
        $user = $this->model->getUser($_SESSION['login_user']);

        $first_session = $this->model->get_users_session(1, $user);
        $second_session = $this->model->get_users_session(2, $user);
        $third_session = $this->model->get_users_session(3, $user);

        $this->view->first_session = $first_session;
        $this->view->second_session = $second_session;
        $this->view->third_session = $third_session;
    }

    function get_users_info_mentors(){
        $user = $this->model->getUser($_SESSION['login_user']);

        $first_session = $this->model->get_users_mentor_session(1, $user);
        $second_session = $this->model->get_users_mentor_session(2, $user);
        $third_session = $this->model->get_users_mentor_session(3, $user);

        $this->view->first_session_mentor = $first_session;
        $this->view->second_session_mentor = $second_session;
        $this->view->third_session_mentor = $third_session;
    }

    function get_sessions_users(){
        $user = $this->model->getUser($_SESSION['login_user']);

        $first_session = $this->model->get_session($user, 1);
        $second_session = $this->model->get_session($user, 2);
        $third_session = $this->model->get_session($user, 3);

        $this->view->first_user_session = $first_session;
        $this->view->second_user_session = $second_session;
        $this->view->third_user_session = $third_session;
    }
}
