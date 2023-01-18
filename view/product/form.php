<div class="row">
    <div class="col-md-12 ">
        <div class="x_panel">
            <div class="x_title">
                <h2><?= formname('Sửa sản phẩm', 'Thêm sản phẩm') ?></h2>
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
                <form class="form-horizontal form-label-left" method="post" action="<?= href('product', (isset($_GET['id'])) ? 'update' : 'store') ?>">
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Tên sản phẩm</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="name" class="form-control" value="<?= $product->name ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <label class="control-label col-md-3 col-sm-3 ">Mã sản phẩm</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="name" class="form-control" value="<?= $product->sku ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 ">Giá sản phẩm</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="price" class="form-control" value="<?= $product->price ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 ">Số lượng</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="qty" class="form-control" value="<?= $product->qty ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 ">Nhà cung cấp</label>
                        <div class="col-md-9 col-sm-9 ">
                            <select class="form-control" name="supplier_id" id="supplier">
                                <?php $i = 0;
                                foreach ($supplier as $item) { ?>
                                    <option <?= (isset($product))?(($product->supplier_id == $item->id)?'selected':''):'' ?> value="<?= $i = $i + 1 ?> "><?= $item->name ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 ">Danh mục sản phẩm</label>
                        <div class="col-md-9 col-sm-9 ">
                            <select class="form-control" name="category_id" id="category">
                                <?php $i = 0;
                                foreach ($category as $item) { ?>
                                    <option <?= (isset($product))?(($product->category_id == $item->id)?'selected':''):'' ?> value="<?= $i = $i + 1 ?>"><?= $item->name ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 ">Content</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="content" class="form-control" value="<?= $product->content ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 ">Summary</label>
                        <div class="col-md-9 col-sm-9 ">
                            <input type="text" name="summary" class="form-control" value="<?= $product->summary ?? '' ?>" placeholder="">
                        </div>
                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-9 col-sm-9  offset-md-3">
                            <a href="?controller=product&action=index" type="button" class="btn btn-primary">Quay về</a>
                            <button type="reset" class="btn btn-primary">Reset</button>
                            <button type="submit" class="btn btn-success">Ghi</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
