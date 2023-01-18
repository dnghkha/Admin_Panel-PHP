<?php
class product extends sql_builder
{
    function __construct()
    {
        parent::__construct();
        $this->table = 'products';
    }
}
