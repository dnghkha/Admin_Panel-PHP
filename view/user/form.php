<div class="row">
    <div class="col-md-12 ">
        <div class="x_panel">
            <div class="x_title">
                <h2><?= formname('Sửa người dùng', 'Thêm người dùng') ?></h2>
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
                <form class="form-horizontal form-label-left" method="post" action="<?= href('user', (isset($_GET['id'])) ? 'update' : 'store') ?>">
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Họ:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="lastname" value="<?= $user->Lastname ?? '' ?>" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Tên:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="firstname" value="<?= $user->Firstname ?? '' ?>" class="form-control" placeholder="">
                        </div>
                    </div>
                    <!-- <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 ">Giới tính:</label>
                        <div class="col-md-9 col-sm-9">
                            <div id="gender" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="gender" value="1" class="join-btn" data-parsley-multiple="gender"> &nbsp; Nam &nbsp;
                                </label>
                                <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="gender" value="2" class="join-btn" data-parsley-multiple="gender"> &nbsp; &nbsp; Nữ &nbsp; &nbsp;
                                </label>
                            </div>
                        </div>
                    </div> -->
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Giới tính:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <div class="form-check">
                                <label class="form-check-label mr-5">
                                    <input type="radio" class="form-check-input" name="gender" id="<?= isset($user) ? (($user->Gender == 1) ? 'gender1' : '') : '' ?>" value="1">
                                    Nam
                                </label>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" id="<?= isset($user) ? (($user->Gender == 0) ? 'gender0' : '') : '' ?>" value="0">
                                    Nữ
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3">Ngày sinh: <span class="required"></span>
                        </label>
                        <div class="col-md-9 col-sm-9 ">
                            <input id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" required="required" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)">
                            <script>
                                function timeFunctionLong(input) {
                                    setTimeout(function() {
                                        input.type = 'text';
                                    }, 60000);
                                }
                            </script>
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Tên đăng nhập:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="username" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 ">Mật khẩu:</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="password" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-9 col-sm-9  offset-md-3">
                            <a href="<?= href('user', 'index') ?>" class="btn btn-primary">Quay về</a>
                            <button type="reset" class="btn btn-primary">Reset</button>
                            <button type="submit" class="btn btn-success">Ghi</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

<!-- 123 -->
<script>
    function myFunction() {}
    document.getElementById("gender<?= $user->Gender ?>").checked = true;
</script>