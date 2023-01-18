<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Danh sách đơn hàng (<?= count($list) ?> dòng)</h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="?controller=product&action=create">Thêm mới</a>
                        </div>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Mã đơn hàng</th>
                            <th>Ngày đặt hàng</th>
                            <th>Họ</th>
                            <th>Tên</th>
                            <th>Tổng tiền</th>
                            <th>Trạng thái</th>
                            <th>Ghi chú</th>
                            <th>Phương thức thanh toán</th>
                            <th>Giảm giá</th>
                            <th>Tác vụ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($list as $item) { ?>
                            <tr>
                                <th><?= $item->id ?></th>
                                <td><?= $item->code ?></td>
                                <td><?= $item->order_date ?></td>
                                <td><?= $item->lastname ?></td>
                                <td><?= $item->firstname ?></td>
                                <td><?= $item->total_amount ?></td>
                                <td>
                                    <?php switch ($item->order_status) {
                                        case 1: {
                                                echo 'Mới đặt hàng';
                                                break;
                                            }
                                        case 2: {
                                                echo 'Đã xác nhận';
                                                break;
                                            }
                                        case 3: {
                                                echo 'Đang đóng gói';
                                                break;
                                            }
                                        case 4: {
                                                echo 'Chuyển cho shipper';
                                                break;
                                            }
                                        case 5: {
                                                echo 'Đang giao';
                                                break;
                                            }
                                        case 6: {
                                                echo 'Đã giao';
                                                break;
                                            }
                                        case 7: {
                                                echo 'Giao thất bại';
                                                break;
                                            }
                                        case 8: {
                                                echo 'Hủy đơn';
                                                break;
                                            }
                                    } ?>

                                </td>
                                <td><?= $item->notes ?></td>
                                <td><?= $item->payment_method ?></td>
                                <td><?= $item->coupon ?></td>
                                <td><a name="" id="" class="btn btn-primary btn-sm" href="<?= href('order', 'detail', ['id' => $item->id]) ?>">Chi tiết</a></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <div style="clear: both;">
                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a class="page-link" href="?controller=product&action=index&page=<?= (($_GET['page'] - 1) < 1) ? 1 : ($_GET['page'] - 1) ?>" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <?php
                            $allpage = ceil(count($data) / 10);
                            for ($i = 1; $i <= $allpage; $i++) { ?>
                                <li class="page-item"><a class="page-link" href="?controller=product&action=index&page=<?= $i ?>"><?= $i ?></a></li>
                            <?php } ?>
                            <li class="page-item">
                                <a class="page-link" href="?controller=product&action=index&page=<?= (($_GET['page'] + 1) > 4) ? 4 : ($_GET['page'] + 1) ?>" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>