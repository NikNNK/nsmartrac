<?php
   defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php include viewPath('includes/header'); ?>
<!-- page wrapper start -->
<div class="wrapper">
   <?php include viewPath('includes/notifications'); ?>
   <div class="container-fluid">
      <section class="content">
         <!-- Default box -->
         <div class="box">
            
			<div class="page-title-box">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<h1 class="page-title">Workorder Type</h1>
						<ol class="breadcrumb">
							<li class="breadcrumb-item active">Add Type</li>
						</ol>
					</div>
					<div class="col-sm-6">
						<div class="float-right d-none d-md-block">
							<div class="dropdown">
								<a href="<?php echo url('plans') ?>" class="btn btn-primary" aria-expanded="false">
									<i class="mdi mdi-settings mr-2"></i> Go Back to Workorder Type
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
            <?php echo form_open('workstatus/save', [ 'class' => 'form-validate' ]); ?>
            <div class="row custom__border">
				<div class="col-xl-12">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
									  <label for="title">Title *</label>
									  <input type="text" class="form-control" name="title" id="title" required placeholder="Enter title" autofocus />
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
									  <label for="color">Color *</label>
									  <input type="color" class="form-control" name="color" id="color" required placeholder="Enter color"/>
									</div>
								</div>
								<div class="col-sm-6 mt-3">
									<button type="submit" class="btn btn-flat btn-primary">Submit</button>
								</div>   
							</div>
						</div>
					</div>
				</div>
            </div>
            
            <?php echo form_close(); ?>
         </div>
         <!-- /.box -->
      </section>
      <!-- end row -->           
   </div>
   <!-- end container-fluid -->
</div>
<!-- page wrapper end -->
<?php include viewPath('includes/footer'); ?>
<script>
   $(document).ready(function() {   
     $('.form-validate').validate();  
   })
</script>