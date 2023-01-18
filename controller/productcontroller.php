<?php
class productcontroller extends controller
{
    function index()
    {
        $model = new product();
        $data = $model->_list();
        $page = ($_GET['page'] - 1) * 10;
        $list = $model->_list([], $page);
        $this->render('product/list.php', ['data' => $data, 'list' => $list]);
    }
    function create()
    {
        $supplier = new supplier();
        $supplier = $supplier->_list();
        $category = new category();
        $category = $category->_list();
        $this->render('product/form.php', ['supplier' => $supplier, 'category' => $category]);
    }
    function store()
    {
        $product = new product();
        $product->insert($_POST);
        header('location:' . href('product', 'index'));
    }
    function edit()
    {
        $product = new product();
        $product = $product->_item($_GET['id']);
        $supplier = new supplier();
        $supplier = $supplier->_list();
        $category = new category();
        $category = $category->_list();
        $this->render('product/form.php', ['product' => $product, 'supplier' => $supplier, 'category' => $category]);
        seterror(['id' => $_GET['id']]);
    }
    function update()
    {
        $product = new product();
        $product->update($_POST, ['id' => geterror('id')]);
        header('location:' . href('product', 'index'));
    }
    function delete()
    {
        $product = new product();
        $product->delete($_GET['id']);
        header('location:' . href('product', 'index'));
    }
}
