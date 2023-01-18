<?php
class categorycontroller extends controller
{
    function index()
    {
        $model = new category();
        $list = $model->_list();
        $this->render('category/list.php', ['list' => $list]);
    }
    function create()
    {
        $this->render('category/form.php');
    }
    function store()
    {
        $category = new category();
        $category->insert($_POST);
        header('location:' . href('category', 'index'));
    }
    function edit()
    {
        $this->render('category/form.php');
        seterror(['id' => $_GET['id']]);
    }
    function update()
    {
        $category = new category();
        $category->update($_POST, ['id' => geterror('id')]);
        header('location:' . href('category', 'index'));
    }
    function delete()
    {
        $category = new category();
        $category->delete($_GET['id']);
        header('location:' . href('category', 'index'));
    }
}
