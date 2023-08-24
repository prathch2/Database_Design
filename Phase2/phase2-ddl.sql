CALL Clear_Database();
CALL Clear_Views();

Drop procedure if exists Clear_Database;
CREATE Procedure Clear_Database()
BEGIN
  drop table if exists adminusers;
  drop table if exists Injuries;
  drop table if exists Expenses;
  drop table if exists Academic_Performance;
  drop table if exists Matches;
  drop table if exists League;
  drop table if exists Player_Stats;
  drop table if exists Member;
END;

 
Drop procedure if exists Clear_Views;
create Procedure Clear_Views()
BEGIN
  DROP VIEW if exists List_Players_emails;
  DROP VIEW if exists Top_5_runners;
  DROP VIEW if exists List_match_loc_league;
  DROP VIEW if exists Competing_Members;
  DROP VIEW if exists Highest_Attendance;
  DROP VIEW if exists List_BoardandTravelling;
  DROP VIEW if exists Injured_Players;
  DROP VIEW if exists Num_ath_VCURAMS;
  DROP VIEW if exists League_Expense;
  DROP VIEW if exists List_VCUCC_positions;
  DROP VIEW if exists Total_Average;
  DROP VIEW if exists Board_Captains;
  DROP VIEW if exists Hotel_Expense;
  DROP VIEW if exists Meets_Academic_Requirements;
  DROP VIEW if exists List_acd_perf;
  DROP VIEW if exists List_battAVG_REG;
  DROP VIEW if exists Players_per_team;
  DROP VIEW if exists League_same_fees;
  DROP VIEW if exists NumMatches_Hosted_per_League;
  DROP VIEW if exists Expense_AVG;
End;

CREATE Table adminusers (
  Username VARCHAR(225),
  Password VARCHAR(225),
  role VARCHAR(225)
);

insert into adminusers(Username, Password, role) values
("Captain1526", "captain123", "captain"),
("admin367", "admin123", "chairs");



create table Member (
    Student_ID INT NOT NULL, 
    Student_Name VARCHAR(225),
    Student_Address VARCHAR(225),
    Student_PhoneNum VARCHAR(225), 
    Student_EmergencyCont VARCHAR(225),
    Student_Dues_Paid VARCHAR(225),
    Membership_type VARCHAR(225),
    Board_Members VARCHAR(225), 
    primary key (Student_ID)
);

insert into Member(Student_ID, Student_Name, Student_Address, Student_PhoneNum, Student_Dues_Paid, Student_EmergencyCont, Membership_type, Board_Members) values
  ("230658","Jocelyne Cobbing","jcobbing0@networkadvertising.org","310-717-3986","Yes","337-786-3326","Travelling","YES"),
  ("346537","Kennan Beckensall","kbeckensall1@plala.or.jp","187-332-3542","Yes","097-716-7843", "Travelling","NO"),
  ("831265","Elmira Starbucke","estarbucke3@patch.com","872-606-9711","Yes","121-842-1221","Travelling","NO"),
  ("572792","Adolph Cicco","acicco4@bloglines.com","337-176-0641","Yes","310-967-2222","Regular","YES"),
  ("802020","Burlie McLurg","bmclurg5@umn.edu","290-407-0414","Yes","222-434-1212","Travelling","YES"),
  ("875216","Dal Dailey","ddailey6@360.cn","764-639-8536","Yes","343-555-6767","Regular","NO"),
  ("849539","Lanie Beany","lbeany7@quantcast.com","715-523-8116","Yes","310-123-6742","Travelling","NO"),
  ("900127","Constantin Gounard","cgounard8@wordpress.com","497-425-2963","Yes","666-111-3232","Travelling","NO"),
  ("107877","Jamima MacMillan","jmacmillan9@omniture.com","297-834-3663","Yes","888-655-9987","Regular","NO"),
  ("599009","Bili Treswell","btreswella@ca.gov","384-426-4032","Yes","123-994-6765","Regular","NO"),
  ("176188","Joice Glas","jglasb@businessinsider.com","460-873-8703","Yes","110-112-2323","Travelling","NO"),
  ("210584","Patrick Truscott","ptruscottc@apple.com","973-631-7467","Yes","320-787-3996","Regular","NO"),
  ("740357","Luisa Ponter","lponterd@state.gov","935-927-9961","Yes","300-917-3486","Travelling","NO"),
  ("814024","Teresina Trusler","ttruslere@w3.org","379-471-3145","Yes","400-323-8643","Travelling","YES"),
  ("482872","Allen Yakovliv","ayakovlivf@yahoo.com","347-195-7429","Yes","500-436-3241","Regular","NO"),
  ("844735","Ash Thickin","athicking@123-reg.co.uk","515-938-9098","Yes","600-545-7787","Travelling","NO"),
  ("364408","Obidiah Fewless","ofewlessh@oaic.gov.au","931-465-0444","Yes","700-887-1241","Regular","NO"),
  ("752355","Randy Lufkin","rlufkini@nationalgeographic.com","474-494-4687","Yes","800-232-8547","Travelling","YES"),
  ("544771","Deanna Featherstonhalgh","dfeatherstonhalghj@ucsd.edu","970-639-5266","Yes","900-700-5261","Regular","NO");


insert into Member(Student_ID, Student_Name, Student_Address, Student_PhoneNum, Student_Dues_Paid, Student_EmergencyCont, Membership_type, Board_Members) values 
($Student_ID, $Student_Name, $Student_Address, $Student_PhoneNum, $Student_Dues_Paid, $Student_EmergencyCont, $Membership_type, $Board_Members);
create table Player_Stats (
    Student_ID INT NOT NULL,
    Team_Name VARCHAR(225) NOT NULL,
    Prefered_Position VARCHAR(225) DEFAULT '',
    Captain VARCHAR(225) DEFAULT "NO",
    Batting_AVG DECIMAL(5,2),
    Bowling_AVG DECIMAL(5,2),
    Matches_played INT,
    Scrimmages_played INT,
    foreign key (Student_ID) REFERENCES Member(Student_ID)
);

insert into Player_Stats(Student_ID, Team_Name, Prefered_Position, Captain ,Batting_AVG,Bowling_AVG,Matches_played,Scrimmages_played) values
  ("230658","VCU RAMS","Batsmen","YES",51.81,80.42,"15","5"),
  ("346537","VCU RAMS","Bowling ","NO",78.73,95.01,"11","8"),
  ("831265","VCU RAMS","Keeper","NO",7.96,89.64,"8","8"),
  ("572792","VCU RAMS","Bowling ","NO",54.91,74.37,"3","4"),
  ("802020","VCU RAMS","Keeper","NO",59.88,2.55,"12","2"),
  ("875216","VCU RAMS","Batsmen","NO",98.55,2.37,"2","1"),
  ("849539","VCU RAMS","Bowling ","NO",64.98,71.38,"13","6"),
  ("900127","VCU RAMS","Batsmen","NO",15.49,86.04,"14","6"),
  ("107877","VCU RAMS","Bowling ","YES",12.88,72.73,"6","8"),
  ("599009","VCU RAMS","Batsmen","NO",74.61,27.33,"13","7"),
  ("176188","VCU RAMS","Bowling ","NO",56.63,82.19,"7","10"),
  ("210584","VCU RAMS","Batsmen","NO",91.16,70.33,"13","2"),
  ("740357","VCU RAMS","Bowling ","NO",65.44,32.73,"4","10"),
  ("814024","VCU CC","Batsmen","NO",63.45,59.46,"5","3"),
  ("482872","VCU CC","Bowling ","YES",3.2,3.33,"1","2"),
  ("844735","VCU CC","Batsmen","NO",74.07,67.98,"12","8"),
  ("364408","VCU CC","Bowling ","NO",24.65,79.9,"8","7"),
  ("752355","VCU CC","Batsmen","NO",49.34,65.17,"8","7"),
  ("544771","VCU CC","Bowling ","NO",18.11,73.04,"10","4")
;

create table League(
    League_id INT,
    League_name VARCHAR(225),
    League_loc VARCHAR(225),
    League_fees INT,
    primary key (League_id)
);

INSERT into League(League_id, League_name, League_loc, League_fees) values
  ("91","NCCA","PA","500"),
  ("6","USA Cricket","FL","500"),
  ("1","International Cricket","FL","4000"),
  ("86","IPL","India","20000"),
  ("77","PSL","Pakistan","15000");

create table Matches (
    Match_id INT,
    League_id INT,
    Team_name_registered VARCHAR(225) NOT NULL,
    Match_date DATE,
    Match_venue VARCHAR(225),
    Match_opponent VARCHAR(225),
    primary key (Match_id),
    foreign key (League_id) REFERENCES League(League_id)
);

 insert into Matches(League_id, match_id,Team_name_registered,Match_date,Match_venue, Match_opponent) values
  ("91","200","VCU RAMS","2015-10-01","Richmond, VA","UMD"),
  ("91","170","VCU RAMS","2016-06-10","Atlanta, GA","UGA"),
  ("6","148","VCU RAMS","2017-04-14","Jacksonville, FL","UFL"),
  ("6","153","VCU RAMS","2018-07-26","Hollywood, FL","UFL"),
  ("1","196","VCU RAMS","2019-06-24","Fishers, IN","UIN"),
  ("1","133","VCU CC","2019-07-05","Gaitherburg, MD","UMD"),
  ("86","105","VCU CC","2019-08-19","Waterbury, CT","UCT"),
  ("77","194","VCU CC","2020-11-23","Baltimore, MD","UMD"),
  ("86","100","VCU CC","2021-04-09","McLean, VA","UVA"),
  ("77","109","VCU CC","2022-01-24","New York, NY","UNY")
;

create table Academic_Performance (
    Student_ID INT NOT NULL DEFAULT 000000,
    Overall_GPA DECIMAL(3,2),
    Attendance_Per DECIMAL(4,2),
    foreign key (Student_ID) REFERENCES Member(Student_ID)
);

insert into Academic_Performance(Student_ID,Overall_GPA,Attendance_Per) values
  ("230658","3.99","94.21"),
  ("346537","3.17","99.91"),
  ("831265","3.06","77.2"),
  ("572792","3.97","93.15"),
  ("802020","3.88","77.25"),
  ("875216","3.69","82.27"),
  ("849539","2.60","74.83"),
  ("900127","2.68","72.32"),
  ("107877","3.75","93.98"),
  ("599009","3.69","86.53"),
  ("176188","2.73","77.52"),
  ("210584","2.74","85.88"),
  ("740357","3.86","96.9"),
  ("814024","2.56","94.23"),
  ("482872","3.20","81.74"),
  ("844735","3.99","97.07"),
  ("364408","3.39","71.92"),
  ("752355","3.95","91.41"),
  ("544771","3.18","75.34")
;

create table Expenses (
    Expense_id INT,
    Expense_date VARCHAR(225),
    League_id INT,
    Money_used INT,
    Reason VARCHAR(225),
    primary key (Expense_id),
    foreign key (League_id) REFERENCES League(League_id)
);

insert into Expenses(Expense_id,League_id,Expense_date,Money_used,Reason) values
  ("8572","91","12-12-2018","831","League Fees"),
  ("9499","91","10-16-2019","1730","Equipments"),
  ("6249","6","01-19-2017","1509","League Fees"),
  ("5409","6","07-01-2020","1532","Food"),
  ("2656","1","12-28-2020","683","Equipments"),
  ("6039","1","05-23-2021","439","Hotel"),
  ("5486","91","04-03-2018","836","Equipments"),
  ("2639","77","09-01-2019","710","League Fees"),
  ("8721","86","10-09-2019","1632","Hotel")
;

create table Injuries (
    Match_id INT,
    Student_id INT NOT NULL,
    Injured_Sick VARCHAR(225), 
    foreign key (Match_id) REFERENCES Matches(Match_id),
    foreign key (Student_id) REFERENCES Member(Student_ID)
);

INSERT into Injuries(Match_id, Student_id, Injured_Sick) values
  ("200","230658","Broken leg"),
  ("170","875216","Fever"),
  ("148","572792","Concussion"),
  ("153","210584","Broken leg"),
  ("196","210584","Torn ACL"),
  ("133","875216","Depression"),
  ("105","482872","Fever"),
  ("194","572792","Broken leg"),
  ("100","482872","Torn ACL"),
  ("109","572792","Concussion")
;

-- 1. Display a list of cricket players and their emails in alphabetical order by their names.
CREATE VIEW List_Players_emails AS 
SELECT Student_ID, Student_Name, Student_Address 
from Member 
ORDER BY Student_Name;

-- 2. Who are top 5 players with highest batting average? Display their batting averages.
CREATE VIEW Top_5_runners AS 
Select m.Student_ID, m.Student_Name, p.Batting_AVG from Member m, Player_Stats p
WHERE m.Student_ID = p.Student_ID
ORDER BY p.Batting_AVG DESC LIMIT 5;

-- 3. Display a list of cricket match locations and the leagues hosting them. Include league fees and match date as well.
CREATE VIEW List_match_loc_league AS
SELECT m.Match_id, m.Match_venue, m.Match_date, l.League_name, l.League_fees 
FROM Matches m, League l
WHERE m.league_id = l.League_id;

-- 4. Who are competing members?
CREATE VIEW Competing_Members AS 
SELECT m.Student_ID, m.Student_Name, m.Membership_type from Member m
WHERE m.Membership_type = 'Travelling'
ORDER BY m.Student_Name;

-- 5. Display member with highest attendance percentages for classes
CREATE VIEW Highest_Attendance AS 
SELECT m.Student_ID, m.Student_Name, a.Attendance_Per from Member m, Academic_Performance a
where m.Student_ID = a.Student_ID
ORDER BY a.Attendance_Per DESC Limit 1;

-- 6. DISPLAY a list of members who are on the board and traveling team
CREATE VIEW List_BoardandTravelling AS 
SELECT Student_Name, Board_Members, Membership_type
FROM Member 
where Board_Members = "Yes" AND Membership_type = "Travelling";

-- 7. List of athletes and their emergency contact with injuries during IPL League
CREATE VIEW Injured_Players AS 
SELECT League.League_name, Member.Student_Name, Injuries.Injured_Sick, Member.Student_EmergencyCont FROM (((Injuries
    INNER JOIN Member ON Injuries.Student_id = Member.Student_ID)
    INNER JOIN Matches ON Injuries.Match_id = Matches.Match_id)
    INNER JOIN League ON Matches.league_id = League.League_id);

-- 8. Display number of athletes registered to the traveling team.
CREATE VIEW Num_ath_VCURAMS AS 
SELECT COUNT(Student_ID) FROM Player_Stats
WHERE Team_Name = "VCU RAMS";

-- 9. Display sum of money used on league fees.
CREATE VIEW League_Expense AS 
Select SUM(Money_used)
FROM Expenses
Where Reason = "League Fees";

-- 10. Display names of players who played for "VCU CC" team and their positions
CREATE VIEW List_VCUCC_positions AS 
SELECT m.Student_Name, p.Team_Name, p.Prefered_Position
FROM Member m, Player_Stats p
WHERE p.Team_Name = "VCU RAMS" AND p.Student_ID = m.Student_ID;

-- 11. Find the Total Average for batting and bowing performance for each member
CREATE VIEW Total_Average AS
SELECT Student_Name, SUM(Batting_AVG + Bowling_AVG) FROM (Player_Stats
  INNER JOIN Member ON Player_Stats.Student_id = Member.Student_ID)
GROUP BY Student_Name;

-- 12. Display a list of players who have captained the team and are on the baord
CREATE VIEW Board_Captains AS 
SELECT m.Student_Name,
    p.Captain
FROM Player_Stats p,
    Member m
Where p.Student_ID = m.Student_ID
    AND p.Captain = "YES"
    AND m.Board_Members = "YES";

-- 13. What is the average money spent on hotel
CREATE VIEW Hotel_Expense AS 
SELECT AVG(Money_used)
FROM Expenses
where Reason = "Hotel";

-- 14. Find the players who meet the Academic_Requirements (>3,00 GPA).
Create VIEW Meets_Academic_Requirements AS
    SELECT Student_Name, Overall_GPA FROM (Academic_Performance
        INNER JOIN Member ON Academic_Performance.Student_id = Member.Student_ID)
    WHERE Overall_GPA > 3.00;

-- 15. Display academic performance of each player
CREATE VIEW List_acd_perf AS 
SELECT m.Student_ID, m.Student_Name, a.Overall_GPA, a.Attendance_Per from Academic_Performance a, Member m
where m.Student_ID = a.Student_Id;

-- 16. Display batting average of regular members
CREATE VIEW List_battAVG_REG AS 
SELECT m.Student_Name, p.Batting_AVG, m.Membership_type
FROM Member m, Player_Stats p
where m.Student_ID = p.student_id AND m.Membership_type = "Regular";

-- 17. - What is the total number of students in each team?
CREATE VIEW Players_per_team AS 
SELECT Count(Student_ID), Team_Name
FROM Player_Stats
GROUP BY Team_Name;

-- 18. -Display the Leagues with the same fees
CREATE VIEW League_same_fees AS 
select * from League where League_fees in (
  select League_fees from League
  group by League_fees having count(*) > 1);

-- 19. - Show the number of matches scheduled for each league.
Create VIEW NumMatches_Hosted_per_League AS
  SELECT count(match_id), League_name FROM (League
    INNER JOIN Matches ON League.League_id = Matches.League_id)
  group by League_name;

-- 20. - Display Total Average of expenses.
CREATE VIEW Expense_AVG AS
SELECT AVG(Money_used) FROM Expenses;