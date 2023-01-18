<?php

/**
 * Hàm upload viết lại để xu lý file up lên: kiem soat đc các yêu cau sau: tên file luu trư, noi luu , loai file, kich thuoc
 * Ten ham: myupload
 * tham so: file(gồm 5 pt của 1 tâp tin khi upload lên)
 *          folder: nơi lưu 
 *          types: danh sách đuôi file được phép upload => kiểu máng
 *          maxsize: dung lượng tối đa đc phép upload => tự quy định đơn vị => ở đây mình đang quy định so sánh theo MB
 *          name: tên dùng để luu tru tren sv, tự ql riêng  
 */
function myupload($file, $folder, &$msg = '', $types = ['.jpg', '.png', '.gif', '.jpeg', '.ico', '.svg'], $maxsize = 2, $name = 'file_')
{
    /* $file = 
     *Array
        (
            [name] => desktop2.png
            [type] => image/png
            [tmp_name] => C:\wamp64\tmp\phpC7F8.tmp
            [error] => 0
            [size] => 956532
        )
     */
    //kiem tra tinh hop le cua file up len server
    if (isset($file['error'], $file['tmp_name']) && $file['error'] == 0  && $file['tmp_name']) {
        //kiem tra kich thuoc
        $bsize = $maxsize * 1024 * 1024;
        if ($file['size'] > 0 && $file['size'] <= $bsize) {
            //kiem tra loai file
            //lay duoi file
            $ext = strtolower(substr($file['name'], strrpos($file['name'], '.')));
            if (in_array($ext, $types)) {
                //ok het roi chuyen ve file goc
                $fullpath = $folder . '/' . $name . time() . $ext;
                //up
                if (move_uploaded_file($file['tmp_name'], $fullpath)) {
                    return $fullpath;
                } else {
                    $msg = 'Upload không thành công';
                    return false;
                }
            } else {
                $msg = 'Chỉ cho phép các định dạng sau: ' . implode(',', $types);
                return false;
            }
        } else {
            $msg = 'Dung lượng tối đa cho phép: ' . $maxsize . 'MB';
            return false;
        }
    } else {
        $msg = 'File không hợp lệ';
        return false;
    }
}
function view_array($a)
{
    echo '<pre>', print_r($a), '</pre>';
    exit;
}
function redirect($url)
{
    header('location: ' . $url);
    exit;
}
function is_login()
{
    return isset($_SESSION['login_status']) &&  $_SESSION['login_status'];
}
function msg($content, $type = 'danger')
{
    return  '<div class="alert alert-' . $type . ' alert-dismissible fade show" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    <strong> ' . $content . '</strong> 
  </div>
  
  <script>
    $(".alert").alert();
  </script>';
}
function href($controller = 'system', $action = 'index', $params = [])
{
    $ex = '';
    foreach ($params as $k => $v) {
        $ex .= "&$k=$v";
    }
    return BASE . '?controller=' . $controller . '&action=' . $action . $ex . '&page=1';
}
function post($name)
{
    return trim($_POST[$name] ?? null);
}
function seterror($values = [])
{
    foreach ($values as $key => $value) {
        $_SESSION['error'][$key] = $value;
    }
}
function geterror($key = '')
{
    $msg = $_SESSION['error'][$key] ?? '';
    unset($_SESSION['error'][$key]);
    return $msg;
}

function formname($name1, $name2)
{
    echo isset($_GET['id']) ? $name1 : $name2;
}
