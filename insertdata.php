<?php
require_once('confi.php');
if(isset($_POST['submit']))
{
         
   
$strcap = "";
$word = $_POST['word'];
$cWord=0;
$cWord=str_word_count($word);
$charcount=0;
$charcount=strlen($word);

 //echo "word count".str_word_count($word);
//echo "character count is ".strlen($word);
$count=0;
$a=$word;
for($i=0;$i<strlen($a);$i=$i+1)
{

if($a{$i}=='a'||$a{$i}=='e'||$a{$i}=='i'||$a{$i}=='o'||$a{$i}=='u') 
{
	$count=$count+1;
}
}



$str  = $word;
  

$searchVal = array("a", "e", "i","o","u");
  

$replaceVal = array("A", "E", "I","O","U");
  

$res = str_replace($searchVal, $replaceVal, $str);

print_r($res);

$query="INSERT INTO insertdata(word,achar,vowel,cap)VALUES($cWord,$charcount,$count,'$res')";
	if($con->query($query)){
		
	}else{
		echo "error" .$query."<br>".mysqli_error($con);
	}

$sql = "SELECT * FROM insertdata ORDER BY id DESC ";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);

}
?>

<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="UTF-8">
    <title>String Details</title>
    <!-- CSS FOR STYLING THE PAGE -->
    <style>
        table {
            margin: 0 auto;
            font-size: large;
            border: 1px solid black;
        }
  
        h1 {
            text-align: center;
            color: #006600;
            font-size: xx-large;
            font-family: 'Gill Sans', 'Gill Sans MT', 
            ' Calibri', 'Trebuchet MS', 'sans-serif';
        }
  
        td {
            background-color: #E4F5D4;
            border: 1px solid black;
        }
  
        th,
        td {
            font-weight: bold;
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
  
        td {
            font-weight: lighter;
        }
    </style>
</head>
  
<body>
    <section>
        <h1>Task</h1>
        <!-- TABLE CONSTRUCTION-->
        <table>
            <tr>
                <th>Word Count</th>
                <th>char Count</th>
                <th>vowel Count</th>
                <th>vowel Capitalize</th>
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS-->
            <?php   // LOOP TILL END OF DATA 
                while($rows=$result->fetch_assoc())
                {
             ?>
            <tr>
                <!--FETCHING DATA FROM EACH 
                    ROW OF EVERY COLUMN-->
                <td><?php echo $rows["word"];?></td>
                <td><?php echo $rows["achar"];?></td>
                <td><?php echo $rows["vowel"];?></td>
                <td><?php echo $rows["cap"];?></td>
            </tr>
            <?php
                }
             ?>
        </table>
    </section>
</body>
  
</html>