<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_prof'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
}
/*
$kweri1 = "SELECT * FROM questions WHERE question_cat = 'A. Commitment' ORDER BY q_id ASC";
$mastery = getdata_inner_join($kweri1);

$kweri2 = "SELECT * FROM questions WHERE question_cat = 'B. Knowledge of the subject' ORDER BY q_id ASC";
$teaching = getdata_inner_join($kweri2);

$kweri3 = "SELECT * FROM questions WHERE question_cat = 'C. Teaching for independent learning' ORDER BY q_id ASC";
$personal = getdata_inner_join($kweri3);

$kweri4 = "SELECT * FROM questions WHERE question_cat = 'D. Management of learning' ORDER BY q_id ASC";
$last = getdata_inner_join($kweri4);


$total1 = '0';
  $query3 = $dbcon->query("SELECT SUM(r_result / 5) as total FROM `result` WHERE question_cat = 'A. Commitment' AND e_code = '".$_GET['e_code']."' GROUP BY user_id") or die(mysqli_error());
  $count = mysqli_num_rows($query3);
  while($row = $query3->fetch_assoc()){

    $total1 += $row['total'] / $count;
  }

$total2 = '0';
  $query3 = $dbcon->query("SELECT SUM(r_result / 5) as total FROM `result` WHERE question_cat = 'B. Knowledge of the subject' AND e_code = '".$_GET['e_code']."' GROUP BY user_id") or die(mysqli_error());
  $count = mysqli_num_rows($query3);
  while($row = $query3->fetch_assoc()){

    $total2 += $row['total'] / $count;
  }
$total3 = '0';
  $query3 = $dbcon->query("SELECT SUM(r_result / 5) as total FROM `result` WHERE question_cat = 'C. Teaching for independent learning' AND e_code = '".$_GET['e_code']."' GROUP BY user_id") or die(mysqli_error());
  $count = mysqli_num_rows($query3);
  while($row = $query3->fetch_assoc()){

    $total3 += $row['total'] / $count;
  }
$total4 = '0';
  $query3 = $dbcon->query("SELECT SUM(r_result / 5) as total FROM `result` WHERE question_cat = 'D. Management of learning' AND e_code = '".$_GET['e_code']."' GROUP BY user_id") or die(mysqli_error());
  $count = mysqli_num_rows($query3);
  while($row = $query3->fetch_assoc()){

    $total4 += $row['total'] / $count;
  }
 
 
*/

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
              <h3 class="box-title"><i class="fa fa-pencil"></i> Evaluation Chairman to Chairman Rankings</h3>

            </div>
            
            <!-- /.box-header -->
            <div class="box-body">
     <table width="100%" class="table table-striped table-bordered table-hover" style="font-size:12px;">
        <thead>
            <tr>
                <th>Ranking</th>
                <th>Chairman Name</th>
                <th>Score</th>
            </tr>
        </thead>
<tbody>
<?php 
$count = '1';
$student = $dbcon->query("SELECT AVG(r_result) as total, fname, mname, lname FROM evaluation_user 
  INNER JOIN user_account on user_account.user_id = evaluation_user.user_id 
  INNER JOIN result on result.e_code = evaluation_user.evaluation_code
  WHERE user_role = '3' GROUP BY evaluation_code ORDER BY total DESC") or die(mysqli_error());
while($row = $student->fetch_assoc()):

 /*

  $kweri = $dbcon->query("SELECT AVG(r_result) as total
  FROM evaluation_user INNER JOIN result on result.e_code = evaluation_user.evaluation_code
  INNER JOIN user_account on user_account.user_id = evaluation_user.user_id
  WHERE user_account.user_id = '".$row['user_id']."' ORDER BY total DESC") or die();
  $fetch = $kweri->fetch_assoc();
  */

?>

            <tr>
                <td><?php echo $count++;?></td>
                <td><?php echo $row['fname']?> <?php echo $row['mname']?> <?php echo $row['lname']?></td>
                <td><?php echo $row['total']?></td>
                
                
            </tr>
                                    

<?php endwhile;?>
</tbody>
    </table>             
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
