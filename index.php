<?php
	/* using mysqli_connect for Database
	Connectivity with hostName, username and database name
	*/
	$conn = mysqli_connect("localhost","root","","api");

	/* checking request type */
	$request = $_SERVER['REQUEST_METHOD'];

	/* Using switch case to check 
	request type
	*/
	switch($request){
		case 'GET':
			/* calling getStudents function for get request */
			getStudents();
		break;
		
	}

	function getStudents(){
		global $conn;
		$id = isset($_GET['id'])?$_GET['id']:'';
		$student_name = isset($_GET['name'])?$_GET['name']:'';
		$offset = isset($_GET['offset'])?$_GET['offset']:'';

		/* query to select all student data */
		$sql = "SELECT * FROM students ";
		
		/* if id is not empty append where clause with that id*/
		if(!empty($id)){
			 $sql.= "WHERE id=".$id;
		}

		/* if student_name is not empty append where 
		clause with that student_name*/
		if(!empty($student_name)){
			$sql.= "WHERE student_name like '%".$student_name."%'";
		}
		
		/* Sort as per alphabetic order*/
		$sql.=" ORDER BY student_name ";

		/* Setting limit of 10*/
		$sql.=" LIMIT 10 ";

		/* if offset is not empty append where 
		clause with that offset*/
		if(!empty($offset)){
			$sql.="OFFSET ".$offset;
		}
		$response = array();

		/* if db connected */
		if($conn){

			/* fetching data from query */
			$result = mysqli_query($conn, $sql);
			if($result){

				/* setting headers for our api */
				header("Content-Type: JSON");
				header('Access-Control-Allow-Origin: *');
				$i=0;

				/* Pushing data in our $response array 
				once every thing is properly fetched from DB*/
				while($row = mysqli_fetch_assoc($result)){
					$ap = array();
					$response[$i]['id'] = $row['id'];
					$response[$i]['course_name'] = $row['course_name'];
					$response[$i]['student_address'] = $row['student_address'];
					$response[$i]['student_img'] = $row['student_img'];
					$response[$i]['student_name'] = $row['student_name'];
					$ap['maths'] = $row['maths'];
					$ap['english'] = $row['english'];
					$ap['science'] = $row['science'];
					$response[$i]['subject'] = $ap;
					$i++;
				}

				/* returning response as a JSON format */
				echo json_encode($response, JSON_PRETTY_PRINT);
			}
		}
		/* if db not connected */
		else {
			echo "DB conn failed";
		}
	}
?>
