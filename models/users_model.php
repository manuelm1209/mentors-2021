<?php

include_once 'models/sessions.php';

class usersModel extends Model
{
    function __construct()
    {
        parent::__construct();
    }

    function insert_update_attendee($data)
    {
        $query = $this->db->connect()->prepare('SELECT `Email` FROM `users` WHERE `Email` = :email');

        foreach ($data as $attendee) {
            try {
                $query->execute([':email' => $attendee["email"]]);
                if (!$query->fetch()) {
                    $this->insert_attendee($attendee);
                } else {
                    $this->update_attendee($attendee);
                }
            } catch (PDOException $e) {
                return false;
            }
        }
    }

    function insert_attendee($data)
    {
        $query = $this->db->connect()->prepare(
            'INSERT INTO `users` (
                `Name`, 
                `Last_name`, 
                `id`, 
                `Email`, 
                `Tipo`,
                `company`,
                `position`,
                `website`,
                `billing`,
                `description`,
                `q_first`,
                `q_second`,
                `q_third`
            ) VALUES (
                :name, 
                :last_name, 
                :id, 
                :email,
                :type,
                :company,
                :position,
                :website,
                :billing,
                :comp_description,
                :q_first,
                :q_second,
                :q_third
            )'
        );

        $query_2 = $this->db->connect()->prepare(
            'INSERT INTO `records` (
                `email`,
                `first_session`,
                `second_session`,
                `third_session`
            ) VALUES (
                :email_2,
                :first_session,
                :second_session,
                :third_session
            )'
        );

        try {
            $first_session = $this->get_id_sessions($data["first_session"]) + 1;
            $second_session = $this->get_id_sessions($data["second_session"]) + 1;
            $third_session = $this->get_id_sessions($data["third_session"]) + 1;

            $query->execute([
                ':name'             => $data['name'],
                ':last_name'        => $data['last_name'],
                ':id'               => $data['id'],
                ':email'            => $data['email'],
                ':type'             => 3,
                ':company'          => $data['company'],
                ':position'         => $data['position'],
                ':website'          => $data['website'],
                ':billing'          => $data['billing'],
                ':comp_description' => $data['comp_description'],
                ':q_first'          => $data['q_first'],
                ':q_second'         => $data['q_second'],
                ':q_third'          => $data['q_third']
            ]);

            $query_2->execute([
                ':email_2'            => $data['email'],
                ':first_session'    => $first_session,
                ':second_session'   => $second_session,
                ':third_session'    => $third_session
            ]);

            return true;
        } catch (PDOException $e) {
            echo $e;
            return false;
        }
    }

    function update_attendee($data)
    {
        $query = $this->db->connect()->prepare('
            UPDATE `users` SET 
                `Name`= :name, 
                `Last_name`= :last_name, 
                `id`= :id, 
                `Email`= :email, 
                `Tipo`= :type,
                `company` = :company,
                `position` = :position,
                `website` = :website,
                `billing` = :billing,
                `description` = :comp_description,
                `q_first` = :q_first,
                `q_second` = :q_second,
                `q_third` = :q_third
            WHERE `Email`= :email_2');

        $query_2 = $this->db->connect()->prepare('UPDATE `records` SET `email`= :email, `first_session`= :first_session, `second_session`= :second_session, `third_session`= :third_session WHERE `Email`= :email_2');

        try {
            $first_session = $this->get_id_sessions($data["first_session"]) + 1;
            $second_session = $this->get_id_sessions($data["second_session"]) + 1;
            $third_session = $this->get_id_sessions($data["third_session"]) + 1;

            if ($data["email"] == "fermor91@hotmail.com") {
                var_dump($this->get_id_sessions($data["first_session"], $data));
            }

            $query->execute([
                ':name'             => $data['name'],
                ':last_name'        => $data['last_name'],
                ':id'               => $data['id'],
                ':email'            => $data['email'],
                ':type'             => 3,
                ':company'          => $data['company'],
                ':position'         => $data['position'],
                ':website'          => $data['website'],
                ':billing'          => $data['billing'],
                ':comp_description' => $data['comp_description'],
                ':q_first'          => $data['q_first'],
                ':q_second'         => $data['q_second'],
                ':q_third'          => $data['q_third'],
                ':email_2'          => $data["email"]
            ]);

            $query_2->execute([
                ':email'            => $data['email'],
                ':first_session'    => $first_session,
                ':second_session'   => $second_session,
                ':third_session'    => $third_session,
                ':email_2'          => $data['email']
            ]);

            return true;
        } catch (PDOException $e) {
            echo $e;
            return false;
        }
    }

    function get_id_sessions($data = null, $attendee = null)
    {
        $sessions = array();

        $query = $this->db->connect()->prepare(
            'SELECT id, area, name FROM sessions'
        );

        try {
            $query->execute();

            while ($row = $query->fetch()) {
                $session = new Sessions();

                $session->id        = $row['id'];
                $session->area      = $row['area'];
                $session->name      = $row['name'];

                array_push($sessions, $session);
            }

            foreach ($sessions as $key => $val) {
                if ($val->id === (int) ($data[0] . $data[1]))
                    return $key;
            }
        } catch (PDOException $e) {
            return false;
        }
    }
}
