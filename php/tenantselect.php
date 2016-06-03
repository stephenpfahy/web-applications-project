<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("south_dublin_housing_council_repairs", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM tenant"); //getting information from emp table

echo "<table border='1'>  
<tr> 
<th>TENANT_ID </th>
<th>REGISTER_NUMBER </th>
<th>FIRST_NAME </th>
<th>LAST_NAME </th>
<th>CONTACT </th>
<th>EMAIL </th>
</tr>";

while($row = mysql_fetch_array($result)) //this creates a loop 
  {
  echo "<tr>";
  echo "<td>" . $row['TENANT_ID'] . "</td>";
  echo "<td>" . $row['REGISTER_NUMBER'] . "</td>";
  echo "<td>" . $row['FIRST_NAME'] . "</td>";
   echo "<td>" . $row['LAST_NAME'] . "</td>";
   echo "<td>" . $row['CONTACT'] . "</td>";
  echo "<td>" . $row['EMAIL'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection
?> 