<?php

class App{
    function __construct(){
        $url = isset($_GET['url']) ? $_GET['url'] : null;
        $url = rtrim($url, '/');
        $url = explode('/', $url);

        $archivocontroller = 'controllers/'.$url[0].'.php';

        if(empty($url[0])){
            $archivocontroller = 'controllers/home.php';

            require_once $archivocontroller;

            $controller = new Home();
            $controller->loadModel('home');
            $controller->render();

            return false;
        }else{
            if($url[0] === 'phpMyAdmin'){
                header("location: ".constant('URL')."phpMyAdmin");
            }else{
                if(file_exists($archivocontroller)){
                    require_once $archivocontroller;
    
                    $controller = new $url[0];
                    $controller->loadModel($url[0]);
    
                    $nparam = count($url);
    
                    if($nparam > 1){
                        if($nparam > 2){
                            $params = [];
                            for($i = 2; $i < $nparam; $i++){
                                array_push($params, $url[$i]);
                            }
                            $controller->{$url[1]}($params);
                        }else{
                            $controller->{$url[1]}();
                        }
                    }else{
                        $controller->render();
                    }                                
                }else{
                    require_once 'controllers/error.php';
                    $controller = new Errors();
                    $controller->render();
                }
            }
        }
    }
}