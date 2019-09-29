<!DOCTYPE html>
<html>
    <head>
    	<title>Vizsgagenerátor</title>
    	<?php
    	    require_once('packages/examGeneratorSystem/examGeneratorSystem.php');
    	    $examGeneratorSystem = new examGeneratorSystem();
    	?>
    </head>
    <body>
        <div id='mainContainer'>
            <?php
                echo $examGeneratorSystem->head();
            ?>
        </div>
    </body>
</html>