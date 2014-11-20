-- phpMyAdmin SQL Dump
-- version 2.10.0.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 16, 2014 at 02:53 PM
-- Server version: 5.0.37
-- PHP Version: 5.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `370`
-- 
CREATE DATABASE `370` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `370`;

-- --------------------------------------------------------

-- 
-- Table structure for table `admin`
-- 

CREATE TABLE `admin` (
  `password` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `admin`
-- 

INSERT INTO `admin` VALUES ('1234');

-- --------------------------------------------------------

-- 
-- Table structure for table `appointment`
-- 

CREATE TABLE `appointment` (
  `appoint_id` int(11) NOT NULL auto_increment,
  `date` date NOT NULL,
  `time` varchar(15) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(45) NOT NULL,
  PRIMARY KEY  (`appoint_id`),
  KEY `fk_appointment_patient1_idx` (`patient_id`),
  KEY `fk_appointment_doctor1_idx` (`doctor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `appointment`
-- 

INSERT INTO `appointment` VALUES (1, '2014-05-05', '7A.M', 101, 'E-05');
INSERT INTO `appointment` VALUES (2, '2014-05-01', '9A.M', 135, 'E-05');
INSERT INTO `appointment` VALUES (3, '2014-02-25', '7P.M', 141, 'E-05');
INSERT INTO `appointment` VALUES (4, '2014-01-17', '9.15P.M', 106, 'E-05');
INSERT INTO `appointment` VALUES (5, '2014-01-26', '6P.M', 108, 'E-05');
INSERT INTO `appointment` VALUES (6, '2014-02-04', '9P.M', 138, 'E-05');
INSERT INTO `appointment` VALUES (7, '2001-01-01', '5P.M', 101, 'E-45');
INSERT INTO `appointment` VALUES (8, '2013-11-30', '8P.M', 108, 'E-05');
INSERT INTO `appointment` VALUES (9, '2014-04-25', '8P.M', 101, 'E-05');
INSERT INTO `appointment` VALUES (10, '2014-02-01', '9A.M', 102, 'E-37');
INSERT INTO `appointment` VALUES (11, '2014-01-13', '5P.M', 145, 'E-14');
INSERT INTO `appointment` VALUES (12, '2014-02-21', '10A.M', 110, 'E-45');
INSERT INTO `appointment` VALUES (13, '2014-03-31', '7.30P.M', 111, 'E-33');
INSERT INTO `appointment` VALUES (14, '2014-01-05', '6P.M', 112, 'E-24');
INSERT INTO `appointment` VALUES (15, '2014-03-30', '5P.M', 114, 'E-58');
INSERT INTO `appointment` VALUES (16, '2014-02-28', '9.15P.M', 141, 'E-32');
INSERT INTO `appointment` VALUES (17, '2014-02-18', '9A.M', 117, 'E-14');
INSERT INTO `appointment` VALUES (18, '2014-01-26', '9.15P.M', 119, 'E-53');
INSERT INTO `appointment` VALUES (19, '2014-04-08', '9A.M', 120, 'E-32');
INSERT INTO `appointment` VALUES (20, '2014-02-05', '8P.M', 122, 'E-25');
INSERT INTO `appointment` VALUES (21, '2014-02-20', '6P.M', 125, 'E-48');
INSERT INTO `appointment` VALUES (22, '2014-04-04', '9A.M', 126, 'E-25');
INSERT INTO `appointment` VALUES (23, '2014-04-24', '7.30P.M', 127, 'E-47');
INSERT INTO `appointment` VALUES (24, '2014-03-22', '9.15P.M', 129, 'E-46');
INSERT INTO `appointment` VALUES (25, '2014-03-23', '8.45P.M', 131, 'E-33');
INSERT INTO `appointment` VALUES (26, '2013-12-23', '9.15P.M', 107, 'E-06');
INSERT INTO `appointment` VALUES (27, '2013-11-16', '8P.M', 109, 'E-33');
INSERT INTO `appointment` VALUES (28, '2013-12-19', '7.30P.M', 115, 'E-61');
INSERT INTO `appointment` VALUES (29, '2013-12-13', '8.45P.M', 121, 'E-27');
INSERT INTO `appointment` VALUES (30, '2013-12-11', '8P.M', 123, 'E-27');
INSERT INTO `appointment` VALUES (31, '2013-12-17', '9.15P.M', 124, 'E-47');
INSERT INTO `appointment` VALUES (32, '2013-12-22', '5P.M', 132, 'E-32');

-- --------------------------------------------------------

-- 
-- Table structure for table `bill`
-- 

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL auto_increment,
  `room_cost` int(11) NOT NULL,
  `lab_cost` int(11) NOT NULL,
  `medicine_cost` int(11) NOT NULL,
  `doctor_fees` int(11) NOT NULL,
  `discharge_date` date NOT NULL,
  `patient_id` int(11) NOT NULL,
  `total` int(30) NOT NULL,
  PRIMARY KEY  (`bill_id`),
  KEY `fk_bill_patient1_idx` (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `bill`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `consults_with`
-- 

CREATE TABLE `consults_with` (
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(15) NOT NULL,
  KEY `fk_patient_has_doctor_doctor1_idx` (`doctor_id`),
  KEY `fk_patient_has_doctor_patient1_idx` (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `consults_with`
-- 

INSERT INTO `consults_with` VALUES (101, 'E-05');
INSERT INTO `consults_with` VALUES (103, 'E-05');
INSERT INTO `consults_with` VALUES (104, 'E-05');
INSERT INTO `consults_with` VALUES (106, 'E-05');
INSERT INTO `consults_with` VALUES (108, 'E-05');
INSERT INTO `consults_with` VALUES (138, 'E-05');
INSERT INTO `consults_with` VALUES (143, 'E-05');
INSERT INTO `consults_with` VALUES (134, 'E-06');
INSERT INTO `consults_with` VALUES (135, 'E-06');
INSERT INTO `consults_with` VALUES (107, 'E-06');
INSERT INTO `consults_with` VALUES (108, 'E-06');
INSERT INTO `consults_with` VALUES (137, 'E-06');
INSERT INTO `consults_with` VALUES (102, 'E-37');
INSERT INTO `consults_with` VALUES (105, 'E-37');
INSERT INTO `consults_with` VALUES (131, 'E-37');
INSERT INTO `consults_with` VALUES (111, 'E-33');
INSERT INTO `consults_with` VALUES (109, 'E-33');
INSERT INTO `consults_with` VALUES (110, 'E-45');
INSERT INTO `consults_with` VALUES (109, 'E-45');
INSERT INTO `consults_with` VALUES (111, 'E-45');
INSERT INTO `consults_with` VALUES (136, 'E-45');
INSERT INTO `consults_with` VALUES (137, 'E-45');
INSERT INTO `consults_with` VALUES (144, 'E-45');
INSERT INTO `consults_with` VALUES (112, 'E-24');
INSERT INTO `consults_with` VALUES (139, 'E-24');
INSERT INTO `consults_with` VALUES (110, 'E-24');
INSERT INTO `consults_with` VALUES (113, 'E-58');
INSERT INTO `consults_with` VALUES (114, 'E-58');
INSERT INTO `consults_with` VALUES (116, 'E-08');
INSERT INTO `consults_with` VALUES (144, 'E-08');
INSERT INTO `consults_with` VALUES (117, 'E-14');
INSERT INTO `consults_with` VALUES (121, 'E-14');
INSERT INTO `consults_with` VALUES (118, 'E-14');
INSERT INTO `consults_with` VALUES (119, 'E-53');
INSERT INTO `consults_with` VALUES (136, 'E-53');
INSERT INTO `consults_with` VALUES (121, 'E-27');
INSERT INTO `consults_with` VALUES (119, 'E-27');
INSERT INTO `consults_with` VALUES (120, 'E-25');
INSERT INTO `consults_with` VALUES (122, 'E-25');
INSERT INTO `consults_with` VALUES (126, 'E-25');
INSERT INTO `consults_with` VALUES (127, 'E-25');
INSERT INTO `consults_with` VALUES (142, 'E-23');
INSERT INTO `consults_with` VALUES (128, 'E-23');
INSERT INTO `consults_with` VALUES (123, 'E-46');
INSERT INTO `consults_with` VALUES (128, 'E-46');
INSERT INTO `consults_with` VALUES (129, 'E-46');
INSERT INTO `consults_with` VALUES (133, 'E-46');
INSERT INTO `consults_with` VALUES (124, 'E-47');
INSERT INTO `consults_with` VALUES (127, 'E-47');
INSERT INTO `consults_with` VALUES (142, 'E-47');
INSERT INTO `consults_with` VALUES (126, 'E-47');
INSERT INTO `consults_with` VALUES (145, 'E-48');
INSERT INTO `consults_with` VALUES (125, 'E-48');
INSERT INTO `consults_with` VALUES (141, 'E-61');
INSERT INTO `consults_with` VALUES (115, 'E-61');
INSERT INTO `consults_with` VALUES (130, 'E-61');
INSERT INTO `consults_with` VALUES (132, 'E-61');
INSERT INTO `consults_with` VALUES (133, 'E-61');
INSERT INTO `consults_with` VALUES (130, 'E-28');
INSERT INTO `consults_with` VALUES (140, 'E-33');
INSERT INTO `consults_with` VALUES (131, 'E-33');
INSERT INTO `consults_with` VALUES (141, 'E-32');
INSERT INTO `consults_with` VALUES (132, 'E-32');
INSERT INTO `consults_with` VALUES (122, 'E-32');
INSERT INTO `consults_with` VALUES (112, 'E-32');
INSERT INTO `consults_with` VALUES (120, 'E-32');
INSERT INTO `consults_with` VALUES (113, 'E-57');
INSERT INTO `consults_with` VALUES (145, 'E-14');
INSERT INTO `consults_with` VALUES (151, 'E-05');
INSERT INTO `consults_with` VALUES (101, 'E-45');

-- --------------------------------------------------------

-- 
-- Table structure for table `doctor`
-- 

CREATE TABLE `doctor` (
  `id` varchar(15) NOT NULL,
  `degree` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `fees` int(11) NOT NULL,
  `password` varchar(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `doctor`
-- 

INSERT INTO `doctor` VALUES ('E-05', 'FCPS', 'Neurology', 1000, '1234');
INSERT INTO `doctor` VALUES ('E-14', 'FRCS', 'Orthopaedics', 1000, '1234');
INSERT INTO `doctor` VALUES ('E-23', 'MRCS', 'Gynecology', 1000, '1234');
INSERT INTO `doctor` VALUES ('E-24', 'FRCS', 'Cardiology', 1000, '1234');
INSERT INTO `doctor` VALUES ('E-25', 'FRCS', 'Gynecology', 1000, '1234');
INSERT INTO `doctor` VALUES ('E-27', 'FCPS', 'Orthopaedics', 1000, '1234');
INSERT INTO `doctor` VALUES ('E-28', 'MS', 'Neurology', 800, '1234');
INSERT INTO `doctor` VALUES ('E-32', 'MD', 'Gynecology', 800, '1234');
INSERT INTO `doctor` VALUES ('E-33', 'MS', 'Radiology', 800, '1234');
INSERT INTO `doctor` VALUES ('E-37', 'MS', 'Neurology', 800, '1234');
INSERT INTO `doctor` VALUES ('E-45', 'MD', 'Urology', 800, '1234');
INSERT INTO `doctor` VALUES ('E-46', 'MBBS', 'Neurology', 500, '1234');
INSERT INTO `doctor` VALUES ('E-47', 'MBBS', 'Gynecology', 500, '1234');
INSERT INTO `doctor` VALUES ('E-48', 'MBBS', 'Pathology', 500, '1234');
INSERT INTO `doctor` VALUES ('E-53', 'MBBS', 'Pathology', 500, '1234');
INSERT INTO `doctor` VALUES ('E-57', 'MBBS', 'Cardiology', 500, '1234');
INSERT INTO `doctor` VALUES ('E-58', 'MBBS', 'Cardiology', 500, '1234');
INSERT INTO `doctor` VALUES ('E-61', 'MBBS', 'Cardiology', 500, '1234');
INSERT INTO `doctor` VALUES ('E-06', 'MBBS', 'Radiology', 500, '4567');
INSERT INTO `doctor` VALUES ('E-08', 'MBBS', 'Radiology', 500, '4567');

-- --------------------------------------------------------

-- 
-- Table structure for table `employee`
-- 

CREATE TABLE `employee` (
  `employee_id` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `tel_no` int(11) NOT NULL,
  `job_type` varchar(45) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY  (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `employee`
-- 

INSERT INTO `employee` VALUES ('E-05', 'Angela Cox', 43, 'Male', 1716989888, 'doctor', 40000);
INSERT INTO `employee` VALUES ('E-06', 'Chris Greene', 55, 'Male', 1510698999, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-08', 'Louise Brown', 45, 'Female', 1710779868, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-14', 'Julia Carr', 55, 'Male', 1716569789, 'doctor', 40000);
INSERT INTO `employee` VALUES ('E-25', 'Peter Richardso', 35, 'Female', 1710979989, 'doctor', 40000);
INSERT INTO `employee` VALUES ('E-24', 'Ashley Boyd', 55, 'Female', 1616619997, 'doctor', 40000);
INSERT INTO `employee` VALUES ('E-23', 'Clarence White', 52, 'Male', 1610899996, 'doctor', 40000);
INSERT INTO `employee` VALUES ('E-28', 'Janice Mason', 34, 'Male', 1710899999, 'doctor', 30000);
INSERT INTO `employee` VALUES ('E-27', 'Lori Moore', 55, 'Female', 1510999977, 'doctor', 40000);
INSERT INTO `employee` VALUES ('E-33', 'Doris Kelly', 35, 'Female', 1510898998, 'doctor', 30000);
INSERT INTO `employee` VALUES ('E-32', 'Helen Ellis', 44, 'Female', 1710986888, 'doctor', 30000);
INSERT INTO `employee` VALUES ('E-37', 'Doris Stanley', 52, 'Male', 1710898879, 'doctor', 30000);
INSERT INTO `employee` VALUES ('E-48', 'Annie Elliott', 45, 'Male', 1710999789, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-47', 'Norma Fisher', 55, 'Male', 1710869787, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-46', 'Eric West', 54, 'Female', 1716778887, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-45', 'Kathryn Mendoza', 55, 'Female', 1516899698, 'doctor', 30000);
INSERT INTO `employee` VALUES ('E-53', 'Norma Watson', 55, 'Male', 1710877868, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-58', 'Carol Sanders', 52, 'Female', 1610996977, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-57', 'Antonio Smith', 53, 'Male', 1516989988, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-61', 'Jennifer Armstr', 54, 'Male', 1710979857, 'doctor', 25000);
INSERT INTO `employee` VALUES ('E-02', 'Anne Ross', 24, 'Female', 1710899998, 'receptionist', 8000);
INSERT INTO `employee` VALUES ('E-19', 'Ruth Burke', 25, 'Female', 1610899992, 'receptionist', 8000);
INSERT INTO `employee` VALUES ('E-39', 'Mary Tucker', 22, 'Female', 1516599699, 'receptionist', 8000);
INSERT INTO `employee` VALUES ('E-40', 'Tammy Snyder', 23, 'Female', 1516996998, 'receptionist', 8000);
INSERT INTO `employee` VALUES ('E-52', 'Keith Torres', 23, 'Female', 1610899796, 'receptionist', 8000);
INSERT INTO `employee` VALUES ('E-59', 'Teresa Richards', 22, 'Female', 1710989888, 'receptionist', 8000);
INSERT INTO `employee` VALUES ('E-01', 'Jeffrey Evans', 35, 'Male', 1510988899, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-03', 'Randy Adams', 25, 'Male', 1616799999, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-04', 'Jennifer Murphy', 25, 'Female', 1716888978, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-07', 'Teresa Bradley', 53, 'Female', 1710797979, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-09', 'Edward Palmer', 42, 'Female', 1710999978, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-10', 'Tammy Taylor', 52, 'Male', 1716899986, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-11', 'Jeffrey Roberts', 52, 'Male', 1610889889, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-12', 'Jessica Richard', 55, 'Male', 1716899889, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-13', 'Jane Jacobs', 35, 'Male', 1710979998, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-15', 'Mary Thompson', 35, 'Female', 1710599889, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-16', 'Jessica Ferguso', 54, 'Female', 1510999599, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-17', 'Tina Howard', 45, 'Male', 1716789699, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-18', 'Julie Marshall', 55, 'Female', 1616998699, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-50', 'Aaron Gonzalez', 55, 'Female', 1716999988, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-49', 'Samuel Ramirez', 55, 'Male', 1710989999, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-44', 'Bonnie Mason', 55, 'Female', 1610979998, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-43', 'Billy Mason', 54, 'Female', 1510969998, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-42', 'Edward Carpente', 54, 'Female', 1616975897, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-41', 'Mark Watkins', 55, 'Female', 1516899989, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-38', 'Judy Lawrence', 55, 'Male', 1716979897, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-36', 'Helen Olson', 55, 'Male', 1710849879, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-35', 'Lois Jordan', 25, 'Female', 1516879899, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-34', 'Ashley Thompson', 52, 'Male', 1516979996, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-31', 'Tina Lane', 54, 'Female', 1716988999, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-30', 'Martin Jackson', 55, 'Female', 1616799798, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-29', 'Keith Hart', 55, 'Male', 1616999988, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-26', 'Michael Carpent', 54, 'Female', 1710689687, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-22', 'Phillip Woods', 55, 'Female', 1516918689, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-21', 'Andrea Ellis', 45, 'Female', 1616978449, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-20', 'Roy Stone', 34, 'Male', 1710795979, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-60', 'Johnny Owens', 55, 'Male', 1610898899, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-56', 'Joseph Foster', 45, 'Male', 1710859779, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-55', 'James Nichols', 54, 'Male', 1710969496, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-54', 'Steven Bell', 55, 'Female', 1510999989, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-51', 'Janice Murphy', 45, 'Male', 1610943799, 'nurse', 12000);
INSERT INTO `employee` VALUES ('E-70', 'Sharon Ward', 55, 'Male', 1716998998, 'IT', 15000);
INSERT INTO `employee` VALUES ('E-69', 'Tammy Marshall', 52, 'Male', 1710958989, 'IT', 15000);
INSERT INTO `employee` VALUES ('E-68', 'Norma Gutierrez', 45, 'Female', 1710999988, 'IT', 15000);
INSERT INTO `employee` VALUES ('E-67', 'Justin Watson', 53, 'Female', 1610999979, 'IT', 15000);
INSERT INTO `employee` VALUES ('E-66', 'Kelly Austin', 44, 'Female', 1716988689, 'Security Guard', 6000);
INSERT INTO `employee` VALUES ('E-65', 'Diane Hill', 25, 'Male', 1510799899, 'Security Guard', 6000);
INSERT INTO `employee` VALUES ('E-64', 'Catherine Sims', 45, 'Female', 1610698879, 'Security Guard', 6000);
INSERT INTO `employee` VALUES ('E-63', 'Phillip Bowman', 35, 'Male', 1710798879, 'Security Guard', 6000);

-- --------------------------------------------------------

-- 
-- Table structure for table `gives_test`
-- 

CREATE TABLE `gives_test` (
  `doctor_id` varchar(15) NOT NULL,
  `report_id` varchar(15) NOT NULL,
  `patient_id` int(11) default NULL,
  KEY `fk_doctor_has_lab_report_lab_report1_idx` (`report_id`),
  KEY `fk_doctor_has_lab_report_doctor1_idx` (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `gives_test`
-- 

INSERT INTO `gives_test` VALUES ('E-05', 'L-01', 101);
INSERT INTO `gives_test` VALUES ('E-37', 'L-02', 102);
INSERT INTO `gives_test` VALUES ('E-37', 'L-03', 105);
INSERT INTO `gives_test` VALUES ('E-06', 'L-04', 107);
INSERT INTO `gives_test` VALUES ('E-06', 'L-05', 108);
INSERT INTO `gives_test` VALUES ('E-33', 'L-06', 109);
INSERT INTO `gives_test` VALUES ('E-33', 'L-07', 111);
INSERT INTO `gives_test` VALUES ('E-58', 'L-08', 112);
INSERT INTO `gives_test` VALUES ('E-58', 'L-09', 113);
INSERT INTO `gives_test` VALUES ('E-05', 'L-10', 103);
INSERT INTO `gives_test` VALUES ('E-24', 'L-11', 112);
INSERT INTO `gives_test` VALUES ('E-06', 'L-12', 108);
INSERT INTO `gives_test` VALUES ('E-46', 'L-13', 129);
INSERT INTO `gives_test` VALUES ('E-37', 'L-14', 102);
INSERT INTO `gives_test` VALUES ('E-14', 'L-15', 117);
INSERT INTO `gives_test` VALUES ('E-32', 'L-16', 122);
INSERT INTO `gives_test` VALUES ('E-46', 'L-17', 123);
INSERT INTO `gives_test` VALUES ('E-23', 'L-18', 124);
INSERT INTO `gives_test` VALUES ('E-23', 'L-19', 124);
INSERT INTO `gives_test` VALUES ('E-47', 'L-20', 124);
INSERT INTO `gives_test` VALUES ('E-28', 'L-21', 130);
INSERT INTO `gives_test` VALUES ('E-45', 'L-22', 131);
INSERT INTO `gives_test` VALUES ('E-48', 'L-23', 125);
INSERT INTO `gives_test` VALUES ('E-33', 'L-24', 131);
INSERT INTO `gives_test` VALUES ('E-25', 'L-25', 127);
INSERT INTO `gives_test` VALUES ('E-37', 'L-26', 140);
INSERT INTO `gives_test` VALUES ('E-45', 'L-27', 145);
INSERT INTO `gives_test` VALUES ('E-14', 'L-28', 141);
INSERT INTO `gives_test` VALUES ('E-61', 'L-29', 141);
INSERT INTO `gives_test` VALUES ('E-32', 'L-30', 130);
INSERT INTO `gives_test` VALUES ('E-32', 'L-31', 120);
INSERT INTO `gives_test` VALUES ('E-25', 'L-32', 120);
INSERT INTO `gives_test` VALUES ('E-08', 'L-33', 129);
INSERT INTO `gives_test` VALUES ('E-46', 'L-34', 144);
INSERT INTO `gives_test` VALUES ('E-28', 'L-35', 130);

-- --------------------------------------------------------

-- 
-- Table structure for table `governs`
-- 

CREATE TABLE `governs` (
  `room_no` varchar(15) NOT NULL,
  `nurse_id` varchar(15) NOT NULL,
  KEY `fk_nurse_has_room_room1_idx` (`room_no`),
  KEY `fk_nurse_has_room_nurse1_idx` (`nurse_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `governs`
-- 

INSERT INTO `governs` VALUES ('R-201', 'E-34');
INSERT INTO `governs` VALUES ('R-202', 'E-34');
INSERT INTO `governs` VALUES ('R-203', 'E-09');
INSERT INTO `governs` VALUES ('R-204', 'E-09');
INSERT INTO `governs` VALUES ('R-205', 'E-20');
INSERT INTO `governs` VALUES ('R-206', 'E-20');
INSERT INTO `governs` VALUES ('R-207', 'E-35');
INSERT INTO `governs` VALUES ('R-208', 'E-35');
INSERT INTO `governs` VALUES ('R-209', 'E-21');
INSERT INTO `governs` VALUES ('R-210', 'E-21');
INSERT INTO `governs` VALUES ('R-211', 'E-36');
INSERT INTO `governs` VALUES ('R-212', 'E-36');
INSERT INTO `governs` VALUES ('R-213', 'E-10');
INSERT INTO `governs` VALUES ('R-214', 'E-10');
INSERT INTO `governs` VALUES ('R-215', 'E-38');
INSERT INTO `governs` VALUES ('R-216', 'E-38');
INSERT INTO `governs` VALUES ('R-217', 'E-11');
INSERT INTO `governs` VALUES ('R-218', 'E-11');
INSERT INTO `governs` VALUES ('R-219', 'E-41');
INSERT INTO `governs` VALUES ('R-220', 'E-41');
INSERT INTO `governs` VALUES ('R-221', 'E-26');
INSERT INTO `governs` VALUES ('R-222', 'E-26');
INSERT INTO `governs` VALUES ('R-223', 'E-42');
INSERT INTO `governs` VALUES ('R-224', 'E-42');
INSERT INTO `governs` VALUES ('R-225', 'E-29');
INSERT INTO `governs` VALUES ('R-226', 'E-29');
INSERT INTO `governs` VALUES ('R-227', 'E-43');
INSERT INTO `governs` VALUES ('R-228', 'E-43');
INSERT INTO `governs` VALUES ('R-229', 'E-12');
INSERT INTO `governs` VALUES ('R-230', 'E-12');
INSERT INTO `governs` VALUES ('R-231', 'E-44');
INSERT INTO `governs` VALUES ('R-232', 'E-44');
INSERT INTO `governs` VALUES ('R-233', 'E-13');
INSERT INTO `governs` VALUES ('R-234', 'E-13');
INSERT INTO `governs` VALUES ('R-235', 'E-30');
INSERT INTO `governs` VALUES ('R-236', 'E-30');
INSERT INTO `governs` VALUES ('R-237', 'E-31');
INSERT INTO `governs` VALUES ('R-238', 'E-31');
INSERT INTO `governs` VALUES ('R-238', 'E-22');
INSERT INTO `governs` VALUES ('R-240', 'E-22');
INSERT INTO `governs` VALUES ('R-301', 'E-49');
INSERT INTO `governs` VALUES ('R-302', 'E-49');
INSERT INTO `governs` VALUES ('R-303', 'E-01');
INSERT INTO `governs` VALUES ('R-304', 'E-01');
INSERT INTO `governs` VALUES ('R-305', 'E-50');
INSERT INTO `governs` VALUES ('R-306', 'E-50');
INSERT INTO `governs` VALUES ('R-307', 'E-51');
INSERT INTO `governs` VALUES ('R-308', 'E-51');
INSERT INTO `governs` VALUES ('R-309', 'E-15');
INSERT INTO `governs` VALUES ('R-310', 'E-15');
INSERT INTO `governs` VALUES ('R-311', 'E-54');
INSERT INTO `governs` VALUES ('R-312', 'E-54');
INSERT INTO `governs` VALUES ('R-313', 'E-55');
INSERT INTO `governs` VALUES ('R-314', 'E-55');
INSERT INTO `governs` VALUES ('R-315', 'E-03');
INSERT INTO `governs` VALUES ('R-316', 'E-03');
INSERT INTO `governs` VALUES ('R-317', 'E-56');
INSERT INTO `governs` VALUES ('R-318', 'E-56');
INSERT INTO `governs` VALUES ('R-319', 'E-60');
INSERT INTO `governs` VALUES ('R-320', 'E-60');
INSERT INTO `governs` VALUES ('R-321', 'E-16');
INSERT INTO `governs` VALUES ('R-322', 'E-16');
INSERT INTO `governs` VALUES ('R-323', 'E-04');
INSERT INTO `governs` VALUES ('R-324', 'E-04');
INSERT INTO `governs` VALUES ('R-325', 'E-17');
INSERT INTO `governs` VALUES ('R-326', 'E-17');
INSERT INTO `governs` VALUES ('R-327', 'E-18');
INSERT INTO `governs` VALUES ('R-328', 'E-18');
INSERT INTO `governs` VALUES ('R-329', 'E-07');
INSERT INTO `governs` VALUES ('R-330', 'E-07');

-- --------------------------------------------------------

-- 
-- Table structure for table `lab_report`
-- 

CREATE TABLE `lab_report` (
  `report_id` varchar(15) NOT NULL,
  `type` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `cost` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY  (`report_id`),
  KEY `fk_lab_report_patient1_idx` (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `lab_report`
-- 

INSERT INTO `lab_report` VALUES ('L-33', 'Angiography', '10.05.13', 3600, 144);
INSERT INTO `lab_report` VALUES ('L-34', 'Myelography', '15.07.13', 2500, 129);
INSERT INTO `lab_report` VALUES ('L-13', 'Ultrasonography', '20.07.13', 5000, 129);
INSERT INTO `lab_report` VALUES ('L-01', 'Cholesterol', '23.03.13', 1200, 101);
INSERT INTO `lab_report` VALUES ('L-02', 'LDL-C', '27.03.13', 500, 102);
INSERT INTO `lab_report` VALUES ('L-14', 'HDL-C', '27.03.13', 500, 102);
INSERT INTO `lab_report` VALUES ('L-03', 'Triglyceride', '11.02.13', 700, 105);
INSERT INTO `lab_report` VALUES ('L-04', 'Blood Test', '29.01.13', 200, 107);
INSERT INTO `lab_report` VALUES ('L-05', 'Fibrinogen', '05.04.13', 1500, 108);
INSERT INTO `lab_report` VALUES ('L-12', 'Ferritin', '05.04.13', 1000, 108);
INSERT INTO `lab_report` VALUES ('L-26', 'Bilirubin', '22.04.13', 500, 109);
INSERT INTO `lab_report` VALUES ('L-06', 'Stool', '22.04.13', 800, 109);
INSERT INTO `lab_report` VALUES ('L-07', 'Fluoroscopy', '16.02.13', 2200, 111);
INSERT INTO `lab_report` VALUES ('L-08', 'Brain scans', '02.02.13', 7000, 112);
INSERT INTO `lab_report` VALUES ('L-09', 'Angiography', '17.05.13', 3600, 113);
INSERT INTO `lab_report` VALUES ('L-10', 'Myelography', '29.02.13', 2500, 103);
INSERT INTO `lab_report` VALUES ('L-11', 'Echocardiogram', '05.02.13', 3000, 112);
INSERT INTO `lab_report` VALUES ('L-15', 'CT Scan', '07.04.13', 4000, 117);
INSERT INTO `lab_report` VALUES ('L-16', 'Ultrasonography', '26.03.13', 5000, 122);
INSERT INTO `lab_report` VALUES ('L-17', 'MRI', '27.06.13', 4000, 123);
INSERT INTO `lab_report` VALUES ('L-18', 'Triglyceride', '08.05.13', 700, 124);
INSERT INTO `lab_report` VALUES ('L-19', 'Blood Test', '11.05.13', 200, 124);
INSERT INTO `lab_report` VALUES ('L-20', 'Fibrinogen', '11.05.13', 1500, 124);
INSERT INTO `lab_report` VALUES ('L-30', 'Ferritin', '25.02.13', 1000, 130);
INSERT INTO `lab_report` VALUES ('L-21', 'Bilirubin', '27.02.13', 500, 130);
INSERT INTO `lab_report` VALUES ('L-35', 'Stool', '27.02.13', 800, 130);
INSERT INTO `lab_report` VALUES ('L-22', 'Fluoroscopy', '06.02.13', 2200, 131);
INSERT INTO `lab_report` VALUES ('L-24', 'Angiography', '06.02.13', 3600, 131);
INSERT INTO `lab_report` VALUES ('L-23', 'Brain scans', '19.04.13', 7000, 125);
INSERT INTO `lab_report` VALUES ('L-25', 'Myelography', '18.05.13', 2500, 127);
INSERT INTO `lab_report` VALUES ('L-27', 'Echocardiogram', '17.05.13', 3000, 140);
INSERT INTO `lab_report` VALUES ('L-28', 'Ultrasonography', '11.06.13', 5000, 145);
INSERT INTO `lab_report` VALUES ('L-29', 'CT Scan', '23.01.13', 4000, 141);
INSERT INTO `lab_report` VALUES ('L-31', 'MRI', '15.03.13', 4000, 120);
INSERT INTO `lab_report` VALUES ('L-32', 'HDL-C', '', 500, 120);

-- --------------------------------------------------------

-- 
-- Table structure for table `medicine`
-- 

CREATE TABLE `medicine` (
  `name` varchar(45) NOT NULL,
  `company` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `medicine`
-- 

INSERT INTO `medicine` VALUES ('Doxapram', 'Novo Nordisk', 'cream', 100);
INSERT INTO `medicine` VALUES ('Oxazepam', 'Globe', 'syrup', 112);
INSERT INTO `medicine` VALUES ('Quetiapine', 'Amico', 'cream', 56);
INSERT INTO `medicine` VALUES ('Lorazepam', 'Opsonin', 'capsule', 20);
INSERT INTO `medicine` VALUES ('Ketamine', 'Globe', 'syrup', 25);
INSERT INTO `medicine` VALUES ('Etomidate', 'Incepta', 'capsule', 37);
INSERT INTO `medicine` VALUES ('Buspirone', 'Renata', 'ointment', 210);
INSERT INTO `medicine` VALUES ('Alprazolam', 'Amico', 'syrup', 320);
INSERT INTO `medicine` VALUES ('Propranolol', 'Novo Nordisk', 'capsule', 45);
INSERT INTO `medicine` VALUES ('Midazolam', 'Amico', 'tablet', 38);
INSERT INTO `medicine` VALUES ('Methylphenidate', 'Renata', 'capsule', 87);
INSERT INTO `medicine` VALUES ('Perphenazine', 'Opsonin', 'ointment', 12);
INSERT INTO `medicine` VALUES ('Divalproex', 'Opsonin', 'capsule', 31);
INSERT INTO `medicine` VALUES ('Mirtazapine', 'Incepta', 'tablet', 65);
INSERT INTO `medicine` VALUES ('Trazodone', 'Delta', 'cream', 76);
INSERT INTO `medicine` VALUES ('Venlafaxine', 'Delta', 'cream', 43);
INSERT INTO `medicine` VALUES ('Nefazodone', 'Aristopharma', 'cream', 32);
INSERT INTO `medicine` VALUES ('Phenelzine', 'Renata', 'syrup', 76);
INSERT INTO `medicine` VALUES ('Amitriptyline', 'Beximco', 'syrup', 12);
INSERT INTO `medicine` VALUES ('Amoxapine', 'Renata', 'syrup', 8);
INSERT INTO `medicine` VALUES ('Fluoxetine', 'Amico', 'cream', 90);
INSERT INTO `medicine` VALUES ('Isoflurane', 'Incepta', 'syrup', 154);
INSERT INTO `medicine` VALUES ('Enflurane', 'Opsonin', 'ointment', 67);
INSERT INTO `medicine` VALUES ('Zaleplon', 'Globe', 'tablet', 78);
INSERT INTO `medicine` VALUES ('Zopiclone', 'Novo Nordisk', 'cream', 80);
INSERT INTO `medicine` VALUES ('en', 'en', 'en', 12);

-- --------------------------------------------------------

-- 
-- Table structure for table `nurse`
-- 

CREATE TABLE `nurse` (
  `id` varchar(15) NOT NULL,
  `experience` varchar(45) NOT NULL,
  `nurse_super_id` varchar(15) default NULL,
  `password` varchar(4) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_nurse_nurse1_idx` (`nurse_super_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `nurse`
-- 

INSERT INTO `nurse` VALUES ('E-01', '13', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-03', '5', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-04', '6', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-07', '6', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-09', '8', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-10', '9', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-11', '3', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-12', '2', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-13', '5', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-15', '7', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-16', '8', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-17', '9', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-18', '10', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-20', '4', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-21', '3', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-22', '4', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-26', '6', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-29', '8', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-30', '7', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-31', '5', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-34', '12', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-35', '9', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-36', '8', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-38', '7', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-41', '5', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-42', '5', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-43', '4', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-44', '1', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-49', '8', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-50', '7', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-51', '6', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-54', '6', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-55', '2', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-56', '1', NULL, '1234');
INSERT INTO `nurse` VALUES ('E-60', '2', NULL, '1234');

-- --------------------------------------------------------

-- 
-- Table structure for table `patient`
-- 

CREATE TABLE `patient` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `blood_group` varchar(45) NOT NULL,
  `tel_no` int(11) NOT NULL,
  `admission_date` date NOT NULL,
  `room_no` varchar(45) NOT NULL,
  `password` varchar(4) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_patient_room_idx` (`room_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

-- 
-- Dumping data for table `patient`
-- 

INSERT INTO `patient` VALUES (101, 'Ora Walter', 30, 'Female', 'O+', 1114230558, '2013-03-03', 'R-201', '1234');
INSERT INTO `patient` VALUES (102, 'Nayda Perkins', 42, 'Female', 'AB+', 1557749361, '2013-03-17', 'R-202', '1234');
INSERT INTO `patient` VALUES (103, 'Aspen Acevedo', 62, 'Male', 'O-', 1889535276, '2013-02-17', 'R-203', '1234');
INSERT INTO `patient` VALUES (104, 'Kermit Mccoy', 31, 'Male', 'A+', 1889905246, '2013-03-21', 'R-204', '1234');
INSERT INTO `patient` VALUES (105, 'Constance Steve', 59, 'Male', 'AB-', 1376773466, '2013-02-22', 'R-205', '1234');
INSERT INTO `patient` VALUES (106, 'Mannix Guerrero', 60, 'Female', 'B-', 1720766205, '2013-06-05', 'R-206', '1234');
INSERT INTO `patient` VALUES (107, 'Marshall Mcmaho', 38, 'Male', 'O+', 1584707416, '2013-01-19', 'R-207', '1234');
INSERT INTO `patient` VALUES (108, 'Suki Strong', 22, 'Female', 'A+', 1470801741, '2013-03-28', 'R-208', '1234');
INSERT INTO `patient` VALUES (109, 'Lael Lynn', 68, 'Male', 'B+', 1067633444, '2013-04-16', 'R-209', '1234');
INSERT INTO `patient` VALUES (110, 'Anjolie Peterse', 31, 'Male', 'O+', 1324166306, '2013-05-03', 'R-210', '1234');
INSERT INTO `patient` VALUES (111, 'Tatiana Bentley', 30, 'Male', 'AB-', 1257800366, '2013-02-05', 'R-211', '1234');
INSERT INTO `patient` VALUES (112, 'Drake Garner', 53, 'Female', 'O+', 1848276998, '2013-01-26', 'R-212', '1234');
INSERT INTO `patient` VALUES (113, 'Upton Snider', 47, 'Female', 'A-', 1805065093, '2013-05-13', 'R-213', '1234');
INSERT INTO `patient` VALUES (114, 'Veronica Petty', 54, 'Male', 'O+', 1700199774, '2013-05-06', 'R-214', '1234');
INSERT INTO `patient` VALUES (115, 'Jolie Cabrera', 31, 'Female', 'AB+', 1276264517, '2013-05-11', 'R-215', '1234');
INSERT INTO `patient` VALUES (116, 'Lamar Dominguez', 69, 'Male', 'O+', 1849535113, '2013-03-20', 'R-216', '1234');
INSERT INTO `patient` VALUES (117, 'Pascale Chavez', 42, 'Male', 'AB+', 1726927166, '2013-03-30', 'R-217', '1234');
INSERT INTO `patient` VALUES (118, 'Lacy Jackson', 24, 'Female', 'O+', 1947627294, '2013-03-02', 'R-218', '1234');
INSERT INTO `patient` VALUES (119, 'Martin Tyson', 70, 'Female', 'A+', 1251985659, '2013-02-09', 'R-219', '1234');
INSERT INTO `patient` VALUES (120, 'Neville Lucas', 22, 'Female', 'O+', 1996344022, '2013-03-05', 'R-220', '1234');
INSERT INTO `patient` VALUES (121, 'Zenaida Lee', 35, 'Female', 'B+', 1842311493, '2013-02-08', 'R-221', '1234');
INSERT INTO `patient` VALUES (122, 'Roth Washington', 63, 'Male', 'A+', 1471835374, '2013-03-19', 'R-222', '1234');
INSERT INTO `patient` VALUES (123, 'Jason Aguilar', 69, 'Female', 'AB-', 1069081600, '2013-06-23', 'R-223', '1234');
INSERT INTO `patient` VALUES (124, 'Carter Alford', 47, 'Male', 'O+', 1546553332, '2013-05-02', 'R-224', '1234');
INSERT INTO `patient` VALUES (125, 'Merrill Howard', 63, 'Male', 'B+', 1335087755, '2013-04-15', 'R-225', '1234');
INSERT INTO `patient` VALUES (126, 'Autumn Drake', 56, 'Female', 'AB+', 1480399241, '2013-04-21', 'R-301', '1234');
INSERT INTO `patient` VALUES (127, 'Madaline Garret', 61, 'Male', 'O+', 1737658164, '2013-05-11', 'R-302', '1234');
INSERT INTO `patient` VALUES (128, 'Elton Marsh', 63, 'Male', 'O-', 1799873597, '2013-01-13', 'R-303', '1234');
INSERT INTO `patient` VALUES (129, 'Ariana Richard', 51, 'Female', 'A+', 1509800156, '2013-06-27', 'R-304', '1234');
INSERT INTO `patient` VALUES (130, 'Imogene Copelan', 58, 'Female', 'O+', 1966769814, '2013-02-20', 'R-305', '1234');
INSERT INTO `patient` VALUES (131, 'Selma Shannon', 47, 'Female', 'AB+', 1477366061, '2013-01-27', 'R-306', '1234');
INSERT INTO `patient` VALUES (132, 'Camilla Vaughan', 65, 'Male', 'AB+', 1507674160, '2013-04-15', 'R-307', '1234');
INSERT INTO `patient` VALUES (133, 'Davis Benjamin', 53, 'Male', 'O+', 1786195183, '2013-03-13', 'R-308', '1234');
INSERT INTO `patient` VALUES (134, 'Yetta Jones', 33, 'Male', 'B+', 1236101018, '2013-02-08', 'R-309', '1234');
INSERT INTO `patient` VALUES (135, 'Boris Barrera', 67, 'Female', 'A+', 1685434818, '2013-05-09', 'R-310', '1234');
INSERT INTO `patient` VALUES (136, 'Derek Hernandez', 22, 'Male', 'AB+', 1649495891, '2013-05-13', 'R-311', '1234');
INSERT INTO `patient` VALUES (137, 'Brooke Melendez', 66, 'Male', 'O+', 1819156940, '2013-05-09', 'R-312', '1234');
INSERT INTO `patient` VALUES (138, 'Dara Boyd', 47, 'Female', 'B+', 1638056036, '2013-01-25', 'R-313', '1234');
INSERT INTO `patient` VALUES (139, 'Kyra Watts', 59, 'Male', 'O+', 1694211756, '2013-02-21', 'R-314', '1234');
INSERT INTO `patient` VALUES (140, 'Kenyon Bridges', 54, 'Female', 'A-', 1666788045, '2013-05-07', 'R-315', '1234');
INSERT INTO `patient` VALUES (141, 'Melanie Rodgers', 52, 'Female', 'B-', 1805587607, '2013-01-19', 'R-316', '1234');
INSERT INTO `patient` VALUES (142, 'Jennifer Terrel', 61, 'Female', 'AB-', 1596916749, '2013-04-03', 'R-317', '1234');
INSERT INTO `patient` VALUES (143, 'Marcia Macias', 36, 'Female', 'A+', 1342921601, '2013-05-26', 'R-318', '1234');
INSERT INTO `patient` VALUES (144, 'Ignacia Mclaugh', 32, 'Female', 'O+', 1018213855, '2013-04-22', 'R-319', '1234');
INSERT INTO `patient` VALUES (145, 'Oscar Pacheco', 46, 'Female', 'A-', 1499020784, '2013-06-04', 'R-320', '1234');

-- --------------------------------------------------------

-- 
-- Table structure for table `prescribes`
-- 

CREATE TABLE `prescribes` (
  `doctor_id` varchar(15) NOT NULL,
  `medicine_name` varchar(45) NOT NULL,
  `patient_id` int(11) NOT NULL,
  KEY `fk_doctor_has_medicine_medicine1_idx` (`medicine_name`),
  KEY `fk_doctor_has_medicine_doctor1_idx` (`doctor_id`),
  KEY `fk_prescribes_patient1_idx` (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `prescribes`
-- 

INSERT INTO `prescribes` VALUES ('E-05', 'Doxapram', 101);
INSERT INTO `prescribes` VALUES ('E-37', 'Oxazepam', 102);
INSERT INTO `prescribes` VALUES ('E-05', 'Quetiapine', 103);
INSERT INTO `prescribes` VALUES ('E-45', 'Lorazepam', 101);
INSERT INTO `prescribes` VALUES ('E-37', 'Ketamine', 105);
INSERT INTO `prescribes` VALUES ('E-05', 'Etomidate', 104);
INSERT INTO `prescribes` VALUES ('E-05', 'Amoxapine', 106);
INSERT INTO `prescribes` VALUES ('E-05', 'Amitriptyline', 108);
INSERT INTO `prescribes` VALUES ('E-37', 'Isoflurane', 131);
INSERT INTO `prescribes` VALUES ('E-05', 'Fluoxetine', 101);
INSERT INTO `prescribes` VALUES ('E-06', 'Enflurane', 134);
INSERT INTO `prescribes` VALUES ('E-06', 'Buspirone', 135);
INSERT INTO `prescribes` VALUES ('E-06', 'Alprazolam', 107);
INSERT INTO `prescribes` VALUES ('E-05', 'Lorazepam', 138);
INSERT INTO `prescribes` VALUES ('E-06', 'Oxazepam', 134);
INSERT INTO `prescribes` VALUES ('E-05', 'Mirtazapine', 143);
INSERT INTO `prescribes` VALUES ('E-33', 'Trazodone', 140);
INSERT INTO `prescribes` VALUES ('E-33', 'Quetiapine', 131);
INSERT INTO `prescribes` VALUES ('E-45', 'Zopiclone', 110);
INSERT INTO `prescribes` VALUES ('E-33', 'Propranolol', 131);
INSERT INTO `prescribes` VALUES ('E-24', 'Midazolam', 112);
INSERT INTO `prescribes` VALUES ('E-24', 'Lorazepam', 139);
INSERT INTO `prescribes` VALUES ('E-45', 'Venlafaxine', 144);
INSERT INTO `prescribes` VALUES ('E-33', 'Lorazepam', 131);
INSERT INTO `prescribes` VALUES ('E-24', 'Buspirone', 110);
INSERT INTO `prescribes` VALUES ('E-57', 'Doxapram', 113);
INSERT INTO `prescribes` VALUES ('E-58', 'Divalproex', 114);
INSERT INTO `prescribes` VALUES ('E-45', 'Amitriptyline', 109);
INSERT INTO `prescribes` VALUES ('E-24', 'Zaleplon', 112);
INSERT INTO `prescribes` VALUES ('E-58', 'Zaleplon', 113);
INSERT INTO `prescribes` VALUES ('E-58', 'Oxazepam', 114);
INSERT INTO `prescribes` VALUES ('E-61', 'Quetiapine', 141);
INSERT INTO `prescribes` VALUES ('E-08', 'Lorazepam', 116);
INSERT INTO `prescribes` VALUES ('E-14', 'Ketamine', 117);
INSERT INTO `prescribes` VALUES ('E-14', 'Etomidate', 121);
INSERT INTO `prescribes` VALUES ('E-53', 'Buspirone', 119);
INSERT INTO `prescribes` VALUES ('E-32', 'Doxapram', 141);
INSERT INTO `prescribes` VALUES ('E-27', 'Oxazepam', 121);
INSERT INTO `prescribes` VALUES ('E-25', 'Quetiapine', 120);
INSERT INTO `prescribes` VALUES ('E-53', 'Etomidate', 136);
INSERT INTO `prescribes` VALUES ('E-32', 'Venlafaxine', 141);
INSERT INTO `prescribes` VALUES ('E-14', 'Divalproex', 118);
INSERT INTO `prescribes` VALUES ('E-32', 'Trazodone', 132);
INSERT INTO `prescribes` VALUES ('E-46', 'Amitriptyline', 123);
INSERT INTO `prescribes` VALUES ('E-47', 'Nefazodone', 124);
INSERT INTO `prescribes` VALUES ('E-48', 'Zaleplon', 125);
INSERT INTO `prescribes` VALUES ('E-47', 'Isoflurane', 126);
INSERT INTO `prescribes` VALUES ('E-25', 'Alprazolam', 126);
INSERT INTO `prescribes` VALUES ('E-47', 'Propranolol', 126);
INSERT INTO `prescribes` VALUES ('E-25', 'Zopiclone', 127);
INSERT INTO `prescribes` VALUES ('E-33', 'Buspirone', 140);
INSERT INTO `prescribes` VALUES ('E-46', 'Midazolam', 128);
INSERT INTO `prescribes` VALUES ('E-46', 'Methylphenidate', 129);
INSERT INTO `prescribes` VALUES ('E-61', 'Trazodone', 115);
INSERT INTO `prescribes` VALUES ('E-37', 'Mirtazapine', 102);
INSERT INTO `prescribes` VALUES ('E-61', 'Zopiclone', 130);
INSERT INTO `prescribes` VALUES ('E-46', 'Zaleplon', 123);
INSERT INTO `prescribes` VALUES ('E-28', 'Enflurane', 130);
INSERT INTO `prescribes` VALUES ('E-33', 'Isoflurane', 140);
INSERT INTO `prescribes` VALUES ('E-32', 'Fluoxetine', 122);
INSERT INTO `prescribes` VALUES ('E-46', 'Amoxapine', 123);
INSERT INTO `prescribes` VALUES ('E-06', 'Trazodone', 108);
INSERT INTO `prescribes` VALUES ('E-06', 'Doxapram', 137);
INSERT INTO `prescribes` VALUES ('E-06', 'Quetiapine', 108);
INSERT INTO `prescribes` VALUES ('E-06', 'Venlafaxine', 134);
INSERT INTO `prescribes` VALUES ('E-53', 'Nefazodone', 119);
INSERT INTO `prescribes` VALUES ('E-45', 'Mirtazapine', 109);
INSERT INTO `prescribes` VALUES ('E-53', 'Ketamine', 119);
INSERT INTO `prescribes` VALUES ('E-53', 'Lorazepam', 136);
INSERT INTO `prescribes` VALUES ('E-45', 'Phenelzine', 111);
INSERT INTO `prescribes` VALUES ('E-06', 'Perphenazine', 137);
INSERT INTO `prescribes` VALUES ('E-45', 'Phenelzine', 110);
INSERT INTO `prescribes` VALUES ('E-05', 'Methylphenidate', 108);
INSERT INTO `prescribes` VALUES ('E-24', 'Propranolol', 110);
INSERT INTO `prescribes` VALUES ('E-33', 'Midazolam', 140);
INSERT INTO `prescribes` VALUES ('E-61', 'Alprazolam', 115);
INSERT INTO `prescribes` VALUES ('E-32', 'Isoflurane', 141);
INSERT INTO `prescribes` VALUES ('E-23', 'Fluoxetine', 142);
INSERT INTO `prescribes` VALUES ('E-47', 'Isoflurane', 142);
INSERT INTO `prescribes` VALUES ('E-05', 'Etomidate', 143);
INSERT INTO `prescribes` VALUES ('E-45', 'Amoxapine', 144);
INSERT INTO `prescribes` VALUES ('E-08', 'Mirtazapine', 144);
INSERT INTO `prescribes` VALUES ('E-14', 'Zaleplon', 118);
INSERT INTO `prescribes` VALUES ('E-48', 'Zopiclone', 145);

-- --------------------------------------------------------

-- 
-- Table structure for table `receptionist`
-- 

CREATE TABLE `receptionist` (
  `id` varchar(15) NOT NULL,
  `typing_speed` varchar(15) NOT NULL,
  `password` varchar(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `receptionist`
-- 

INSERT INTO `receptionist` VALUES ('E-02', '20', '1234');
INSERT INTO `receptionist` VALUES ('E-19', '40', '1234');
INSERT INTO `receptionist` VALUES ('E-39', '30', '1234');
INSERT INTO `receptionist` VALUES ('E-40', '25', '1234');
INSERT INTO `receptionist` VALUES ('E-52', '20', '1234');
INSERT INTO `receptionist` VALUES ('E-59', '35', '1234');

-- --------------------------------------------------------

-- 
-- Table structure for table `records`
-- 

CREATE TABLE `records` (
  `records_id` int(11) NOT NULL auto_increment,
  `disease` varchar(45) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `receptionist_id` varchar(15) NOT NULL,
  `Bill` int(50) NOT NULL default '0',
  PRIMARY KEY  (`records_id`,`patient_id`),
  KEY `fk_records_patient1_idx` (`patient_id`),
  KEY `fk_records_receptionist1_idx` (`receptionist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

-- 
-- Dumping data for table `records`
-- 

INSERT INTO `records` VALUES (1, 'Abdominal Cramps', 101, 'E-02', 0);
INSERT INTO `records` VALUES (2, 'Achalasia', 102, 'E-19', 0);
INSERT INTO `records` VALUES (3, 'Brain cancer', 103, 'E-39', 0);
INSERT INTO `records` VALUES (4, 'Chronic bronchitis', 104, 'E-59', 0);
INSERT INTO `records` VALUES (5, 'Ependymoma', 105, 'E-39', 0);
INSERT INTO `records` VALUES (6, 'Leukemias', 106, 'E-40', 0);
INSERT INTO `records` VALUES (7, 'Neuroblastoma', 107, 'E-52', 0);
INSERT INTO `records` VALUES (8, 'Dislocations', 108, 'E-39', 0);
INSERT INTO `records` VALUES (9, 'Osteolysis', 109, 'E-02', 0);
INSERT INTO `records` VALUES (10, 'Dementia', 110, 'E-39', 0);
INSERT INTO `records` VALUES (11, 'Encephalitis', 111, 'E-02', 0);
INSERT INTO `records` VALUES (12, 'Hemophilia', 112, 'E-19', 0);
INSERT INTO `records` VALUES (13, 'Hypoxia', 113, 'E-19', 0);
INSERT INTO `records` VALUES (14, 'Abdominal Cramps', 114, 'E-52', 0);
INSERT INTO `records` VALUES (15, 'Neuroblastoma', 115, 'E-19', 0);
INSERT INTO `records` VALUES (16, 'Abdominal Cramps', 116, 'E-52', 0);
INSERT INTO `records` VALUES (17, 'Osteolysis', 117, 'E-02', 0);
INSERT INTO `records` VALUES (18, 'Leukemias', 118, 'E-40', 0);
INSERT INTO `records` VALUES (19, 'Ependymoma', 119, 'E-39', 0);
INSERT INTO `records` VALUES (20, 'Leukemias', 120, 'E-19', 0);
INSERT INTO `records` VALUES (21, 'Abdominal Cramps', 121, 'E-59', 0);
INSERT INTO `records` VALUES (22, 'Hemophilia', 122, 'E-39', 0);
INSERT INTO `records` VALUES (23, 'Neuroblastoma', 123, 'E-52', 0);
INSERT INTO `records` VALUES (24, 'Ependymoma', 124, 'E-02', 0);
INSERT INTO `records` VALUES (25, 'Hemophilia', 125, 'E-52', 0);
INSERT INTO `records` VALUES (26, 'Hypoxia', 126, 'E-52', 0);
INSERT INTO `records` VALUES (27, 'Ependymoma', 127, 'E-40', 0);
INSERT INTO `records` VALUES (28, 'Hemophilia', 128, 'E-39', 0);
INSERT INTO `records` VALUES (29, 'Neuroblastoma', 129, 'E-59', 0);
INSERT INTO `records` VALUES (30, 'Achalasia', 130, 'E-40', 0);
INSERT INTO `records` VALUES (31, 'Ependymoma', 131, 'E-02', 0);
INSERT INTO `records` VALUES (32, 'Hypoxia', 132, 'E-52', 0);
INSERT INTO `records` VALUES (33, 'Abdominal Cramps', 133, 'E-59', 0);
INSERT INTO `records` VALUES (34, 'Neuroblastoma', 134, 'E-02', 0);
INSERT INTO `records` VALUES (35, 'Dislocations', 135, 'E-59', 0);
INSERT INTO `records` VALUES (36, 'Hypoxia', 136, 'E-19', 0);
INSERT INTO `records` VALUES (37, 'Brain cancer', 137, 'E-40', 0);
INSERT INTO `records` VALUES (38, 'Chronic bronchitis', 138, 'E-52', 0);
INSERT INTO `records` VALUES (39, 'Leukemias', 139, 'E-59', 0);
INSERT INTO `records` VALUES (40, 'Ependymoma', 140, 'E-52', 0);
INSERT INTO `records` VALUES (41, 'Neuroblastoma', 141, 'E-52', 0);
INSERT INTO `records` VALUES (42, 'Encephalitis', 142, 'E-40', 0);
INSERT INTO `records` VALUES (43, 'Achalasia', 143, 'E-19', 0);
INSERT INTO `records` VALUES (44, 'Dislocations', 144, 'E-40', 0);
INSERT INTO `records` VALUES (45, 'Osteolysis', 145, 'E-19', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `room`
-- 

CREATE TABLE `room` (
  `room_no` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY  (`room_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `room`
-- 

INSERT INTO `room` VALUES ('R-201', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-202', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-203', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-204', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-205', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-206', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-207', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-208', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-209', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-210', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-211', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-212', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-213', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-214', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-215', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-216', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-217', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-218', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-219', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-220', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-221', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-222', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-223', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-224', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-225', 'NON-AC', 'occupied', 1000);
INSERT INTO `room` VALUES ('R-226', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-227', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-228', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-229', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-230', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-231', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-232', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-233', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-234', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-235', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-236', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-237', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-238', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-239', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-240', 'NON-AC', 'vacant', 1000);
INSERT INTO `room` VALUES ('R-301', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-302', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-303', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-304', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-305', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-306', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-307', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-308', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-309', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-310', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-311', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-312', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-313', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-314', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-315', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-316', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-317', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-318', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-319', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-320', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-321', 'AC', 'occupied', 1500);
INSERT INTO `room` VALUES ('R-322', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-323', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-324', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-325', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-326', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-327', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-328', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-329', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-330', 'AC', 'vacant', 1500);
INSERT INTO `room` VALUES ('R-100', 'ac', 'Vacant', 1200);
