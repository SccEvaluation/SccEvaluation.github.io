<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_dean'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
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
      <!-- Small boxes (Stat box) -->
        <div class="col-md-12">
 <div class="box box-solid" style="padding:15px;">
            <div class="box-header with-border">             
    <h3 class="box-title"><i class="fa fa-pencil"></i> Evaluate Chairman</h3>
              <hr>
        <table width="100%" class="table table-striped table-bordered table-hover" id="example2">
        <thead>
            <tr>
                <th>Evaluation Code</th>
               
                <th>Chairman to Evaluate</th>
                <th>Date Created</th>
                <th>Option</th>
            </tr>
        </thead>
<tbody>
<?php 
$prof = $dbcon->query("SELECT * FROM evaluation_user 
  INNER JOIN user_account on user_account.user_id = evaluation_user.user_id
  WHERE evaluation_user.user_id != '".$_SESSION['user_id']."' AND user_role = '3' AND eval_status = '0'") or die(mysqli_error());
while($row = $prof->fetch_assoc()):

  $h = $dbcon->query("SELECT * FROM result WHERE user_id = '".$_SESSION['user_id']."' AND e_code = '".$row['evaluation_code']."'") or die();
  $count = mysqli_num_rows($h);
?>

            <tr>
                <td><?php echo $row['evaluation_code']?></td>
               
                <td>
                  <?php echo $row['fname']?> <?php echo $row['mname']?> <?php echo $row['lname']?>
                </td>
                <td><?php echo $row['date_created']?></td>
                <td class="center">
                     <div class="btn-group">
                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                      <span class="sr-only">Toggle Dropdown</span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <?php if($count == 0):?>
                         <li><a href="evaluation.php?evaluation_code=<?php echo $row['evaluation_code']?>" target="_blank">Evaluate Chairman</a></li>
                      <?php else:?>
                        <li><a href="">You can't Evaluate</a></li>
                      <?php endif;?>
                      
                    </ul>
                  </div>
                </td>
            </tr>
                                    

<?php endwhile;?>
</tbody>
    </table>
            </div>
      </div>
    </div>
    </section>



    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include'../assets/admin_footer.php';?>
</body>
</html>
