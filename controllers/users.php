<?php

session_start();

class Users extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function render()
    {
        $this->get_data();
        $this->view->render('view_users');
    }

    function get_data()
    {
        $defaults = array(
            CURLOPT_URL => 'https://connect.eventtia.com/api/v3/auth',
            CURLOPT_POST => 1,
            CURLOPT_HTTPHEADER => ['Content-Type: application/json'],
            CURLOPT_POSTFIELDS => '{"email":"proyectos@endeavor.org.co", "password":"Endeavor.2018"}',
            CURLOPT_RETURNTRANSFER => 1
        );

        $ch = curl_init();
        curl_setopt_array($ch, $defaults);
        $remote_server_output = curl_exec($ch);
        curl_close($ch);

        $remote_server_output = json_decode($remote_server_output);

        $defaults_2 = array(
            CURLOPT_URL => 'https://connect.eventtia.com/api/v3/events/mentorsdaylive2sept/attendees?page[number]=1',
            CURLOPT_HTTPHEADER => ['Authorization: Bearer ' . $remote_server_output->auth_token],
            CURLOPT_RETURNTRANSFER => 1
        );

        $ch_2 = curl_init();
        curl_setopt_array($ch_2, $defaults_2);
        $remote_server_output_2 = curl_exec($ch_2);
        curl_close($ch_2);

        $remote_server_output_2 = json_decode($remote_server_output_2);
        $pages = $remote_server_output_2->meta->total_pages;
        $data = $remote_server_output_2->data;

        $attendees = [];

        foreach ($data as $attendee) {
            if ($attendee->attributes->paid) {
                $attendee_meta = (array) $attendee->attributes->fields;

                $attendee_data = array(
                    "name"              => $attendee_meta[696348],
                    "last_name"         => $attendee_meta[696349],
                    "email"             => $attendee_meta[696352],
                    "id"                => $attendee_meta[696350],
                    "company"           => $attendee_meta[696355],
                    "position"          => $attendee_meta[696356],
                    "website"           => $attendee_meta[696376],
                    "billing"           => $attendee_meta[696377],
                    "comp_description"  => $attendee_meta[696375],
                    "q_first"           => $attendee_meta[696418],
                    "q_second"          => $attendee_meta[696430],
                    "q_third"           => $attendee_meta[696431],
                    "first_session"     => $attendee_meta[696404],
                    "second_session"    => $attendee_meta[696405],
                    "third_session"     => $attendee_meta[696406]
                );

                array_push($attendees, $attendee_data);
            }
        }

        for ($i = 0; $i < ($pages - 1); $i++) {
            $url = 'https://connect.eventtia.com/api/v3/events/mentorsdaylive2sept/attendees?page[number]=' . ($i + 2);

            $defaults_2 = array(
                CURLOPT_URL => $url,
                CURLOPT_HTTPHEADER => ['Authorization: Bearer ' . $remote_server_output->auth_token],
                CURLOPT_RETURNTRANSFER => 1
            );

            $ch_2 = curl_init();
            curl_setopt_array($ch_2, $defaults_2);
            $remote_server_output_2 = curl_exec($ch_2);
            curl_close($ch_2);

            $remote_server_output_2 = json_decode($remote_server_output_2);
            $data = $remote_server_output_2->data;

            foreach ($data as $attendee) {
                if ($attendee->attributes->paid) {
                    $attendee_meta = (array) $attendee->attributes->fields;

                    $attendee_data = array(
                        "name"              => $attendee_meta[696348],
                        "last_name"         => $attendee_meta[696349],
                        "email"             => $attendee_meta[696352],
                        "id"                => $attendee_meta[696350],
                        "company"           => $attendee_meta[696355],
                        "position"          => $attendee_meta[696356],
                        "website"           => $attendee_meta[696376],
                        "billing"           => $attendee_meta[696377],
                        "comp_description"  => $attendee_meta[696375],
                        "q_first"           => $attendee_meta[696418],
                        "q_second"          => $attendee_meta[696430],
                        "q_third"           => $attendee_meta[696431],
                        "first_session"     => $attendee_meta[696404],
                        "second_session"    => $attendee_meta[696405],
                        "third_session"     => $attendee_meta[696406]
                    );

                    array_push($attendees, $attendee_data);
                }
            }
        }

        var_dump($attendees);
        $this->model->insert_update_attendee($attendees);
    }
}
