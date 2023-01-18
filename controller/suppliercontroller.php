<?php
class suppliercontroller extends controller
{
    function index()
    {
        $model = new supplier();
        $list = $model->_list();
        $this->render('supplier/list.php', ['list' => $list]);
    }
    function create()
    {
        $this->render('supplier/form.php');
    }
    function store()
    {
        $supplier = new supplier();
        $supplier->insert($_POST);
        header('location:'.href('supplier','index'));
    }
    function edit()
    {
        $supplier = new supplier();
        $supplier = $supplier->_item($_GET['id']);
        $this->render('supplier/form.php', ['supplier' => $supplier]);
        seterror(['id' => $_GET['id']]);
    }
    function update()
    {
        $supplier = new supplier();
        $supplier->update($_POST,['id'=>geterror('id')]);
        header('location:'.href('supplier','index'));
    }
    function delete()
    {
        $supplier = new supplier();
        $supplier->delete($_GET['id']);
        header('location:'.href('supplier','index'));
    }

}
