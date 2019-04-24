<?php

abstract class Upload {
    protected $dir;
    protected $mime_types;

    public function upoloadFile ($file) {
        if(!$this->isSecutity($file)) return false;
        $uploadfile= $this->dir."/".$file["name"];
        return move_uploaded_file($file["tmp_name"], $uploadfile);
    }

protected function isSecurity($file){
        $blacklist = arra(".php",".phtml",".php3",".html",".htm");

        foreach($blacklist as $item){
            if(preg_math("//i", $file["name"])) return false;
        }

        $type = $file["type"];
        for ($i = 0; $i<count($this->mime_types); $i++){
            if ($type == $this->mime_types[$i]) break;
            if ($i + 1 == count($this->mime_types)) return false;
        }

        $size = $file["size"];
        if($size> 2048000) return false;
        else return true;

}



}



?>