<?php

include_once 'models/user.php';

class Services extends Model {
    public function __construct(){
        parent::__construct();
    }
    
    public function getUser($data){
        $items = [];
        $query = $this->db->connect()->prepare('SELECT * FROM users WHERE Email = :email');
    
        try{
            $query->execute([':email' => $data]);
    
            while($row = $query->fetch()){
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
//            return null;
	echo $e;
        }
    }
}
