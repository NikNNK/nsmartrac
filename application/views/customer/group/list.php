<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php include viewPath('includes/header'); ?>
<!-- page wrapper start -->
<div class="wrapper" role="wrapper">
    <?php include viewPath('includes/notifications'); ?>
    <?php include viewPath('includes/sidebars/customer'); ?>
    <div wrapper__section>
        <div class="container-fluid">
            <div class="card card_holder">
                <div class="page-title-box">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <h1 class="page-title">Customer Groups</h1>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item active">Listing all customer groups.</li>
                            </ol>
                        </div>
                        <div class="col-sm-6">
                            <div class="float-right d-none d-md-block">
                                <div class="dropdown">
                                    <a href="<?php echo url('customer/group_add') ?>" class="btn btn-primary">
                                        <i class="fa fa-plus"></i> Add Group
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->
                <section class="content">
                    <!-- Default box -->
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">List of Groups</h3>
                        </div>
                        <div class="box-body">
                            <table id="dataTable1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Date</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if (!empty($customerGroups)) { ?>
                                    <?php foreach ($customerGroups as $customerGroup): ?>
                                        <tr>
                                            <td>
                                                <?php echo $customerGroup->title ?>
                                            </td>
                                            <td><?= $customerGroup->description; ?></td>
                                            <td><?= $customerGroup->date_added; ?></td>
                                            <td>
                                                <?php //if (hasPermissions('plan_edit')): ?>
                                                    <a href="<?php echo url('customer/group/edit/' . $customerGroup->id) ?>"
                                                       class="btn btn-sm btn-default" title="Edit item"
                                                       data-toggle="tooltip"><i class="fa fa-pencil"></i></a>
                                                <?php //endif ?>
                                                <?php //if (hasPermissions('plan_delete')): ?>
                                                    <a href="<?php echo url('customer/group/delete/' . $customerGroup->id) ?>"
                                                       class="btn btn-sm btn-default remove-data-item"
                                                       title="Delete item" data-toggle="tooltip"><i
                                                                class="fa fa-trash"></i></a>
                                                <?php //endif ?>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">

                        </div>
                        <!-- /.box-footer-->
                    </div>
                    <!-- /.box -->
                </section>
                <!-- end row -->
            </div>
        </div>
        <!-- end container-fluid -->
    </div>
</div>
<!-- page wrapper end -->
<?php include viewPath('includes/footer'); ?>
<script>
    $('#dataTable1').DataTable()

</script>