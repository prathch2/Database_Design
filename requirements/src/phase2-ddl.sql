create table Member (
    Student_ID INT NOT NULL,
    Student_Name VARCHAR(225),
    Student_Address VARCHAR(225),
    Student_PhoneNum VARCHAR(225),
    Student_EmergencyCont VARCHAR(225),
    Student_Dues_Paid VARCHAR(225),
    Membership_type VARCHAR(225),
    primary key (Student_ID)
);

create table Players (
    Team_Name VARCHAR(225) NOT NULL,
    Student_ID INT NOT NULL,
    Membership_type VARCHAR(225),
    Position VARCHAR(225) DEFAULT '',
    primary key (Team_Name)
    foreign key (Student_ID)
    foreign key (Membership_type)
);

create table Players

create table Matches (
    Match_id INT,
    Match_Team_Name VARCHAR(225),
    match_date VARCHAR(225),
    Match_home_team VARCHAR(225),
    Match_opponent VARCHAR(225),
    primary key (Match_id),
    foreign key (Match_Team_Name)
);

/* ask if a primary and forign key can be the same */
create table Academic_Performance (
    Student_ID INT NOT NULL,
    Overall_GPA INT,
    primary key (Student_ID)
);

create table Finance (
    Team_Name VARCHAR(225),
    Dues_paid VARCHAR(225),
    Expenses INT,
    primary key (Team_Name)
);

create table Social_Media (
    Team_Name VARCHAR(225)
    Media_type VARCHAR(225),
    Month VARCHAR(225),
    Accounts_reached INT,
    Account_engagement INT,
    gross_folowers INT,
    primary key (Team_Name)
);
