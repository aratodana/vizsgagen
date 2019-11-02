<?php
	require_once("./essential/connector.php");
	//require_once("./essential/bootstrapIncludes.php");

	class examGeneratorSystem
	{
		private $conn_public;

		public function __construct()
		{
			$this->conn_public = connector::getConnect();
		}
		
		public function head()
		{
		    #if(isset($_GET['anal2']))   echo $this->generateAnal2Exam(15, 2);
		   echo $this->generateAnal2Exam(15, 2);
		   // if(isset($_GET['anal2all']))   echo $this->generateAnal2Exam(10, 1);
		}
	
	    public function generateAnal2Exam($defiNumber, $biziNumber)
	    {
	        $s = "<div class='card' id = 'examContainer'>";
	        if(isset($_GET['defiMax'])) $defiMax = $_GET['defiMax'];
	        else                        $defiMax = 10000;
	        
	        if(isset($_GET['biziMax'])) $biziMax = $_GET['biziMax'];
	        else                        $biziMax = 10000;
	        
	        $defiSQL = "SELECT * FROM ANAL_2_DEFIK  WHERE ID < $defiMax ORDER BY RAND() LIMIT ?;";
            $biziSQL = "SELECT * FROM ANAL_2_BIZONYITAS WHERE ID < $biziMax ORDER BY RAND() LIMIT ?;";	        

	        
			$stmt = $this->conn_public->prepare($defiSQL);

			$stmt->bind_param('i', $defiNumber);

			$stmt->execute();
			$result = $stmt->get_result();

	        if(!$result)	return "Adatbázishiba: 1";
	        if ($result->num_rows == 0) return "Adatbázishiba: 2";
	        
	        $s.= "<h2>Tételek</h2>";
	        $s .= "<ul>";
	        while($row = $result->fetch_assoc())
	        {
	            $s .= "<li>"  . $row["ID"] . ". " . $row["SZOVEG"] ."</li>";
	        }
	        $s .= "</ul>";
	        
	        $stmt = $this->conn_public->prepare($biziSQL);

			$stmt->bind_param('i', $biziNumber);

			$stmt->execute();
			$result = $stmt->get_result();

	        if(!$result)	return "Adatbázishiba: 1";
	        if ($result->num_rows == 0) return "Adatbázishiba: 2";
	        
	        $s.= "<h2>Bizonyítással kért tételek</h2>";
	        $s .= "<ul>";
	        while($row = $result->fetch_assoc())
	        {
	            $s .= "<li>"  . $row["ID"] . ". " . $row["SZOVEG"] ."</li>";
	        }
	        $s .= "</ul>";
	        $s.= "</div>";
	        return $s;
	    }
	
	}

?>