<?php
class customer extends sql_builder
{
    function __construct()
    {
        parent::__construct();
        $this->table = 'customers';
    }
}
