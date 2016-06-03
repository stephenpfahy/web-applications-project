<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("south_dublin_housing_council_repairs", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM equipment"); //getting information from emp table

echo "<table border='1'>  
<tr> 
<th>EQUIPMENT_ID </th>
<th>TYPE </th>
<th>DESCRIPTION </th>
<th>VALUE </th>
<th>INSPECTION_DATE </th>
<th>STATE_OF_REPAIR </th>
</tr>";

while($row = mysql_fetch_array($result)) //this creates a loop 
  {
  echo "<tr>";
  echo "<td>" . $row['EQUIPMENT_ID'] . "</td>";
  echo "<td>" . $row['TYPE'] . "</td>";
  echo "<td>" . $row['DESCRIPTION'] . "</td>";
   echo "<td>" . $row['VALUE'] . "</td>";
   echo "<td>" . $row['INSPECTION_DATE'] . "</td>";
  echo "<td>" . $row['STATE_OF_REPAIR'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection
?> 