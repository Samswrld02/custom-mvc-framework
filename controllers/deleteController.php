<?php

include_once "homeController.php";
require_once "./Models/baseModel.php";
require_once "./Models/seriesModel.php";
require_once "./Models/moviesModel.php";
require_once "./authentication/login.controller.php";

class DeleteController extends HomeController {


    public function delete($resource, $id) {

        //call delete from model
        $class = $this->turnToClass($resource);
        $model = new $class($this->conn);

        $result = $model->delete($id);
        if ($result) {
            header("Location: " . URLROOT . "/" . "/home");
        }
    }

}
