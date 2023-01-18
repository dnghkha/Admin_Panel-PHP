<div class="row">
    <div class="col-md-12 ">
        <div class="x_panel">
            <div class="x_title">
                <h2>Cập nhật thông tin người dùng</h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                        </div>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br>
                <form class="form-horizontal form-label-left" method="post" action="<?= href('customer', 'update') ?>">
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Họ:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="lastname" class="form-control" value="<?= $customer->lastname ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Tên:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="firstname" class="form-control" value="<?= $customer->firstname ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Địa chỉ:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="address" class="form-control" value="<?= $customer->address ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Email:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="email" class="form-control" value="<?= $customer->email ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Số điện thoại:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="phone" class="form-control" value="<?= $customer->phone ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-9 col-sm-9  offset-md-3">
                            <a href="<?= href('customer','index')?>" class="btn btn-primary">Quay về</a>
                            <button type="reset" class="btn btn-primary">Reset</button>
                            <button type="submit" class="btn btn-success">Ghi</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>