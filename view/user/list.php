<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Danh sách quản trị (<?= count($list) ?> dòng)</h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
                            <th>Tên đăng nhập</th>
                            <th>Tên</th>
                            <th>Trạng thái</th>
                            <th>Tác vụ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($list as $item) {
                        ?>
                        <tr>
                            <th scope="row"><?= $item->id ?></th>
                            <td><?= $item->username ?></td>
                            <td><?= $item->Firstname ?></td>
                            <td><?= $item->status == 1 ? '<span class="badge badge-success">Hoạt động</span>' : '<span class="badge badge-dark">Khóa</span>' ?>
                            </td>
                            <td>
                                <a name="" id="" class="btn btn-primary btn-sm"
                                    href="<?= href('user', 'edit', ['id' => $item->id]) ?>" role="button">Sửa</a>
                                <a onclick="return confirm('Bạn có muốn xóa dòng này không?')" id=""
                                    class="btn btn-danger btn-sm"
                                    href="<?= href('user', 'delete', ['id' => $item->id]) ?>" role="button">Xóa</a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>