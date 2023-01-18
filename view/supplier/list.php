<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div class="x_title">
            <h2>Danh sách nhà cung cấp (<?= count($list) ?> dòng)</h2>
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
                            <th>Tên nhà cung cấp</th>
                            <th>Số điện thoại</th>
                            <th>Email</th>
                            <th>Địa chỉ</th>
                            <th>Tác vụ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($list as $item) {?>
                        <tr>
                            <th><?= $item->id ?></th>
                            <td><?= $item->name ?></td>
                            <td><?= $item->phone ?></td>
                            <td><?= $item->email ?></td>
                            <td><?= $item->address ?></td>
                            <td>
                                <a name="" id="" class="btn btn-primary btn-sm"
                                    href="<?= href('supplier', 'edit', ['id' => $item->id]) ?>" role="button">Sửa</a>
                                <a onclick="return confirm('Bạn có muốn xóa dòng này không?')" id=""
                                    class="btn btn-danger btn-sm"
                                    href="<?= href('supplier', 'delete', ['id' => $item->id]) ?>" role="button">Xóa</a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>