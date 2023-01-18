<?php
class usercontroller extends controller
{
    // function index()
    // {
    //     $model = new user();
    //     $list = $model->_list();
    //     $view = 'user/list.php';
    //     include 'view/master.php';
    // }
    function index()
    {
        $model = new user();
        $list = $model->_list();
        $this->render('user/list.php', ['list' => $list]);
    }
    function detail()
    {
        $view = 'view/chitiet.php';
        include 'view/master.php';
    }
    function create()
    {
        $this->render('user/form.php');
    }
    function store()
    {
        // view_array($_POST);
        $user = new user();
        $user->insert($_POST);
        header('location:' . href('user', 'index'));
    }
    function edit()
    {
        $user = new user();
        $user = $user->_item($_GET['id']);
        $this->render('user/form.php',['user'=>$user]);
        seterror(['id' => $_GET['id']]);
    }
    function update()
    {
        $user = new user();
        $user->update($_POST, ['id' => geterror('id')]);
        header('location:' . href('user', 'index'));
    }
    function delete()
    {
        $user = new user();
        $user->delete($_GET['id']);
        header('location:' . href('user', 'index'));
    }
    function login()
    {
        $this->render('user/login.php', ['msg' => geterror('msg')], 'empty');
    }
    function loginpost()
    {
        //xu ly luon cung dc
        $msg = '';
        if (post('username') && post('password')) {
            $db = new user();
            $user = $db->login(post('username'), post('password'));
            $db->disconnect();
            if ($user) {
                if ($user->status == 1) {
                    $_SESSION['login_status'] = true;
                    $_SESSION['login_avt'] = $user->image;
                    $_SESSION['login_id'] = $user->id;
                    $_SESSION['login_name'] = $user->Firstname;
                    redirect(BASE);
                } else {
                    seterror(['msg' => msg('Tài khoản bị khóa')]);
                    redirect(href('user', 'login'));
                }
            } else {
                seterror(['msg' => msg('Thông tin đăng nhập không đúng')]);
                redirect(href('user', 'login'));
            }
        }
    }
    function logout()
    {
        session_destroy();
        redirect(href('user', 'login'));
    }
}
