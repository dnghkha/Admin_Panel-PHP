<?php
class category extends sql_builder
{
    function __construct()
    {
        parent::__construct();
        $this->table = 'categories';
    }

}
