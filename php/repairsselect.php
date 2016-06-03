<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("south_dublin_housing_council_repairs", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM repairs"); //getting information from emp table

echo "<table border='1'>  
<tr> 
<th>REPAIR_ID </th>
<th>TYPE </th>
<th>URGENCY </th>
<th>DETAILS </th>
<th>DATE </th>
<th>TIME </th>
<th>TRADESMAN_ID </th>
</tr>";

while($row = mysql_fetch_array($result)) //this creates a loop 
  {
  echo "<tr>";
  echo "<td>" . $row['REPAIR_ID'] . "</td>";
  echo "<td>" . $row['TYPE'] . "</td>";
  echo "<td>" . $row['URGENCY'] . "</td>";
   echo "<td>" . $row['DETAILS'] . "</td>";
   echo "<td>" . $row['DATE'] . "</td>";
  echo "<td>" . $row['TIME'] . "</td>";
  echo "<td>" . $row['TRADESMAN_ID'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection
?> 