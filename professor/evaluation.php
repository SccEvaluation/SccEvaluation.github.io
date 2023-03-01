<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_prof'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
}
$query = "SELECT * FROM evaluation_user 
INNER JOIN user_account on user_account.user_id = evaluation_user.user_id
WHERE evaluation_code = '".$_GET['evaluation_code']."'";
$evaluate = single_inner($query);

$kweri1 = "SELECT * FROM questions WHERE question_cat = 'professor' ORDER BY q_id ASC";
$mastery = getdata_inner_join($kweri1);
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
 <div class="box box-solid" style="padding:15px; border:1px solid black;">
    <h4 style="text-indent:20px; margin-left:20px; margin-right:15px;">
       This instrument is intended to determine the intellectual and scholastic qualities, instructional competence,
       professionalism, research, extension, and production functions of the faculty as well as their plus factors. The 
       various groups of respondents shall accomplish the instrument as follows:
       </h4>
           </p>
       <br />
           <p>
           <h4 style="margin-left:100px;">
      <ol>
        <li>The <b style="color:rgb(43, 84, 126);">Dean/Administrator</b> shall evalaute the faculty on all components of the instrument.</li>
        <li>The <b style="color:rgb(43, 84, 126);">Self-Evaulator</b> shall evaluate his/her performance on Part I (<b style="color:rgb(43, 84, 126);">TEACHING EFFECTIVENESS</b>) 
        and Part II (<b style="color:rgb(43, 84, 126);">PROFESSIONALISM</b>) of the instrument.
        </li>
        <li>The <b style="color:rgb(43, 84, 126);">Peer</b> shall evaluate the faculty on Part I (<b style="color:rgb(43, 84, 126);">TEACHING EFFECTIVENESS</b>) 
        and Part II (<b style="color:rgb(43, 84, 126);">PROFESSIONALISM</b>) of the instrument. </li>
      </ol>
       </h4>
         <table width="800" class="table table-hover">                      
           <p>
           <h4><u>INSTRUCTION:</u> Please evaluate the teacher using the scale below. Select from the radio buttons below. </h4>
           </p>          
    <thead>
      <tr>
        <th>Scale</th>
        <th>Descriptive Rating</th>
        <th>Qualitative Description</th>
      </tr>   
      
        
      
    </thead>
    <tbody>
      <tr>
       <td>5</td>
       <td>Outstanding</td>
       <td>The performance always exceeds the job requirements. The faculty is exceptional role model.</td>
      </tr>
    <tr>
       <td>4</td>
       <td>Very Satisfactory</td>
       <td>The performance meets and often exceeds the job requirements.</td>
      </tr>
    <tr>
       <td>3</td>
       <td>Satisfactory</td>
       <td>The performance meets job requirements.</td>
      </tr>
    <tr>
       <td>2</td>
       <td>Fair</td>
       <td>The performance needs some development to meet job requirements.</td>
      </tr>
    <tr>
       <td>1</td>
       <td>Poor</td>
       <td>The faculty fails to meet job requirements.</td>
      </tr>
    </tbody>


   </table>
      <form method="GET" action="process.php">
  <input type="hidden" name="evaluation_code" value="<?php echo $_GET['evaluation_code']?>">
  <?php $count = 1; ?>
  <?php if(!empty($mastery)):?>
  <table class="table table-striped">
    <tr>
      <td width="700"><strong>Question</strong></td>
      <td><strong>Scale</strong></td>
    </tr>
    <?php foreach ($mastery as $key => $value):?>
      <tr>
      <td><?php echo $count++;?>. <?php echo $value->question_name;?></td>
      
      <td>
        <input type="radio" name="answers<?php echo $value->q_id?>" value="5" required> 5
        <input type="radio" name="answers<?php echo $value->q_id?>" value="4" required> 4
        <input type="radio" name="answers<?php echo $value->q_id?>" value="3" required> 3
        <input type="radio" name="answers<?php echo $value->q_id?>" value="2" required> 2
        <input type="radio" name="answers<?php echo $value->q_id?>" value="1" required> 1
      </td>
    
  </tr>
    <?php endforeach;?>
  </table>
   <?php else:?>
  <?php endif;?>
<div class="row">
  <div class="col-md-6">
    <strong>Good Comment</strong>
    <textarea class="form-control" name="comment_feedback"></textarea>

  </div>
  <div class="col-md-6">
    <strong>Bad Comment</strong>
    <textarea class="form-control" name="negative_comment"></textarea>
  </div>
</div>

<br>
<button class="btn btn-info btn-lg" name="submit_eval"><i class="fa fa-check"></i> Submit</button>
</form>
  </div>
</div>
</section>



    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include'../assets/admin_footer.php';?>
</body>
</html>
