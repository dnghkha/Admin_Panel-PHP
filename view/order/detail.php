<div class="card">
    <div class="card-body">
        <div class="container mb-5 mt-3">
            <div class="row d-flex align-items-baseline">
                <div class="col-xl-9">
                    <!-- <p style="color: #7e8d9f;font-size: 20px;">Invoice >> <strong>ID: #123-123</strong></p> -->
                </div>
                <div class="row">
                    <div class="col-xl-12 float-right">
                        <a class="btn btn-light text-capitalize border-0" data-mdb-ripple-color="dark"><i class="fas fa-print text-primary"></i> Print</a>
                        <a class="btn btn-light text-capitalize" data-mdb-ripple-color="dark"><i class="far fa-file-pdf text-danger"></i> Export</a>
                    </div>
                </div>
            </div>
            <hr>

            <div class="container">
                <div class="col-md-12">
                    <div class="text-center">
                        <h1 class="text-primary"><strong>Chi tiết đơn hàng</strong></h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xl-12 ml-5 mt-5 mb-5">
                        <ul class="list-unstyled">
                            <li class="text-muted">
                                <h5><strong>Tên khách hàng: </strong><span class="text-capitalize"><?= $detail_customer->firstname . ' ' . $detail_customer->lastname ?></span></h5>
                            </li>
                            <li class="text-muted">
                                <h5><strong>Địa chỉ: </strong><?= $detail_customer->address ?></h5>
                            </li>
                            <li class="text-muted">
                                <h5><strong>Email: </strong><?= $detail_customer->email ?></h5>
                            </li>
                            <li class="text-muted">
                                <h5><strong>Điện thoại: </strong><?= $detail_customer->phone ?></h5>
                            </li>
                            <li class="text-muted">
                                <h5><strong>Ngày đặt hàng: </strong><?= $detail_customer->created_at ?></h5>
                            </li>
                            <li class="text-muted">
                                <form class="form-inline" method="POST">
                                    <div class="form-group">
                                        <label for="">
                                            <h5><strong>Trạng thái: </strong></h5>
                                        </label>
                                        <select class="form-control" name="order_status" id="order_status">
                                            <option value="1"> Mới đặt hàng</option>
                                            <option value="2"> Đã xác nhận</option>
                                            <option value="3"> Đang đóng gói</option>
                                            <option value="4"> Chuyển cho shipper</option>
                                            <option value="5"> Đang giao hàng</option>
                                            <option value="6"> Đã giao hàng</option>
                                            <option value="7"> Giao hàng thất bại</option>
                                            <option value="8"> Hủy đơn</option>
                                        </select>
                                        <button type="submit" class="btn btn-sm btn-primary ml-2">Cập nhật</button>
                                    </div>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="row my-2 mx-1 justify-content-center">
                    <table class="table table-striped table-borderless">
                        <thead style="background-color:#84B0CA ;" class="text-white">
                            <tr>
                                <th scope="col">
                                    <h5>#</h5>
                                </th>
                                <th scope="col">
                                    <h5>Sản phẩm</h5>
                                </th>
                                <th scope="col">
                                    <h5>Số lượng</h5>
                                </th>
                                <th scope="col">
                                    <h5>Đơn giá</h5>
                                </th>
                                <th scope="col">
                                    <h5>Thành tiền</h5>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 0;
                            $total = 0;
                            foreach ($detail_order as $item) {
                                $total = $total + ($item->qty * $item->price) ?>
                                <tr>
                                    <th>
                                        <h5><?= $i = $i + 1 ?></h5>
                                    </th>
                                    <td>
                                        <h5><?= $item->name ?></h5>
                                    </td>
                                    <td>
                                        <h5><?= $item->qty ?></h5>
                                    </td>
                                    <td>
                                        <h5><?= $item->price ?></h5>
                                    </td>
                                    <td>
                                        <h5><?= $item->qty * $item->price ?></h5>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <div class="row mt-5">
                    <div class="col-xl-10">
                        <!-- <h5>Add additional notes and payment information</h5> -->
                    </div>
                    <div class="col-xl-2">
                        <ul class="list-unstyled">
                            <li class="text-muted ms-3">
                                <h5><strong>Thành tiền: </strong><?= $total ?></h5>
                            </li>
                            <li class="text-muted ms-3 mt-2">
                                <h5><strong>Thuế(8%): </strong><?= ceil($tax = $total * 0.08) ?></h5>
                            </li>
                            <li class="text-muted ms-3 mt-2">
                                <h5><strong>Tổng cộng: </strong><?= ceil($total + $tax) ?></h5>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<!-- 123 -->

<script>
    function myFunction() {}
    document.getElementById("order_status").selectedIndex = "<?= $detail_customer->order_status - 1 ?? '' ?>";
</script>