-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 09:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: attendancemsystem
--

-- --------------------------------------------------------

--
-- Table structure for table tbladmin
--

CREATE TABLE tbladmin (
  Id int(10) NOT NULL,
  firstName varchar(50) NOT NULL,
  lastName varchar(50) NOT NULL,
  emailAddress varchar(50) NOT NULL,
  password varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table tbladmin
--

INSERT INTO tbladmin (Id, firstName, lastName, emailAddress, password) VALUES
(1, 'Admin', '', 'admin@mail.com', '32250170a0dca92d53ec9624f336ca24');

-- --------------------------------------------------------

--
-- Table structure for table tblattendance
--

CREATE TABLE tblattendance (
  Id int(10) NOT NULL,
  admissionNo varchar(255) NOT NULL,
  classId varchar(10) NOT NULL,
  classArmId varchar(10) NOT NULL,
  sessionTermId varchar(10) NOT NULL,
  status varchar(10) NOT NULL,
  dateTimeTaken varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table tblclass
--

CREATE TABLE tblclass (
  Id int(10) NOT NULL,
  className varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table tblclass
--

-- --------------------------------------------------------

--
-- Table structure for table tblclassarms
--

CREATE TABLE tblclassarms (
  Id int(10) NOT NULL,
  classId varchar(10) NOT NULL,
  classArmName varchar(255) NOT NULL,
  isAssigned varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table tblclassarms
--

INSERT INTO tblclassarms (Id, classId, classArmName, isAssigned) VALUES
(2, '1', 'S1', '1'),
(4, '1', 'S2', '1'),
(5, '3', 'E1', '1'),
(6, '4', 'N1', '1');

-- --------------------------------------------------------

--
-- Table structure for table tblclassteacher
--

CREATE TABLE tblclassteacher (
  Id int(10) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  emailAddress varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  phoneNo varchar(50) NOT NULL,
  classId varchar(10) NOT NULL,
  classArmId varchar(10) NOT NULL,
  dateCreated varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table tblsessionterm
--

CREATE TABLE tblsessionterm (
  Id int(10) NOT NULL,
  sessionName varchar(50) NOT NULL,
  termId varchar(50) NOT NULL,
  isActive varchar(10) NOT NULL,
  dateCreated varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table tblstudents
--

CREATE TABLE tblstudents (
  Id int(10) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  otherName varchar(255) NOT NULL,
  admissionNumber varchar(255) NOT NULL,
  password varchar(50) NOT NULL,
  classId varchar(10) NOT NULL,
  classArmId varchar(10) NOT NULL,
  dateCreated varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;





CREATE TABLE tblterm (
  Id int(10) NOT NULL,
  termName varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table tblterm
--

INSERT INTO tblterm (Id, termName) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

--
-- Indexes for dumped tables
--

--
-- Indexes for table tbladmin
--
ALTER TABLE tbladmin
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblattendance
--
ALTER TABLE tblattendance
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblclass
--
ALTER TABLE tblclass
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblclassarms
--
ALTER TABLE tblclassarms
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblclassteacher
--
ALTER TABLE tblclassteacher
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblsessionterm
--
ALTER TABLE tblsessionterm
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblstudents
--
ALTER TABLE tblstudents
  ADD PRIMARY KEY (Id);

--
-- Indexes for table tblterm
--
ALTER TABLE tblterm
  ADD PRIMARY KEY (Id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table tbladmin
--
ALTER TABLE tbladmin
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table tblattendance
--
ALTER TABLE tblattendance
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table tblclass
--
ALTER TABLE tblclass
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table tblclassarms
--
ALTER TABLE tblclassarms
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table tblclassteacher
--
ALTER TABLE tblclassteacher
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table tblsessionterm
--
ALTER TABLE tblsessionterm
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table tblstudents
--
ALTER TABLE tblstudents
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table tblterm
--
ALTER TABLE tblterm
  MODIFY Id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;