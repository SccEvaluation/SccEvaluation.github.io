<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_admin'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
}

$kweri1 = "SELECT * FROM questions WHERE question_cat = 'chairman' ORDER BY q_id ASC";
$mastery = getdata_inner_join($kweri1);

$fetch = single_get("*","e_code","comment_type",$_GET['evaluation_code']);

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
              <h3 class="box-title"><i class="fa fa-calendar-o"></i> Evaluation CODE: <?php echo $_GET['evaluation_code']?></h3>

            </div>
            
              <!-- /.box-header -->
              <div class="box-body">
        <form method="GET" action="process.php">
  <input type="hidden" name="evaluation_code" value="<?php echo $_GET['evaluation_code']?>">
  <?php $count = 1; ?>
  <?php if(!empty($mastery)):?>
  <table class="table table-striped">
    <tr>
      <td><strong>Question</strong></td>
    </tr>
    <?php foreach ($mastery as $key => $value):?>
      <tr>
      <td><?php echo $count++;?>. <?php echo $value->question_name;?></td>
  </tr>
    <?php endforeach;?>
  </table>
<?php 
$total1 = '0';
$j = $dbcon->query("SELECT * FROM questions WHERE question_cat = 'professor'") or die();
$k = mysqli_num_rows($j);
  $query3 = $dbcon->query("SELECT SUM(r_result / $k) as total FROM `result` WHERE question_cat = 'chairman' AND e_code = '".$_GET['evaluation_code']."' GROUP BY user_id") or die(mysqli_error());
  $count = mysqli_num_rows($query3);
  while($row = $query3->fetch_assoc()){

    $total1 += $row['total'] / $count;
  }
 
?>
  <h3>Rating: <?php  echo $total1; ?></h3>
   <?php else:?>
  <?php endif;?>
 
  

<strong>Comment Type:</strong>
<?php
$kweri5 = $dbcon->query("SELECT * FROM comment_type WHERE e_code = '".$_GET['evaluation_code']."'") or die(mysqli_error());
$count2 = mysqli_num_rows($kweri5);
?>
<?php
$kweri6 = $dbcon->query("SELECT * FROM comment_type WHERE e_code = '".$_GET['evaluation_code']."'") or die(mysqli_error());
$count3 = mysqli_num_rows($kweri6);
?>
<div class="row">
  <div class="col-md-6">Good: <?php //echo $count2;?><hr>
  <?php 
  $num = '1';
  while($fetch = $kweri5->fetch_assoc()):
  ?>
  <?php echo $num++;?>. <?php echo $fetch['comment_feedback']?><br>
  <?php endwhile; ?>
  </div>
  <div class="col-md-6">Bad: <?php //echo $count3;?> 
  <hr>
  <?php 
  $num = '1';
  while($fetch2 = $kweri6->fetch_assoc()):
  ?>
  <?php echo $num++;?>. <?php echo $fetch2['negative_comment']?><br>
  <?php endwhile; ?></div>
</div>
<br>

<div class="alert alert-info">
<h1 >Overall Rating: <?php $grand = ($total1); echo $grand;?></h1>
</div>
</form>
<a href="print_chairman.php?evaluation_code=<?php echo $_GET['evaluation_code']?>" class="btn btn-danger" target="_blank"><i class="fa fa-print"></i> Print Preview</a>
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
  