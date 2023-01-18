<?php
class supplier extends sql_builder
{
    function __construct()
    {
        parent::__construct();
        $this->table = 'suppliers';
    }
}
