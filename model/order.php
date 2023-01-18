<?php
class order extends sql_builder
{
    function __construct()
    {
        parent::__construct();
        $this->table = 'orders';
    }
    function __list()
    {
        $sql = "SELECT orders.id, orders.code, orders.order_date, customers.firstname, customers.lastname, orders.total_amount, orders.status, orders.order_status, orders.notes, orders.payment_method, orders.coupon
        FROM orders INNER JOIN customers ON orders.customer_id = customers.id";
        return $this->setquery($sql)->loadrows();
    }

    function detail_customer($id)
    {
        $sql = 'SELECT customers.firstname, customers.lastname, customers.address, customers.email, customers.phone, orders.created_at, orders.order_status
        FROM orders INNER JOIN customers on orders.customer_id = customers.id
        WHERE orders.id = ?';
        return $this->setquery($sql)->loadrow([$id]);
    }

    function detail_order(array $params)
    {

        $sql = 'SELECT customers.firstname, customers.lastname, customers.address, customers.email, customers.phone, orders.created_at, orders.status, products.name, order_detail.qty, order_detail.price
        FROM orders INNER JOIN order_detail ON orders.id = order_detail.order_id INNER JOIN products ON order_detail.product_id = products.id INNER JOIN customers on orders.customer_id = customers.id
        WHERE orders.id = ?';
        return $this->setquery($sql)->loadrows($params);
    }
}
