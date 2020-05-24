CREATE DATABASE [TestDB];
GO

USE TestDB;
GO

create table LegacySensorReadings(
   Id int not null identity(1,1),
   ReadingId varchar(36) not null primary key,
   ReadingDateTime datetime not null default getdate(),
   LocationId smallint not null,
   PollutionLevel tinyint not null
);
GO

create table SensorReadings(
   ReadingId varchar(36) not null primary key,
   ReadingDateTime datetime not null,
   PollutionLevelId tinyint not null,
   PollutionLevel varchar(20) not null,
   LocationId smallint not null,
   City varchar(100) not null default 'UNKNOWN',
   Country varchar(100) not null default 'UNKNOWN',
   Population int not null default 0,
   Latitude decimal(9,6) not null default 0.0,
   Longitude decimal(9,6) not null default 0.0
);
GO

create table SensorLocations(
   id INT not null primary key,
   City varchar(100) not null default 'UNKNOWN',
   Country varchar(100) not null default 'UNKNOWN',
   Population int not null default 0,
   Latitude decimal(9,6) not null default 0.0,
   Longitude decimal(9,6) not null default 0.0
);
GO
