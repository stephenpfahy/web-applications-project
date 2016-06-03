<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("south_dublin_housing_council_repairs", $con);

$sql="INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL)
VALUES
('$_POST[TENANT_ID]','$_POST[REGISTER_NUMBER]','$_POST[FIRST_NAME]','$_POST[LAST_NAME]', '$_POST[CONTACT]', '$_POST[EMAIL]')";

if (!mysql_query($sql,$con))//this executes all the code above for the sql statement
  {
  die('Error: ' . mysql_error());
  }
echo "Thank you for entering information needed";

mysql_close($con); //closing connection to database
?> 


