<?php

include_once 'models/user.php';
include_once 'models/sessions.php';
include_once 'models/attendees.php';

class eventModel extends Model {
    public function __construct(){
        parent::__construct();
    }

    public function getUser($data){

        $getUser = new Services();

        $user = new User();

        $user = $getUser->getUser($data);

        return $user;
	var_dump($user);
    }

    public function getSessions($data){
        switch($data[0]->type){
            case 1:
                $sessions = $this->getAllSessions();
                break;
            case 2:
                $sessions = $this->getStaffSession($data);
                break;
            case 3:
                $sessions = $this->getAttendeeSession($data);
                break;
            case 4:
                $sessions = $this->getMentorSession($data);
                break;
        }

        return $sessions;
    }

    public function getAllSessions(){
        $sessions = [];
        $query = $this->db->connect()->prepare('SELECT * FROM sessions');

        try{
            $query->execute();

            while($row = $query->fetch()){
                $session = new Sessions();

                $session->id       = $row['id'];
                $session->area     = $row['area'];
                $session->name     = $row['name'];
                $session->link     = $row['link'];
                $session->password = $row['password'];

                array_push($sessions, $session);
            }

            return $sessions;
        }catch(PDOException $e){
            return null;
        }
    }

    public function get_session($user, $num_session){
        $sessions = [];
        switch($num_session){
            case 1:
                $query = $this->db->connect()->prepare('SELECT sessions.id, sessions.name, sessions.area, sessions.link, sessions.password from sessions WHERE sessions.id = (SELECT first_session FROM records WHERE email = :email)');
                break;
            case 2:
                $query = $this->db->connect()->prepare('SELECT sessions.id, sessions.name, sessions.area, sessions.link, sessions.password from sessions WHERE sessions.id = (SELECT second_session FROM records WHERE email = :email)');
                break;
            case 3:
                $query = $this->db->connect()->prepare('SELECT sessions.id, sessions.name, sessions.area, sessions.link, sessions.password from sessions WHERE sessions.id = (SELECT third_session FROM records WHERE email = :email)');
                break;
        }

        try{
            $query->execute([':email' => $user[0]->email]);

            while($row = $query->fetch()){
                $session = new Sessions();

                $session->id       = $row['id'];
                $session->area     = $row['area'];
                $session->name     = $row['name'];
                $session->link     = $row['link'];
                $session->password = $row['password'];

                array_push($sessions, $session);
            }

            return $sessions;
        }catch(PDOException $e){
            return false;
        }
    }

    public function getAttendeeSession($user){
        $sessions = [];
        $query = $this->db->connect()->prepare('SELECT sessions.id, sessions.name, sessions.area, sessions.link, sessions.password from records INNER JOIN sessions on records.email=:email AND (sessions.id=records.first_session OR sessions.id=records.second_session OR sessions.id=records.third_session)');

        try{
            $query->execute([':email' => $user[0]->email]);

            while($row = $query->fetch()){
                $session = new Sessions();

                $session->id       = $row['id'];
                $session->area     = $row['area'];
                $session->name     = $row['name'];
                $session->link     = $row['link'];
                $session->password = $row['password'];

                array_push($sessions, $session);
            }

            return $sessions;
        }catch(PDOException $e){
            return null;
        }
    }

    public function getStaffSession($user){
        $sessions = [];
        $query = $this->db->connect()->prepare('SELECT sessions.id, sessions.name, sessions.area, sessions.link, sessions.password from staff_meeting INNER JOIN sessions on staff_meeting.email=:email AND sessions.id = staff_meeting.id_session');

        try{
            $query->execute([':email' => $user[0]->email]);

            while($row = $query->fetch()){
                $session = new Sessions();

                $session->id       = $row['id'];
                $session->area     = $row['area'];
                $session->name     = $row['name'];
                $session->link     = $row['link'];
                $session->password = $row['password'];

                array_push($sessions, $session);
            }

            return $sessions;
        }catch(PDOException $e){
            return null;
        }
    }

    public function getMentorSession($user){
        $sessions = [];
        $query = $this->db->connect()->prepare('SELECT sessions.id, sessions.name, sessions.area, sessions.link, sessions.password from mentors_meeting INNER JOIN sessions on mentors_meeting.email=:email AND sessions.id = mentors_meeting.session');

        try{
            $query->execute([':email' => $user[0]->email]);

            while($row = $query->fetch()){
                $session = new Sessions();

                $session->id       = $row['id'];
                $session->area     = $row['area'];
                $session->name     = $row['name'];
                $session->link     = $row['link'];
                $session->password = $row['password'];

                array_push($sessions, $session);
            }

            return $sessions;
        }catch(PDOException $e){
            return null;
        }
    }

    public function insert_nps($data = []){
        $query_select = $this->db->connect()->prepare('SELECT * FROM nps WHERE email = :email');
        $query_insert = $this->db->connect()->prepare('INSERT INTO `nps` (`email`, `score`, `opinion`) VALUES (:email, :score, :opinion)');
        $query_udtade = $this->db->connect()->prepare('UPDATE `nps` SET `score` = :score, `opinion` = :opinion WHERE `email` = :email');

        try{
            $query_select->execute([':email' => $data[0][0]->email]);

            if($query_select->fetch() === false ){
                $query_insert->execute([':email' => $data[0][0]->email, ':score' => $data[1], ':opinion' => $data[2]]);
                return true;
            }else{
                $query_udtade->execute([':email' => $data[0][0]->email, ':score' => $data[1], ':opinion' => $data[2]]);
                return true;
            }
        }catch(PDOException $e){
            return null;
        }
    }

    public function get_users_session($num = 0, $email){
        $results = [];

        switch($num){
            case 1:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.first_session = (SELECT staff_meeting.id_session FROM staff_meeting WHERE staff_meeting.email = :email)');
                break;
            case 2:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.second_session = (SELECT staff_meeting.id_session FROM staff_meeting WHERE staff_meeting.email = :email)');
                break;
            case 3:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.third_session = (SELECT staff_meeting.id_session FROM staff_meeting WHERE staff_meeting.email = :email)');
                break;
            case 4:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.fourth_session = (SELECT staff_meeting.id_session FROM staff_meeting WHERE staff_meeting.email = :email)');
                break;
        }

        $second_query = $this->db->connect()->prepare('SELECT users.Email, users.Name, users.Last_name FROM users WHERE users.Email = :email_2');

        try{
            $query->execute([':email' => $email[0]->email]);

            while($row = $query->fetch()){
                $email_data = $row['email'];
                $second_query->execute([':email_2' => $email_data]);

                while($row_2 = $second_query->fetch()){
                    $item = new User();

                    $item->email     = $row_2['Email'];
                    $item->name      = $row_2['Name'];
                    $item->last_name = $row_2['Last_name'];

                    array_push($results, $item);
                }
            }

            return $results;

        }catch(PDOException $e){
            return false;
        }
    }

    public function get_users_mentor_session($num = 0, $email){
        $results = array();

        switch($num){
            case 1:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.first_session = (SELECT mentors_meeting.session FROM mentors_meeting WHERE mentors_meeting.email = :email)');
                break;
            case 2:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.second_session = (SELECT mentors_meeting.session FROM mentors_meeting WHERE mentors_meeting.email = :email)');
                break;
            case 3:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.third_session = (SELECT mentors_meeting.session FROM mentors_meeting WHERE mentors_meeting.email = :email)');
                break;
        }

        $second_query = $this->db->connect()->prepare('SELECT users.Name, users.Last_name FROM users WHERE users.Email = :email_2');

        try{
            $query->execute([':email' => $email[0]->email]);

            while($row = $query->fetch()){
                $email_data = $row['email'];
                $second_query->execute([':email_2' => $email_data]);

                while($row_2 = $second_query->fetch()){
                  $item = array(
                      "name"          => $row_2['Name'],
                      "last_name"     => $row_2['Last_name'],

                  );

                    array_push($results, $item);
                }
            }



/*
    public function get_users_mentor_session($num = 0, $email){
        $results = array();

        switch($num){
            case 1:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.first_session = (SELECT mentors_meeting.session FROM mentors_meeting WHERE mentors_meeting.email = :email)');
                break;
            case 2:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.second_session = (SELECT mentors_meeting.session FROM mentors_meeting WHERE mentors_meeting.email = :email)');
                break;
            case 3:
                $query = $this->db->connect()->prepare('SELECT records.email FROM records WHERE records.third_session = (SELECT mentors_meeting.session FROM mentors_meeting WHERE mentors_meeting.email = :email)');
                break;
        }

        $second_query = $this->db->connect()->prepare('SELECT users.Name, users.Last_name, users.company, users.position, users.website, users.billing, users.description, users.q_first, users.q_second, users.q_third FROM users WHERE users.Email = :email_2');

        try{
            $query->execute([':email' => $email[0]->email]);

            while($row = $query->fetch()){
                $email_data = $row['email'];
                $second_query->execute([':email_2' => $email_data]);

                while($row_2 = $second_query->fetch()){
                    $item = array(
                        "name"          => $row_2['Name'],
                        "last_name"     => $row_2['Last_name'],
                        "company"       => $row_2['company'],
                        "position"      => $row_2['position'],
                        "website"       => $row_2['website'],
                        "billing"       => $row_2['billing'],
                        "description"   => $row_2['description'],
                        "q_first"       => $row_2['q_first'],
                        "q_second"      => $row_2['q_second'],
                        "q_third"       => $row_2['q_third'],
                    );

                    array_push($results, $item);
                }
            }
*/

            return $results;

        }catch(PDOException $e){
            return false;
        }
    }
}
