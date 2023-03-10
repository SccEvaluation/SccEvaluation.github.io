<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_admin'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
}
$query = "SELECT * FROM questions WHERE question_cat != 'professor' AND  question_cat != 'chairman' ORDER BY q_id ASC";
$question = getdata_inner_join($query);
if(isset($_GET['delete'])){ // Deleting records on the database.
  $delete = filter($_GET['delete']);
  $ar = array("q_id"=>$delete); //WHERE statement
  $tbl_name = "questions"; 
  $del = Delete($dbcon,$tbl_name,$ar);
  if($del){
    header("location: questions.php");
  }
}
?>
<?php include'../assets/admin_header.php';?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<?php include'../assets/admin_nav.php';?>
<?php include'../assets/admin_sidebar.php';?>

  <div class="content-wrapper">
        <!-- Main content -->
    <section style="padding:11px;">

      <div class="box box-solid" style="padding:15px;">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-book"></i> Question List - <a href="add-question.php" class="btn btn-info">Add Data</a></h3>
              <hr>
        <?php  if(!empty($question)):?>
               <table id="example1" class="table table-bordered table-striped" style="font-size:12px;">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>Question</th>
                  <!--<th>Average Rate(Student)</th>
                  <th>Average Rate(Dean)</th>-->
                  <th>Category</th>
                  <th>Date Created</th>
                  <th>Option</th>
                </tr>
                </thead>
                <tbody>
              <?php foreach ($question as $key => $value):?>
              
                <tr>
                  <td>
                   <?php echo $value->q_id;?>
                  </td>
                  <td>
                   <?php echo $value->question_name;?>
                  </td>
                  <!--<td><?php echo $value->avg_rate;?></td>
                  <td><?php echo $value->rate_dean;?></td>-->
                   <td>
                    <?php echo $value->question_cat?>
                  </td>
                  <td><?php echo $value->date_created;?></td>
                  <td>

                  <div class="btn-group">
                  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                      <span class="sr-only">Toggle Dropdown</span>
                  </button>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="add-question.php?q_id=<?php echo $value->q_id?>"><i class="fa fa-pencil"></i> Update</a></li>
                    <li>
                      <a href="#" <?php echo 'onclick=" confirm(\'Are you sure you want to Delete?\') 
      ?window.location = \'questions.php?delete='.$value->q_id.'\' : \'\';"'; ?>><i class="fa fa-remove"></i> Delete</a>
    </li>
                  </ul>
                  </div>
                  </td>
                </tr>
              <?php endforeach;?>
              </table>
              <?php else:?>
                <div class="alert alert-danger">There are no records on the database.</div>
              <?php endif;?>
            </div>
      </div>
    </section>



    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include'../assets/admin_footer.php';?>
</body>
</html>
