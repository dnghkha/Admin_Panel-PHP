<?php
class user extends sql_builder
{
    function __construct()
    {
        parent::__construct();
        $this->table = 'users';
    }
    function login($u, $p)
    {
        $sql = 'select * from users where username = ? and password = ?';
        return $this->setquery($sql)->loadrow([$u, $p]);
    }
}
