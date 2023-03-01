<?php
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';

$evaluation_code = filter($_GET['evaluation_code']);
//formula total number of student * Average rating per question( 4 * 10)
 
$kweri1 = "SELECT * FROM questions WHERE question_cat = 'professor' ORDER BY q_id ASC";
$mastery = getdata_inner_join($kweri1);

if(!empty($mastery)):
foreach ($mastery as $key => $value){

	$answer = "answers".$value->q_id."";
	$d = substr($answer, 7,9);
	 
	$data = array(
		"e_code"				=> $evaluation_code,
		"user_id"				=> $_SESSION['user_id'],
		"r_question"			=> $d,
		"r_result"				=> $_GET["".$answer.""],
		"question_cat"			=> "professor"
	);
	insertdata("result",$data);
}
else:
endif;
insertdata("comment_type",array(
	"e_code"			=>$evaluation_code,
	"comment_feedback"	=>$_GET['comment_feedback'],
	"negative_comment"	=>$_GET['negative_comment']
)
);
echo '<script>alert("You have successfully taken the evaluation."); window.location = "index.php";</script>';

?>