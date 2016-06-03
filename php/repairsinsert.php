<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("south_dublin_housing_council_repairs", $con);

$sql="INSERT INTO repairs (REPAIR_ID, TYPE, URGENCY, DETAILS, DATE, TIME, TRADESMAN_ID)
VALUES
('$_POST[REPAIR_ID]','$_POST[TYPE]','$_POST[URGENCY]','$_POST[DETAILS]', '$_POST[DATE]', '$_POST[TIME]', '$_POST[TRADESMAN_ID]')";

if (!mysql_query($sql,$con))//this executes all the code above for the sql statement
  {
  die('Error: ' . mysql_error());
  }
echo "Thank you for entering information needed";

mysql_close($con); //closing connection to database
?> 


