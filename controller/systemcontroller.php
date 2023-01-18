<?php
class systemcontroller
{
    function index()
    {
        $view = 'trangchu.php';
        include 'view/master.php';
    }
    function contact()
    {
        include 'view/lienhe.php';
    }
    function _404()
    {
        include 'view/404.php';
    }
}
