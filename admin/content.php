<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/myfunction.php';
if(empty($_SESSION['login_admin'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
}
$content = fetchAll("*","content_management");
if(isset($_GET['delete'])){ // Deleting records on the database.
  $delete = filter($_GET['delete']);
  $ar = array("ContentID"=>$delete); //WHERE statement
  $tbl_name = "content_management"; 
  $del = Delete($dbcon,$tbl_name,$ar);
  if($del){
    header("location: content.php");
  }
}
?>
<?php include'../assets/admin_header.php';?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<?php include'../assets/admin_nav.php';?>
<?php include'../assets/admin_sidebar.php';?>

  <div class="content-wrapper">
    <br>
    <div class="col-md-12">
      <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-plus"></i> Content Management</h3>

            </div>
            
            <!-- /.box-header -->
            <div class="box-body">
              <p></p>
            <?php  if(!empty($content)):?>
               <table id="example1" class="table table-bordered table-striped" style="font-size:12px;">
                <thead>
                <tr>
                  <th>Title</th>
                  <th>Date Created</th>
                  <th>Content Type</th>
                  <th>Option</th>
                </tr>
                </thead>
                <tbody>
              <?php foreach ($content as $key => $value):?>
                <tr>
                  <td>
                   <a href="" data-toggle="modal" data-target="#view-content<?php echo $value->ContentID?>"><?php echo $value->ContentTitle?></a>
                  </td>
                  <td><?php echo $value->ContentDate?></td>
                  <td><?php if($value->ContentType == '0'): echo 'About Us'; else: echo 'Contact Us'; endif;?></td>
                  <td>
                  <a href="add-content.php?ContentID=<?php echo $value->ContentID?>" class="btn btn-info btn-sm"><i class="fa fa-pencil"></i> Update</a>
                  <a href="#" <?php echo 'onclick=" confirm(\'Are you sure you want to Delete?\') 
      ?window.location = \'content.php?delete='.$value->ContentID.'\' : \'\';"'; ?> class="btn btn-danger btn-sm"><i class="fa fa-remove"></i> Delete</a>
                  </td>
                </tr>
                <!-- View Full Job-->
<div class="modal fade" id="view-content<?php echo $value->ContentID?>">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Details</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                
              </div>
              <div class="modal-body">
                <strong>Title:</strong><?php echo $value->ContentTitle?>
                <br>
                <strong>Description: </strong><br>
                <?php echo htmlspecialchars($value->ContentDesc);?>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</div>
<!-- end -->
              <?php endforeach;?>
              </table>
              <?php else:?>
                <div class="alert alert-danger">There are no records on the database.</div>
              <?php endif;?>
             
            </div>
            <!-- /.box-body -->
          </div>
    </div>
  </div>
  <!-- /.content-wrapper -->
<?php include'../assets/admin_footer.php';?>
</body>
</html>
