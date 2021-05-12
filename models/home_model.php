<?php

include_once 'models/user.php';

class homeModel extends Model{
    public function __construct(){
        parent::__construct();
    }

    public function consult($email){
        $items = [];
        $query = $this->db->connect()->prepare('SELECT * FROM users WHERE Email = :email');
    
        try{
            $query->execute([':email' => $email]);
    
            while($row = $query->fetch()){
                var_dump($row);
                $item = new User();
    
                $item->name      = $row['Name'];
                $item->last_name = $row['Last_name'];
                $item->id        = $row['id'];
                $item->email     = $row['Email'];
                $item->type      = $row['Tipo'];
    
                array_push($items, $item);
            }
            
            return $items;

        }catch(PDOException $e){
            return null;
        }
        
    }
}