<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_admin'])){ //This function is to check weather the account has been login or not
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
      <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-calendar-o"></i> Chairman Result</h3>

            </div>
            
            <!-- /.box-header -->
            <div class="box-body">
<form method="post">
<div class="row">
  <div class="col-md-5">
    <strong>Archive Year:</strong>
    <select class="form-control" name="year">
      <?php for ($i=2015; $i < 2050; $i++):?>
        <option value="<?php echo $i;?>" <?php if(isset($_POST['search_btn'])){
                      if($i== $_POST['year']){
                        echo 'selected';
                      }
                        }
                        elseif(isset($_POST['search_btn'])){
                          echo $_POST['year'];
                      }
                ?>><?php echo $i;?></option>
      <?php endfor;?>
    </select>
  </div>
  <div class="col-md-4">
    <br>
    <button class="btn btn-primary" name="search_btn"><i class="fa fa-search"></i> Search Year</button>
  </div>
</div>
</form>
<br>
<?php if (isset($_POST['search_btn'])):?>
     <table width="100%" class="table table-striped table-bordered table-hover" id="example1" style="font-size:12px;">
        <thead>
            <tr>
                <th>Evaluation Code</th>
                <th>Professor Name</th> 
                <th>Date Created</th>               
               
            </tr>
        </thead>
<tbody>
<?php 

$student = $dbcon->query("SELECT * FROM evaluation_user
  INNER JOIN user_account on user_account.user_id = evaluation_user.user_id
  WHERE YEAR(date_created) = '".$_POST['year']."' AND user_role = '3'") or die(mysqli_error());
while($row = $student->fetch_assoc()):
?>

            <tr>
                <td><a href="view-rate.php?evaluation_code=<?php echo $row['evaluation_code']?>"><?php echo $row['evaluation_code']?></a></td>
                <td><?php echo $row['fname']?> <?php echo $row['mname']?> <?php echo $row['lname']?></td>
                <td><?php echo $row['date_created']?></td>
               
                
                
                
            </tr>
                                    

<?php endwhile;?>
</tbody>
    </table>   
<?php else:?>
  <div class="alert alert-success">Please search year to view the archive.</div>
<?php endif;?>           
            </div>
            <!-- /.box-body -->
          </div>
    </div>
    </section>



    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include'../assets/admin_footer.php';?>
</body>
</html>
