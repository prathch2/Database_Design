<html>
<head> 
<title>Hello from PHP sample DB connection app</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow"); 
  });
});
</script>
<style> 
#panel, #flip {
  padding: 5px;
  text-align: center;
  background-color: #e5eecc;
  border: solid 1px #c3c3c3;
}

#panel {
  padding: 50px;
  display: none;
  text-align:left;
}
</style>
</head>
<body>
<?php include 'in-dbconn.php' ?>

<h1>Hello world! Welcome to Cricket DBMS</h1>

<div id="flip">Click this bar here to slide the panel down or up to see other features</div>
<div id="panel">
<!-- <h2>Databases that I can access</h2>
The following is a list of databases accessible by this
user account.<br/> -->
<?php
// Output the <a> element with the href attribute
echo '<a href="http://cmsc508.com/202310/team01/create.php">Click here to create new records</a>';
echo '------------------------------------------------------------------------';
echo '<a href="http://cmsc508.com/202310/team01/view.php">Click here to view records from a table</a>';
echo '---------------------------------------------------------';
echo '<a href="http://cmsc508.com/202310/team01/update.php">Click here to update records in a table</a>';
echo '-----------------------------------------------------------------';
echo '<a href="http://cmsc508.com/202310/team01/delete.php">Click here to delete records from a table</a>';
echo '-------------------------------------------------------'
?>
<table>
<?php
$dbs = $conn->query( 'SHOW DATABASES' );
//<?php $query = "SHOW DATABASES"?>
</table>
</div>

<h1>20 Queries</h1>
<hr/>
<h2>1. List of cricket players and their emails in alphabetical order by their names</h2>
<h3>ID----- Name------------------ Email</h3>
<div>
<?php $query = "SELECT * FROM List_Players_emails;"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>2. Top 5 players with highest batting average?</h2>
<h3>ID----- Name----------- Batting AVG</h3>
<div>
<?php $query = "SELECT * FROM Top_5_runners;"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>3. List of cricket match locations and the leagues hosting them. Include league fees and match date as well.</h2>
<h4>LID--Venue-------------Date--------Leag Name---------- Cost</h4>
<div>
<?php $query = "SELECT * from List_match_loc_league"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>4. List of Competing members</h2>
<h4>Stu_ID--Name-----------------Membership Type</h4>
<div>
<?php $query = "SELECT * from Competing_Members"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>5. Display the member with highest attendance percentage</h2>
<h4>Stu_ID--Name---------------Attendace %</h4>
<div>
<?php $query = "SELECT * from Highest_Attendance"?>
<?php include 'in-show-table.php'?>
</div>


<hr/>
<h2>6. List of members who are on the board and travelling team</h2>
<h4>Name----Board Member---Membership Type</h4>
<div>
<?php $query = "SELECT * from List_BoardandTravelling"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>7. List of athletes and their emergency contact with injuries during IPL League</h2>
<h4>League Name---------Name---------------Injury------Emergeny Contact</h4>
<div>
<?php $query = "SELECT * FROM Injured_Players;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>8. Display number of athletes registered to the traveling team.</h2>
<div>
<?php $query = "SELECT * FROM Num_ath_VCURAMS;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>9. Display sum of money used on league fees</h2>
<div>
<?php $query = "SELECT * FROM League_Expense;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>10. Display names of players who played for "VCU CC" team and their positions</h2>
<h4>Name------------------Team Name--Position</h4>
<div>
<?php $query = "SELECT * FROM List_VCUCC_positions;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>11. Find the Total Average for batting and bowing performance for each member</h2>
<h3>Name--------------------Total Average</h3>
<div>
<?php $query = "SELECT * FROM Total_Average;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>12. Display a list of players who have captained the team and are on the board</h2>
<h4>Name---------------Captain</h4>
<div>
<?php $query = "SELECT * FROM Board_Captains;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>13. What is the average money spent on hotels</h2>
<div>
<?php $query = "SELECT * FROM Hotel_Expense;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>14. Find the players who meet the Academic_Requirements (>3,00 GPA).</h2>
<h4>Name------------------------GPA</h4>
<div>
<?php $query = "SELECT * FROM Meets_Academic_Requirements;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>15. Display academic performance of each player</h2>
<h4>Stu_ID--Name----------------------GPA-Attendance Percentage</h4>
<div>
<?php $query = "SELECT * FROM List_acd_perf;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>16. Display batting average of regular members</h2>
<h4>Name-------------------Batting AVG--Membership Type</h4>
<div>
<?php $query = "SELECT * FROM List_battAVG_REG;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>17. What is the total number of students in each team?</h2>
<h4># of students--Team Name</h4>
<div>
<?php $query = "SELECT * FROM Players_per_team;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>18. Display the Leagues with the same fees</h2>
<h4>Leag_ID--Leag Name----fees</h4>
<div>
<?php $query = "SELECT * FROM League_same_fees;"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>19. Show the number of matches scheduled for each league.</h2>
<h4># of matches-----Leag Name</h4>
<div>
<?php $query = "SELECT * FROM NumMatches_Hosted_per_League"?>
<?php include 'in-show-table.php'?>
</div>

<hr/>
<h2>20. Display Total Average of expenses.</h2>
<div>
<?php $query = "SELECT * FROM Expense_AVG"?>
<?php include 'in-show-table.php'?>
</div>