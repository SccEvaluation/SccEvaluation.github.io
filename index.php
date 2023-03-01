<?php
  include 'config/db.php';
  include 'config/functions.php';
  include 'config/main_function.php';
 
  if(isset($_SESSION['login_admin']) == 'login_admin')
  {
    header("location: admin/");
  }

  if(isset($_SESSION['login_professor']) == 'login_professor')
  {
    header("location: professor/");
  }

  if(isset($_SESSION['login_student']) == 'login_student')
  {
    header("location: user/");
  }

  if(isset($_POST['login_button'])){
    $user_name = filter($_POST['user_name']);
    $pass = hash("sha256",$_POST['pass']);

    $loginAccount = login($user_name,$pass);
    if(!empty($loginAccount)){
    foreach ($loginAccount as $key => $value) {
      if($value->user_role == '0'){
          $_SESSION['user_id'] = $value->user_id;
          $_SESSION['user_name'] = $value->user_name; 
          $_SESSION['fname'] = $value->fname;
          $_SESSION['mname'] = $value->mname;
          $_SESSION['lname'] = $value->lname;
          $_SESSION['user_role'] = $value->user_role;
          $_SESSION['login_admin'] = 'login_admin';

          $data = array("log_desc"  => "".$value->fname." ".$value->mname." ".$value->lname." has login to the system");
          insertdata("logs",$data);
          header("location: admin/");
      }
      elseif($value->user_role == '1'){
          $_SESSION['user_id'] = $value->user_id;
          $_SESSION['user_name'] = $value->user_name; 
          $_SESSION['fname'] = $value->fname;
          $_SESSION['mname'] = $value->mname;
          $_SESSION['lname'] = $value->lname;
          $_SESSION['user_role'] = $value->user_role;
          $_SESSION['login_prof'] = 'login_prof';
          $data = array("log_desc"  => "".$value->fname." ".$value->mname." ".$value->lname." has login to the system");
          insertdata("logs",$data);
          header("location: professor/");
      }
      elseif($value->user_role == '2'){
          $_SESSION['user_id'] = $value->user_id;
          $_SESSION['user_name'] = $value->user_name; 
          $_SESSION['fname'] = $value->fname;
          $_SESSION['mname'] = $value->mname;
          $_SESSION['lname'] = $value->lname;
          $_SESSION['user_role'] = $value->user_role;
          $_SESSION['login_user'] = 'login_user';
          $_SESSION['section_name']  = $value->section_name;
          $data = array("log_desc"  => "".$value->fname." ".$value->mname." ".$value->lname." has login to the system");
          insertdata("logs",$data);
          header("location: user/");
      }
      elseif($value->user_role == '3'){
          $_SESSION['user_id'] = $value->user_id;
          $_SESSION['user_name'] = $value->user_name; 
          $_SESSION['fname'] = $value->fname;
          $_SESSION['mname'] = $value->mname;
          $_SESSION['lname'] = $value->lname;
          $_SESSION['user_role'] = $value->user_role;
          $_SESSION['login_dean'] = 'login_dean';
          $_SESSION['section_name']  = $value->section_name;

          $data = array("log_desc"  => "".$value->fname." ".$value->mname." ".$value->lname." has login to the system");
          insertdata("logs",$data);

          header("location: dean/");
      }
    }
  }else{
    $msg = 'Wrong username/password or your account is not yet verified.';
  }
  }

//Auto update
  $kweri1 = $dbcon->query("SELECT * FROM evaluation_sheet WHERE e_status = '1'") or die();
  while ($row = $kweri1->fetch_assoc()) {

    $exist_date = $row['date_started'];
    $d = date('Y-m-d', strtotime($exist_date. ' + 2 days'));

    if ($d == date("Y-m-d")) {

      $update = $dbcon->query("UPDATE evaluation_sheet SET e_status = '2' WHERE e_code = '".$row['e_code']."'") or die();
      //echo $row['e_code']; 
    }
  }

  $kweri2 = $dbcon->query("SELECT * FROM evaluation_user WHERE eval_status = '0'") or die();
  while ($row = $kweri2->fetch_assoc()) {

    $exist_date = $row['date_created'];
    $d = date('Y-m-d', strtotime($exist_date. ' + 2 days'));

    if ($d == date("Y-m-d")) {

      $update = $dbcon->query("UPDATE evaluation_user SET eval_status = '2' WHERE evaluation_code = '".$row['evaluation_code']."'") or die();
      //echo $row['e_code']; 
    }
  }
?>
<style type="text/css">
.justify
{
  text-align: justify;
}

</style>
<?php include'assets/header.php';?>
  <body style="background:#d7d7d7;">
    <div class="container" style="width:100%; margin:0 auto;margin-top:5%;">
    </div>
    <div class="row">
      <div class="col-md-3">
        
      </div>
      <div class="col-md-6">
        
        <center><img src="images/315211604_1111937209495131_3343001865854935621_n.png" width="180"></center>
        <center><h2 class="spacing">Online Faculty Information and Evaluation System for St Clare College of Caloocan</h2>
          </center>
      </div>
      <div class="col-md-3">
         
      </div>
    </div>
    <div class="row">
    <div class="col-lg-4">
    </div>
    <div class="col-lg-4" style="background:#f9f9f9;padding:20px;margin-top:1%;border:1px solid #dee2e6; border-radius:5px; ">
      <center><h3>Login</h3>
                <small class="spacing">Please enter your ID Number and Password to continue. <br> Teachers, Students and Administrator can login to the system.</small>
      </center>
      <?php if(isset($msg)):?><div class="alert alert-danger"><?php echo $msg;?></div><?php endif;?>
      <br>
      <form method="post">
        <div class="form-group">
          <input type="text" name="user_name" class="form-control" placeholder="ID Number" required>
        </div>
        <div class="form-group">
          <input type="password" name="pass" class="form-control" placeholder="Password" required>
        </div>
         <div class="form-group">
          <label for="exampleFormControlInput1"></label>
          <input type="submit" name="login_button" class="btn btn-danger form-control" value="Login!"> 
        </div>
      
      </form>
    </div>
    <div class="col-lg-4">
    </div>
</div>
   
    
<?php //include'assets/footer.php';?>
</body></html>