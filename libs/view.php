<?php

class View{
    function __construct(){        
    }

    function render($name){
        require 'views/'.$name.'.php';
    }
}