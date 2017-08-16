create database team21;

use team21;

create table rooms (id int(11)  auto_increment primary key,
				backgroundImage varchar(255) not null,
				backgoundSong varchar(255) not null,
				max_players int(11) not null,
				max_tables int(11) not null);


create table tables (id int(11)  auto_increment primary key,
				max_players int(11) not null,
				min_bid int(11) not null,
				max_bid int(11) not null,
				timelimit int(2) not null,
				);


create table players (id int(11)  auto_increment primary key,
				name varchar(255) not null,
				profile_pic int(11) not null,
				money int(11) not null,
				win int(11) not null,
				lost int(11) not null,
				draw int(11) not null,
				);


create table audit (id int(11)  auto_increment primary key,
				gameID varchar(64) not null,
				playerID int(11) not null,
				gameResult int(1) not null);
				
