
<?php 

$Student_ID = $_POST['Student_ID'];
$Student_Name = $_POST['Student_Name'];
$Student_Address = $_POST['Student_Address'];
$Student_PhoneNum = $_POST['Student_PhoneNum'];
$Student_Dues_Paid = $_POST['Student_Dues_Paid'];
$Student_EmergencyCont = $_POST['Student_EmergencyCont'];
$Membership_type = $_POST['Membership_type'];
$Board_Members = $_POST['Board_Members'];

echo "Here is the data created and added to the database Member table";
echo"------------------------------------------------------->";
echo "$Student_ID, $Student_Name, $Student_Address, $Student_PhoneNum, $Student_Dues_Paid, $Student_EmergencyCont, $Membership_type, $Board_Members";
