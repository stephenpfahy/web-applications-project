<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("south_dublin_housing_council_repairs", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM tradesman"); //getting information from emp table

echo "<table border='1'>  
<tr> 
<th>TRADESMAN_ID </th>
<th>FIRST_NAME </th>
<th>LAST_NAME </th>
<th>SKILL </th>
<th>CONTACT </th>
<th>EQUIPMENT_ID </th>
</tr>";

while($row = mysql_fetch_array($result)) //this creates a loop 
  {
  echo "<tr>";
  echo "<td>" . $row['TRADESMAN_ID'] . "</td>";
  echo "<td>" . $row['FIRST_NAME'] . "</td>";
  echo "<td>" . $row['LAST_NAME'] . "</td>";
   echo "<td>" . $row['SKILL'] . "</td>";
  echo "<td>" . $row['CONTACT'] . "</td>";
  echo "<td>" . $row['EQUIPMENT_ID'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection
?> 