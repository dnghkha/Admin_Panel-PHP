<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Danh sách sản phẩm (<?= count($list) ?> dòng)</h2>
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
                            <th>Tên sản phẩm</th>
                            <th>Giá sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Tác vụ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($list as $item) { ?>
                            <tr>
                                <th><?= $item->id ?></th>
                                <td><?= $item->name ?></td>
                                <td><?= $item->price ?></td>
                                <td><?= $item->qty ?></td>
                                <td>
                                    <a name="" id="" class="btn btn-primary btn-sm" href="<?= href('product', 'edit', ['id' => $item->id]) ?>" role="button">Sửa</a>
                                    <a onclick="return confirm('Bạn có muốn xóa dòng này không?')" id="" class="btn btn-danger btn-sm" href="<?= href('product', 'delete', ['id' => $item->id]) ?>" role="button">Xóa</a>
                                </td>
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