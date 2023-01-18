<?php
class customercontroller extends controller
{
    function index()
    {
        $model = new customer();
        $list = $model->_list();
        $this->render('customer/list.php', ['list' => $list]);
    }
    function edit()
    {
        $customer = new customer();
        $customer = $customer->_item($_GET['id']);
        $this->render('customer/form.php', ['customer' => $customer]);
        seterror(['id' => $_GET['id']]);
    }
    function update()
    {
        $customer = new customer();
        $customer->update($_POST, ['id' => geterror('id')]);
        header('location:' . href('customer', 'index'));
    }
}
