<?php include 'in-dbconn.php' ?>
<table>
<?php 

try{
$dbs = $conn->query( $query );
//$table_fields = $dbs->fetchAll(PDO::FETCH_COLUMN);
while( $row = $dbs->fetch(PDO::FETCH_BOTH) )
{
  echo "<tr>";
  $cnt = count($row) / 2; // PDO::FETCH_BOTH returns twice the columns
  for ($i=0; $i<$cnt; $i++){
    echo "<td>" . $row[$i] .'</td>';
  }
  echo "</tr>";
}
} catch( Exception $e){
  echo "<tr><td>Exception Message:<br/>" .$e->getMessage() .'</td></tr>';
}
?>
</table>
