<?php
/*
This script created by Arató Dániel
Version: 1.0.1.0
=============================================================================================================
  ,----..                                                         ___                       
 /   /   \                                                      ,--.'|_                     
|   :     :  ,---.        ,---,      ,---,                      |  | :,'   ,---.    __  ,-. 
.   |  ;. / '   ,'\   ,-+-. /  | ,-+-. /  |                     :  : ' :  '   ,'\ ,' ,'/ /| 
.   ; /--` /   /   | ,--.'|'   |,--.'|'   |   ,---.     ,---. .;__,'  /  /   /   |'  | |' | 
;   | ;   .   ; ,. :|   |  ,"' |   |  ,"' |  /     \   /     \|  |   |  .   ; ,. :|  |   ,' 
|   : |   '   | |: :|   | /  | |   | /  | | /    /  | /    / ':__,'| :  '   | |: :'  :  /   
.   | '___'   | .; :|   | |  | |   | |  | |.    ' / |.    ' /   '  : |__'   | .; :|  | '    
'   ; : .'|   :    ||   | |  |/|   | |  |/ '   ;   /|'   ; :__  |  | '.'|   :    |;  : |    
'   | '/  :\   \  / |   | |--' |   | |--'  '   |  / |'   | '.'| ;  :    ;\   \  / |  , ;    
|   :    /  `----'  |   |/     |   |/      |   :    ||   :    : |  ,   /  `----'   ---'     
 \   \ .'           '---'      '---'        \   \  /  \   \  /   ---`-'                     
  `---`                                      `----'    `----'                                                         
=============================================================================================================
	Simple script returns the connect, to help the configuration
=============================================================================================================	
	Private Functions:
		connection getPublic(): return the connection to the public database
		connection getPrivate(): return the connection to the private database

	Public Functions:
		connection getConnect($private = False): if true returns getPublic() else returns getPrivate()
=============================================================================================================
*/
	class connector
	{
		
		public static function getConnect($arg = "default")
		{
			if($arg == "private")	return connector::getPrivate();
			if($arg == "logs") 		return connector::getLog();
			else 					return connector::getPublic();
		}

		private static function getPrivate()
		{
			$database = "u282403210_vizsg";
			$adress = "localhost";
			$username = "";
			$password = "";

			$conn = new mysqli($adress, $username, $password, $database);
			if ($conn->connect_error) {die("Connection failed: " . $conn->connect_error);} 
			//mysqli_set_charset( $conn, 'utf8mb4_hungarian_ci');
			return $conn;
		}

		private static function getLog()
		{
			$database = "u282403210_vizsg";
			$adress = "localhost";
			$username = "";
			$password = "";

			$conn = new mysqli($adress, $username, $password, $database);
			if ($conn->connect_error) {die("Connection failed: " . $conn->connect_error);} 
			//mysqli_set_charset( $conn, 'utf8mb4_hungarian_ci');
			return $conn;
		}
		
		private static function getPublic()
		{
			$database = "VIZSGAGEN";
			$adress = "localhost";
			$username = "root";
			$password = "";

			$conn = new mysqli($adress, $username, $password, $database);
			if ($conn->connect_error) {die("Connection failed: " . $conn->connect_error);}
			//mysqli_set_charset( $conn, 'latin2_hungarian_ci');
			return $conn;
		}
	}

?>