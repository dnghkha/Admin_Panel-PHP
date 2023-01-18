<?php
class ordercontroller extends controller
{
    function index()
    {
        $model = new order();
        $list = $model->__list();
        $this->render('order/list.php', ['list' => $list]);
    }

    function detail()
    {
        $model = new order();
        $detail_customer = $model->detail_customer($_GET['id']);
        $detail_order = $model->detail_order([$_GET['id']]);
        $this->render('order/detail.php', ['detail_customer' => $detail_customer, 'detail_order' => $detail_order]);
        $order_status = new order();
        $order_status->update($_POST, ['id' => $_GET['id']]);
        header("Refresh:0");
    }
}
