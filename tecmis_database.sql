-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2019 at 05:50 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tecmis`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountAttendance`(IN dept char(3),IN level char(3),IN stu_id char(5),IN crs_id char(7))
BEGIN
	DECLARE TheldH INT DEFAULT 0;
	DECLARE TarrivedH INT DEFAULT 0;
	DECLARE PheldH INT DEFAULT 0;
	DECLARE ParrivedH INT DEFAULT 0;

	IF (dept LIKE 'ICT') THEN
		IF (level LIKE 'I') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ict_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ict_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ict_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ict_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'II') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ict_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ict_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ict_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ict_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'III') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ict_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ict_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ict_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ict_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'IV') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ict_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ict_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ict_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ict_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		END IF;
	ELSEIF (dept LIKE 'ENT') THEN
		IF (level LIKE 'I') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ent_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ent_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ent_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ent_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'II') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ent_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ent_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ent_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ent_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'III') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ent_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ent_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ent_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ent_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'IV') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_ent_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_ent_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_ent_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_ent_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		END IF;
	ELSEIF (dept LIKE 'BST') THEN
		IF (level LIKE 'I') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_bst_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_bst_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_bst_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_bst_level_i` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'II') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_bst_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_bst_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_bst_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_bst_level_ii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'III') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_bst_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_bst_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_bst_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_bst_level_iii` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		ELSEIF (level LIKE 'IV') THEN
			SELECT SUM(`hours`) INTO TheldH FROM `attendance_bst_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T';
			SELECT SUM(`hours`) INTO TarrivedH FROM `attendance_bst_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'T' AND `status` = '1';
			SELECT SUM(`hours`) INTO PheldH FROM `attendance_bst_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P';
			SELECT SUM(`hours`) INTO ParrivedH FROM `attendance_bst_level_iv` WHERE `student_id` = stu_id AND `course_id` = crs_id AND `type` = 'P' AND `status` = '1';
		END IF;
	END IF;

	SELECT TheldH,TarrivedH,PheldH,ParrivedH;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CountUser`()
BEGIN
	DECLARE ICTStu INT DEFAULT 0;
	DECLARE ENTStu INT DEFAULT 0;
	DECLARE BSTStu INT DEFAULT 0;
	DECLARE totalStu INT DEFAULT 0;

	DECLARE ICTLec INT DEFAULT 0;
	DECLARE ENTLec INT DEFAULT 0;
	DECLARE BSTLec INT DEFAULT 0;
	DECLARE totalLec INT DEFAULT 0;

	DECLARE ICTTo INT DEFAULT 0;
	DECLARE ENTTo INT DEFAULT 0;
	DECLARE BSTTo INT DEFAULT 0;
	DECLARE totalTo INT DEFAULT 0;

	SELECT COUNT(`id`) INTO ICTStu FROM `student` WHERE `department` = 'ICT' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO ENTStu FROM `student` WHERE `department` = 'ENT' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO BSTStu FROM `student` WHERE `department` = 'BST' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO totalStu FROM `student` WHERE `is_deleted` = 0;

	SELECT COUNT(`id`) INTO ICTLec FROM `lecturer` WHERE `department` = 'ICT' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO ENTLec FROM `lecturer` WHERE `department` = 'ENT' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO BSTLec FROM `lecturer` WHERE `department` = 'BST' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO totalLec FROM `lecturer` WHERE `is_deleted` = 0;

	SELECT COUNT(`id`) INTO ICTTo FROM `tech_officer` WHERE `department` = 'ICT' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO ENTTo FROM `tech_officer` WHERE `department` = 'ENT' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO BSTTo FROM `tech_officer` WHERE `department` = 'BST' AND `is_deleted` = 0;
	SELECT COUNT(`id`) INTO totalTo FROM `tech_officer` WHERE `is_deleted` = 0;

	SELECT ICTStu,ENTStu,BSTStu,totalStu,ICTLec,ENTLec,BSTLec,totalLec,ICTTo,ENTTo,BSTTo,totalTo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateAdmin`(IN id varchar(5),IN f_name varchar(20),IN l_name varchar(20),IN dob date,IN gender char(1),IN nic char(10),IN address varchar(255),IN contact int(10),IN email varchar(50),IN pwd varchar(255),IN role varchar(20))
BEGIN
	INSERT INTO `user`(`id`, `password`, `role`, `is_deleted`) VALUES (id,pwd,role,0);
	INSERT INTO `admin`(`id`,`f_name`,`l_name`,`dob`,`gender`,`nic`,`address`,`contact`,`email`,`is_deleted`) VALUES(id,f_name,l_name,dob,gender,nic,address,contact,email,0);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateAttendance`(IN dept char(3),IN level varchar(3),IN stu_id char(5),IN course_id char(7),IN typeA char(1),IN dateA date,IN hoursA INT,IN statusA tinyint(1))
BEGIN
	IF (dept LIKE 'ICT') THEN
		IF (level LIKE 'I') THEN
			INSERT INTO `attendance_ict_level_i`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'II') THEN
			INSERT INTO `attendance_ict_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'III') THEN
			INSERT INTO `attendance_ict_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'IV') THEN
			INSERT INTO `attendance_ict_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		END IF;
	ELSEIF (dept LIKE 'ENT') THEN
		IF (level LIKE 'I') THEN
			INSERT INTO `attendance_ent_level_i`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'II') THEN
			INSERT INTO `attendance_ent_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'III') THEN
			INSERT INTO `attendance_ent_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'IV') THEN
			INSERT INTO `attendance_ent_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		END IF;
	ELSEIF (dept LIKE 'BST') THEN
		IF (level LIKE 'I') THEN
			INSERT INTO `attendance_bst_level_i`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'II') THEN
			INSERT INTO `attendance_bst_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'III') THEN
			INSERT INTO `attendance_bst_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		ELSEIF (level LIKE 'IV') THEN
			INSERT INTO `attendance_bst_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES (stu_id,course_id,dateA,typeA,hoursA,statusA);
		END IF;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateCourse`(IN id char(7),IN title varchar(100),IN lecId char(5),IN credit int,IN depId char(3),IN level varchar(3),IN quiz float(5,2),IN assess float(5,2),IN mid float(5,2),IN theory float(5,2),IN practical float(5,2))
BEGIN
	INSERT INTO `course`(`id`,`title`,`coordinator`,`credit`,`department`,`level`,`quiz_mark`,`assess_mark`,`mid_mark`,`theory_mark`,`practical_mark`,`is_deleted`) VALUES(id,title,lecId,credit,depId,level,quiz,assess,mid,theory,practical,0);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateLecturer`(IN `id` VARCHAR(5), IN `f_name` VARCHAR(20), IN `l_name` VARCHAR(20), IN `dob` DATE, IN `gender` CHAR(1), IN `nic` CHAR(10), IN `address` VARCHAR(255), IN `contact` INT(10), IN `email` VARCHAR(50), IN `department` CHAR(3), IN `pwd` VARCHAR(255), IN `role` VARCHAR(20))
BEGIN
	INSERT INTO `user`(`id`, `password`, `role`, `is_deleted`) VALUES (id,pwd,role,0);
	INSERT INTO `lecturer`(`id`,`f_name`,`l_name`,`dob`,`gender`,`nic`,`address`,`contact`,`email`,`department`,`is_deleted`) VALUES(id,f_name,l_name,dob,gender,nic,address,contact,email,department,0);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateMedical`(IN dept char(3),IN level varchar(3),IN stu_id char(5),IN course_id char(7),IN typeA char(1),IN dateA date,IN hoursA INT)
BEGIN
	IF (dept LIKE 'ICT') THEN
		IF (level LIKE 'I') THEN
			UPDATE `attendance_ict_level_i` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ict_level_i`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'II') THEN
			UPDATE `attendance_ict_level_ii` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ict_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'III') THEN
			UPDATE `attendance_ict_level_iii` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ict_level_iii`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'IV') THEN
			UPDATE `attendance_ict_level_iv` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ict_level_iv`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		END IF;
	ELSEIF (dept LIKE 'ENT') THEN
		IF (level LIKE 'I') THEN
			UPDATE `attendance_ent_level_i` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ent_level_i`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'II') THEN
			UPDATE `attendance_ent_level_ii` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ent_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'III') THEN
			UPDATE `attendance_ent_level_iii` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ent_level_iii`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'IV') THEN
			UPDATE `attendance_ent_level_iv` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_ent_level_iv`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		END IF;
	ELSEIF (dept LIKE 'BST') THEN
		IF (level LIKE 'I') THEN
			UPDATE `attendance_bst_level_i` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_bst_level_i`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'II') THEN
			UPDATE `attendance_bst_level_ii` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_bst_level_ii`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'III') THEN
			UPDATE `attendance_bst_level_iii` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_bst_level_iii`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		ELSEIF (level LIKE 'IV') THEN
			UPDATE `attendance_bst_level_iv` SET `status` = 1 WHERE `student_id` = stu_id AND `course_id` = course_id AND `date` = dateA AND `type` = typeA;
			INSERT INTO `medical_bst_level_iv`(`student_id`, `course_id`, `date`, `type`, `hours`) VALUES (stu_id,course_id,dateA,typeA,hoursA);
		END IF;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateNotice`(IN id char(5),IN date date,IN title varchar(100),IN content varchar(255))
BEGIN
	INSERT INTO `notice`(`id`,`date`,`title`,`content`,`is_deleted`) VALUES(id,date,title,content,0);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateStudent`(IN `id` VARCHAR(5), IN `f_name` VARCHAR(20), IN `l_name` VARCHAR(20), IN `dob` DATE, IN `gender` CHAR(1), IN `nic` CHAR(10), IN `address` VARCHAR(255), IN `contact` INT(10), IN `email` VARCHAR(50), IN `department` CHAR(3), IN `pwd` VARCHAR(255), IN `role` VARCHAR(20))
BEGIN
	INSERT INTO `user`(`id`, `password`, `role`, `is_deleted`) VALUES (id,pwd,role,0);
	INSERT INTO `student`(`id`,`f_name`,`l_name`,`dob`,`gender`,`nic`,`address`,`contact`,`email`,`department`,`is_deleted`) VALUES(id,f_name,l_name,dob,gender,nic,address,contact,email,department,0);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateTechnicalOfficer`(IN `id` VARCHAR(5), IN `f_name` VARCHAR(20), IN `l_name` VARCHAR(20), IN `dob` DATE, IN `gender` CHAR(1), IN `nic` CHAR(10), IN `address` VARCHAR(255), IN `contact` INT(10), IN `email` VARCHAR(50), IN `department` CHAR(3), IN `pwd` VARCHAR(255), IN `role` VARCHAR(20))
BEGIN
	INSERT INTO `user`(`id`, `password`, `role`, `is_deleted`) VALUES (id,pwd,role,0);
	INSERT INTO `tech_officer`(`id`,`f_name`,`l_name`,`dob`,`gender`,`nic`,`address`,`contact`,`email`,`department`,`is_deleted`) VALUES(id,f_name,l_name,dob,gender,nic,address,contact,email,department,0);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateTimeTableBST`(IN lev varchar(3),IN a1 varchar(8),IN a2 varchar(8),IN a3 varchar(8),IN a4 varchar(8),IN a5 varchar(8),IN a6 varchar(8),IN a7 varchar(8),IN a8 varchar(8),IN b1 varchar(8),IN b2 varchar(8),IN b3 varchar(8),IN b4 varchar(8),IN b5 varchar(8),IN b6 varchar(8),IN b7 varchar(8),IN b8 varchar(8),IN c1 varchar(8),IN c2 varchar(8),IN c3 varchar(8),IN c4 varchar(8),IN c5 varchar(8),IN c6 varchar(8),IN c7 varchar(8),IN c8 varchar(8),IN d1 varchar(8),IN d2 varchar(8),IN d3 varchar(8),IN d4 varchar(8),IN d5 varchar(8),IN d6 varchar(8),IN d7 varchar(8),IN d8 varchar(8),IN e1 varchar(8),IN e2 varchar(8),IN e3 varchar(8),IN e4 varchar(8),IN e5 varchar(8),IN e6 varchar(8),IN e7 varchar(8),IN e8 varchar(8))
BEGIN
	IF (lev LIKE 'I') THEN
		UPDATE `time_table_bst_level_i` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_bst_level_i` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_bst_level_i` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_bst_level_i` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_bst_level_i` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_bst_level_i` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_bst_level_i` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_bst_level_i` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'II') THEN
		UPDATE `time_table_bst_level_ii` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_bst_level_ii` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_bst_level_ii` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_bst_level_ii` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_bst_level_ii` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_bst_level_ii` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_bst_level_ii` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_bst_level_ii` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'III') THEN
		UPDATE `time_table_bst_level_iii` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_bst_level_iii` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_bst_level_iii` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_bst_level_iii` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_bst_level_iii` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_bst_level_iii` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_bst_level_iii` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_bst_level_iii` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'IV') THEN
		UPDATE `time_table_bst_level_iv` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_bst_level_iv` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_bst_level_iv` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_bst_level_iv` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_bst_level_iv` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_bst_level_iv` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_bst_level_iv` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_bst_level_iv` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateTimeTableENT`(IN lev varchar(3),IN a1 varchar(8),IN a2 varchar(8),IN a3 varchar(8),IN a4 varchar(8),IN a5 varchar(8),IN a6 varchar(8),IN a7 varchar(8),IN a8 varchar(8),IN b1 varchar(8),IN b2 varchar(8),IN b3 varchar(8),IN b4 varchar(8),IN b5 varchar(8),IN b6 varchar(8),IN b7 varchar(8),IN b8 varchar(8),IN c1 varchar(8),IN c2 varchar(8),IN c3 varchar(8),IN c4 varchar(8),IN c5 varchar(8),IN c6 varchar(8),IN c7 varchar(8),IN c8 varchar(8),IN d1 varchar(8),IN d2 varchar(8),IN d3 varchar(8),IN d4 varchar(8),IN d5 varchar(8),IN d6 varchar(8),IN d7 varchar(8),IN d8 varchar(8),IN e1 varchar(8),IN e2 varchar(8),IN e3 varchar(8),IN e4 varchar(8),IN e5 varchar(8),IN e6 varchar(8),IN e7 varchar(8),IN e8 varchar(8))
BEGIN
	IF (lev LIKE 'I') THEN
		UPDATE `time_table_ent_level_i` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ent_level_i` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ent_level_i` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ent_level_i` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ent_level_i` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ent_level_i` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ent_level_i` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ent_level_i` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'II') THEN
		UPDATE `time_table_ent_level_ii` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ent_level_ii` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ent_level_ii` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ent_level_ii` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ent_level_ii` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ent_level_ii` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ent_level_ii` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ent_level_ii` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'III') THEN
		UPDATE `time_table_ent_level_iii` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ent_level_iii` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ent_level_iii` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ent_level_iii` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ent_level_iii` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ent_level_iii` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ent_level_iii` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ent_level_iii` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'IV') THEN
		UPDATE `time_table_ent_level_iv` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ent_level_iv` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ent_level_iv` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ent_level_iv` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ent_level_iv` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ent_level_iv` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ent_level_iv` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ent_level_iv` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateTimeTableICT`(IN lev varchar(3),IN a1 varchar(8),IN a2 varchar(8),IN a3 varchar(8),IN a4 varchar(8),IN a5 varchar(8),IN a6 varchar(8),IN a7 varchar(8),IN a8 varchar(8),IN b1 varchar(8),IN b2 varchar(8),IN b3 varchar(8),IN b4 varchar(8),IN b5 varchar(8),IN b6 varchar(8),IN b7 varchar(8),IN b8 varchar(8),IN c1 varchar(8),IN c2 varchar(8),IN c3 varchar(8),IN c4 varchar(8),IN c5 varchar(8),IN c6 varchar(8),IN c7 varchar(8),IN c8 varchar(8),IN d1 varchar(8),IN d2 varchar(8),IN d3 varchar(8),IN d4 varchar(8),IN d5 varchar(8),IN d6 varchar(8),IN d7 varchar(8),IN d8 varchar(8),IN e1 varchar(8),IN e2 varchar(8),IN e3 varchar(8),IN e4 varchar(8),IN e5 varchar(8),IN e6 varchar(8),IN e7 varchar(8),IN e8 varchar(8))
BEGIN
	IF (lev LIKE 'I') THEN
		UPDATE `time_table_ict_level_i` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ict_level_i` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ict_level_i` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ict_level_i` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ict_level_i` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ict_level_i` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ict_level_i` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ict_level_i` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'II') THEN
		UPDATE `time_table_ict_level_ii` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ict_level_ii` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ict_level_ii` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ict_level_ii` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ict_level_ii` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ict_level_ii` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ict_level_ii` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ict_level_ii` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'III') THEN
		UPDATE `time_table_ict_level_iii` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ict_level_iii` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ict_level_iii` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ict_level_iii` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ict_level_iii` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ict_level_iii` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ict_level_iii` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ict_level_iii` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	ELSEIF (lev LIKE 'IV') THEN
		UPDATE `time_table_ict_level_iv` SET `monday` = a1, `tuesday` = b1, `wednesday` = c1, `thursday` = d1, `friday` = e1 WHERE `time` = '08:00 - 09:00';
		UPDATE `time_table_ict_level_iv` SET `monday` = a2, `tuesday` = b2, `wednesday` = c2, `thursday` = d2, `friday` = e2 WHERE `time` = '09:00 - 10:00';
		UPDATE `time_table_ict_level_iv` SET `monday` = a3, `tuesday` = b3, `wednesday` = c3, `thursday` = d3, `friday` = e3 WHERE `time` = '10:00 - 11:00';
		UPDATE `time_table_ict_level_iv` SET `monday` = a4, `tuesday` = b4, `wednesday` = c4, `thursday` = d4, `friday` = e4 WHERE `time` = '11:00 - 12:00';
		UPDATE `time_table_ict_level_iv` SET `monday` = a5, `tuesday` = b5, `wednesday` = c5, `thursday` = d5, `friday` = e5 WHERE `time` = '12:00 - 13:00';
		UPDATE `time_table_ict_level_iv` SET `monday` = a6, `tuesday` = b6, `wednesday` = c6, `thursday` = d6, `friday` = e6 WHERE `time` = '13:00 - 14:00';
		UPDATE `time_table_ict_level_iv` SET `monday` = a7, `tuesday` = b7, `wednesday` = c7, `thursday` = d7, `friday` = e7 WHERE `time` = '14:00 - 15:00';
		UPDATE `time_table_ict_level_iv` SET `monday` = a8, `tuesday` = b8, `wednesday` = c8, `thursday` = d8, `friday` = e8 WHERE `time` = '15:00 - 16:00';
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteCourse`(IN cId varchar(7))
BEGIN
	UPDATE `course` SET `is_deleted` = 1 WHERE `id` = cId;	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNotice`(IN nId varchar(5))
BEGIN
	UPDATE `notice` SET `is_deleted` = 1 WHERE `id` = nId;	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteUser`(IN uId varchar(5))
BEGIN
	UPDATE `user` SET `is_deleted` = 1 WHERE `id` = uId;
	UPDATE `admin` SET `is_deleted` = 1 WHERE `id` = uId;
	UPDATE `lecturer` SET `is_deleted` = 1 WHERE `id` = uId;
	UPDATE `student` SET `is_deleted` = 1 WHERE `id` = uId;
	UPDATE `tech_officer` SET `is_deleted` = 1 WHERE `id` = uId;	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `FilterCourseDetails`(IN filterId varchar(7))
BEGIN
	 SELECT `id` AS 'ID', `title` AS 'Title', `coordinator` AS 'Coordinator', `credit` AS 'Credit', `department` AS 'Department', `level` AS 'Level', `quiz_mark`, `assess_mark`, `mid_mark`, `theory_mark`, `practical_mark` FROM `course` WHERE `department` = filterId AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `FilterNoticeDetails`(IN filterDate Date)
BEGIN
	 SELECT `id` AS 'Notice No', `date` AS 'Date', `title` AS 'Notice Title', `content` AS 'Notice' FROM `notice` WHERE `date` =  filterDate AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `FilterUserDept`(IN `uDept` CHAR(3))
BEGIN
	SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `lecturer` a, `user` b WHERE a.`id` = b.`id` AND a.`department` = uDept AND a.`is_deleted` = 0
UNION
SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `student` a, `user` b WHERE a.`id` = b.`id` AND a.`department` = uDept AND a.`is_deleted` = 0
UNION
SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `tech_officer` a, `user` b WHERE a.`id` = b.`id` AND  a.`department` = uDept AND a.`is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAttendanceBST`()
BEGIN
	SELECT `id` AS 'Id', `f_name` AS 'Name', false AS 'Status' FROM `student` WHERE `department` = 'BST' AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAttendanceENT`()
BEGIN
	SELECT `id` AS 'Id', `f_name` AS 'Name', false AS 'Status' FROM `student` WHERE `department` = 'ENT' AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAttendanceICT`()
BEGIN
	SELECT `id` AS 'Id', `f_name` AS 'Name', false AS 'Status' FROM `student` WHERE `department` = 'ICT' AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmail`(IN `searchId` VARCHAR(5))
BEGIN
		 SELECT a.`id`, a.`email`, b.`password` FROM `admin` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND b.`is_deleted` = 0
UNION
SELECT a.`id`, a.`email`, b.`password` FROM `lecturer` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND b.`is_deleted` = 0
UNION
SELECT a.`id`, a.`email`, b.`password` FROM `student` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND b.`is_deleted` = 0
UNION
SELECT a.`id`, a.`email`, b.`password` FROM `tech_officer` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND b.`is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMedical`(IN dept char(3),IN level char(3),IN stu_id char(5))
BEGIN
	IF (dept LIKE 'ICT') THEN
		IF (level LIKE 'I') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ict_level_i` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'II') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ict_level_ii` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'III') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ict_level_iii` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'IV') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ict_level_iv` WHERE `student_id` = stu_id AND `status` = 0;
		END IF;
	ELSEIF (dept LIKE 'ENT') THEN
		IF (level LIKE 'I') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ent_level_i` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'II') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ent_level_ii` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'III') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ent_level_iii` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'IV') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_ent_level_iv` WHERE `student_id` = stu_id AND `status` = 0;
		END IF;
	ELSEIF (dept LIKE 'BST') THEN
		IF (level LIKE 'I') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_bst_level_i` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'II') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_bst_level_ii` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'III') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_bst_level_iii` WHERE `student_id` = stu_id AND `status` = 0;
		ELSEIF (level LIKE 'IV') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','Not Submited') AS 'Medical' FROM `attendance_bst_level_iv` WHERE `student_id` = stu_id AND `status` = 0;
		END IF;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNoticeLastID`()
BEGIN
	SELECT `id` AS 'lastId' FROM `notice` ORDER BY `id` DESC LIMIT 1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameA1`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.a1 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameA2`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,f_name,a2 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameA3`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,f_name,a3 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameA4`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,f_name,a4 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameMid`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.mid from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNamePractical`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.f_practical from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameQ1`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.q1 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameQ2`(IN `cid` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.q2 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameQ3`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.q3 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameQ4`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.q4 from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStuIDAndNameTheory`(IN `cId` VARCHAR(7))
    NO SQL
select mark.stu_id,student.f_name,mark.f_theory from mark,student where mark.stu_id=student.id AND mark.course_id=cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserLastID`(IN `type` VARCHAR(20))
BEGIN
	IF (type LIKE 'admin') THEN
		SELECT `id` AS 'lastId' FROM `admin` ORDER BY `id` DESC LIMIT 1;
	ELSEIF (type LIKE 'lecturer') THEN
		SELECT `id` AS 'lastId' FROM `lecturer` ORDER BY `id` DESC LIMIT 1;
	ELSEIF (type LIKE 'technical officer') THEN
		SELECT `id` AS 'lastId' FROM `tech_officer` ORDER BY `id` DESC LIMIT 1;
	ELSEIF (type LIKE 'student') THEN
		SELECT `id` AS 'lastId' FROM `student` ORDER BY `id` DESC LIMIT 1;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `loggedUser`(IN `searchId` VARCHAR(5))
BEGIN
	 SELECT CONCAT(`f_name`,' ',`l_name`) AS 'name' FROM `lecturer` WHERE `id` = searchId AND `is_deleted` = 0
UNION
	SELECT CONCAT(`f_name`,' ',`l_name`) AS 'name' FROM `student` WHERE `id` = searchId AND `is_deleted` = 0
UNION
	SELECT CONCAT(`f_name`,' ',`l_name`) AS 'name' FROM `tech_officer` WHERE `id` = searchId AND `is_deleted` = 0
UNION
	SELECT CONCAT(`f_name`,' ',`l_name`) AS 'name' FROM `admin` WHERE `id` = searchId AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(IN username varchar(5))
BEGIN
	select * from `user` where `id`=username AND `is_deleted` = 0 LIMIT 1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `marksForGPA`(IN `sId` CHAR(5), IN `cId` CHAR(7))
    NO SQL
SELECT `stu_id`, `course_id`, `q1`+`q2`+`q3`+`q4` AS 'quiz', `a1`+`a2`+`a3` AS 'ass', `mid`, `f_theory`, `f_practical`, c.`quiz_mark`, c.`assess_mark`, c.`mid_mark`, c.`theory_mark`, c.`practical_mark` FROM `mark`, `course` c WHERE `course_id` = c.`id` AND`stu_id` = sId AND `course_id` = cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchAdminDetails`(IN `searchId` VARCHAR(5))
BEGIN
	 SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', b.`role` AS 'Role', b.`password` AS 'Password' FROM `admin` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND a.`is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchCourseDetails`(IN searchId varchar(7))
BEGIN
	 SELECT `id` AS 'ID', `title` AS 'Title', `coordinator` AS 'Coordinator', `credit` AS 'Credit', `department` AS 'Department', `level` AS 'Level', `quiz_mark`, `assess_mark`, `mid_mark`, `theory_mark`, `practical_mark` FROM `course` WHERE `id` = searchId AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchLecturerDetails`(IN searchId varchar(5))
BEGIN
	 SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `lecturer` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND a.`is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNoticeDetails`(IN searchId varchar(5))
BEGIN
	 SELECT `id` AS 'Notice No', `date` AS 'Date', `title` AS 'Notice Title', `content` AS 'Notice' FROM `notice` WHERE `id` = searchId AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchStudentDetails`(IN searchId varchar(5))
BEGIN
	 SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `student` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND a.`is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchTechOfficerDetails`(IN searchId varchar(5))
BEGIN
	 SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `tech_officer` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND a.`is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchUsersDetails`(IN `searchId` VARCHAR(5))
BEGIN
	 SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `lecturer` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND b.`is_deleted` = 0
UNION
SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `student` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND b.`is_deleted` = 0
UNION
SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `tech_officer` a, `user` b WHERE a.`id` = b.`id` AND b.`id`= searchId AND b.`is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `studentAttendanceView`(IN `cId` CHAR(7))
    NO SQL
SELECT * FROM `attendance_ict_level_i` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_ict_level_ii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_ict_level_iii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_ict_level_iv` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_ent_level_i` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_ent_level_ii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_ent_level_iii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_ent_level_iv` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_bst_level_i` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_bst_level_ii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_bst_level_iii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `attendance_bst_level_iv` WHERE `course_id` = cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `studentMedicalView`(IN `cId` CHAR(7))
    NO SQL
SELECT * FROM `medical_ict_level_i` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_ict_level_ii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_ict_level_iii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_ict_level_iv` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_ent_level_i` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_ent_level_ii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_ent_level_iii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_ent_level_iv` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_bst_level_i` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_bst_level_ii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_bst_level_iii` WHERE `course_id` = cId
UNION ALL
SELECT * FROM `medical_bst_level_iv` WHERE `course_id` = cId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateCourse`(IN cId char(7),IN title varchar(100),IN lecId char(5),IN credit int,IN depId char(3),IN lev varchar(3),IN quiz float(5,2),IN assess float(5,2),IN mid float(5,2),IN theory float(5,2),IN practical float(5,2))
BEGIN
	UPDATE `course` SET `title` = title, `coordinator` = lecId, `credit` = credit, `department` = depId, `level` = lev, `quiz_mark` = quiz, `assess_mark` = assess, `mid_mark` = mid, `theory_mark` = theory, `practical_mark` = practical WHERE `id` = cId;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNotice`(IN nId char(5),IN date date,IN title varchar(100),IN content varchar(255))
BEGIN
	UPDATE `notice` SET `date` = date, `title` = title, `content` = content WHERE `id` = nId;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateUser`(IN nId varchar(5),IN f_name varchar(20),IN l_name varchar(20),IN dob date,IN gender char(1),IN nic char(10),IN address varchar(255),IN contact int(10),IN email varchar(50),IN pwd varchar(255))
BEGIN
	UPDATE `user` SET `password` = pwd WHERE `id` = nId;
	UPDATE `admin` SET `f_name` = f_name,`l_name` = l_name,`dob` = dob,`gender` = gender,`nic` = nic,`address` = address,`contact` = contact,`email` = email WHERE `id` = nId;
	UPDATE `student` SET `f_name` = f_name,`l_name` = l_name,`dob` = dob,`gender` = gender,`nic` = nic,`address` = address,`contact` = contact,`email` = email WHERE `id` = nId;
	UPDATE `lecturer` SET `f_name` = f_name,`l_name` = l_name,`dob` = dob,`gender` = gender,`nic` = nic,`address` = address,`contact` = contact,`email` = email WHERE `id` = nId;
	UPDATE `tech_officer` SET `f_name` = f_name,`l_name` = l_name,`dob` = dob,`gender` = gender,`nic` = nic,`address` = address,`contact` = contact,`email` = email WHERE `id` = nId;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewAttendanceDetails`(IN dept char(3),IN level char(3),IN stu_id char(5))
BEGIN
	IF (dept LIKE 'ICT') THEN
		IF (level LIKE 'I') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ict_level_i` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'II') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ict_level_ii` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'III') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ict_level_iii` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'IV') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ict_level_iv` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		END IF;
	ELSEIF (dept LIKE 'ENT') THEN
		IF (level LIKE 'I') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ent_level_i` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'II') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ent_level_ii` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'III') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ent_level_iii` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'IV') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_ent_level_iv` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		END IF;
	ELSEIF (dept LIKE 'BST') THEN
		IF (level LIKE 'I') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_bst_level_i` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'II') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_bst_level_ii` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'III') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_bst_level_iii` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		ELSEIF (level LIKE 'IV') THEN
			SELECT `course_id` AS 'Course ID', `type` AS 'Type', `date` AS 'Date',  `hours` AS 'Hours', if(`status`,'1','0') AS 'Status' FROM `attendance_bst_level_iv` WHERE `student_id` = stu_id ORDER BY `date` DESC;
		END IF;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewCourseDetails`()
BEGIN
	 SELECT `id` AS 'ID', `title` AS 'Title', `coordinator` AS 'Coordinator', `credit` AS 'Credit', `department` AS 'Department', `level` AS 'Level', `quiz_mark`, `assess_mark`, `mid_mark`, `theory_mark`, `practical_mark` FROM `course` WHERE `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewCourseDetailsToStu`(IN `dept` CHAR(3), IN `level` CHAR(3))
BEGIN
	 SELECT `id` AS 'ID', `title` AS 'Title', `coordinator` AS 'Coordinator', `credit` AS 'Credit', `quiz_mark`, `assess_mark`, `mid_mark`, `theory_mark`, `practical_mark` FROM `course` WHERE `department` = dept AND `level` = level AND `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewNoticeDetails`()
BEGIN
	 SELECT `id` AS 'Notice No', `date` AS 'Date', `title` AS 'Notice Title', `content` AS 'Notice' FROM `notice` WHERE `is_deleted` = 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewTimeTable`()
BEGIN
	SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ict_level_i`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewTimeTableBST`(IN lev varchar(3))
BEGIN
	IF (lev LIKE 'I') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_bst_level_i`;
	ELSEIF (lev LIKE 'II') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_bst_level_ii`;
	ELSEIF (lev LIKE 'III') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_bst_level_iii`;
	ELSEIF (lev LIKE 'IV') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_bst_level_iv`;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewTimeTableENT`(IN lev varchar(3))
BEGIN
	IF (lev LIKE 'I') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ent_level_i`;
	ELSEIF (lev LIKE 'II') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ent_level_ii`;
	ELSEIF (lev LIKE 'III') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ent_level_iii`;
	ELSEIF (lev LIKE 'IV') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ent_level_iv`;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewTimeTableICT`(IN lev varchar(3))
BEGIN
	IF (lev LIKE 'I') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ict_level_i`;
	ELSEIF (lev LIKE 'II') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ict_level_ii`;
	ELSEIF (lev LIKE 'III') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ict_level_iii`;
	ELSEIF (lev LIKE 'IV') THEN
		SELECT `time` AS 'Time', `monday` AS 'Monday', `tuesday` AS `Tuesday`, `wednesday` AS 'Wednesday', `thursday` AS `Thursday`, `friday` AS 'Friday' FROM `time_table_ict_level_iv`;
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewUsersDetails`()
BEGIN
	 SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `lecturer` a, `user` b WHERE a.`id` = b.`id` AND a.`is_deleted` = 0
UNION
SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `student` a, `user` b WHERE a.`id` = b.`id` AND a.`is_deleted` = 0
UNION
SELECT a.`id` AS 'ID', a.`f_name` AS 'First Name', a.`l_name` AS 'Last Name', a.`dob` AS 'DOB', a.`gender` AS 'Gender', a.`nic` AS 'NIC', a.`address` AS 'Address', a.`contact` AS 'Contact', a.`email` AS 'Email', a.`department` AS 'Department', b.`role` AS 'Role', b.`password` AS 'Password' FROM `tech_officer` a, `user` b WHERE a.`id` = b.`id` AND a.`is_deleted` = 0;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` char(5) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `nic` char(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `f_name`, `l_name`, `dob`, `gender`, `nic`, `address`, `contact`, `email`, `is_deleted`) VALUES
('AD001', 'Madushan', 'Sandaruwan', '1998-01-17', 'M', '980171329v', 'Bambaragala,\nKoththallena,\nHatton.', 778321006, 'tg2017233@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_bst_level_i`
--

CREATE TABLE IF NOT EXISTS `attendance_bst_level_i` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_bst_level_i`
--

INSERT INTO `attendance_bst_level_i` (`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES
('TG009', 'BST1111', '2019-10-23', 'T', 2, 0),
('TG010', 'BST1111', '2019-10-23', 'T', 2, 1),
('TG011', 'BST1111', '2019-10-23', 'T', 2, 0),
('TG012', 'BST1111', '2019-10-23', 'T', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_bst_level_ii`
--

CREATE TABLE IF NOT EXISTS `attendance_bst_level_ii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_bst_level_iii`
--

CREATE TABLE IF NOT EXISTS `attendance_bst_level_iii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_bst_level_iv`
--

CREATE TABLE IF NOT EXISTS `attendance_bst_level_iv` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ent_level_i`
--

CREATE TABLE IF NOT EXISTS `attendance_ent_level_i` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ent_level_ii`
--

CREATE TABLE IF NOT EXISTS `attendance_ent_level_ii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ent_level_iii`
--

CREATE TABLE IF NOT EXISTS `attendance_ent_level_iii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ent_level_iv`
--

CREATE TABLE IF NOT EXISTS `attendance_ent_level_iv` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ict_level_i`
--

CREATE TABLE IF NOT EXISTS `attendance_ict_level_i` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_ict_level_i`
--

INSERT INTO `attendance_ict_level_i` (`student_id`, `course_id`, `date`, `type`, `hours`, `status`) VALUES
('TG001', 'ICT1113', '2019-09-01', 'T', 1, 1),
('TG001', 'ICT1113', '2019-09-02', 'T', 2, 1),
('TG001', 'ICT1113', '2019-09-03', 'T', 3, 1),
('TG001', 'ICT1113', '2019-09-04', 'T', 4, 1),
('TG001', 'ICT1113', '2019-10-23', 'T', 2, 1),
('TG001', 'ICT1133', '2019-09-11', 'P', 2, 1),
('TG001', 'ICT1133', '2019-09-25', 'P', 5, 1),
('TG001', 'ICT1133', '2019-09-26', 'T', 2, 1),
('TG001', 'ICT1133', '2019-09-28', 'P', 3, 1),
('TG001', 'ICT1133', '2019-09-29', 'P', 1, 1),
('TG002', 'ICT1113', '2019-09-01', 'T', 1, 0),
('TG002', 'ICT1113', '2019-09-02', 'T', 2, 1),
('TG002', 'ICT1113', '2019-09-03', 'T', 3, 1),
('TG002', 'ICT1113', '2019-09-04', 'T', 4, 1),
('TG002', 'ICT1113', '2019-10-23', 'T', 2, 0),
('TG002', 'ICT1133', '2019-09-11', 'P', 2, 1),
('TG002', 'ICT1133', '2019-09-25', 'P', 5, 1),
('TG002', 'ICT1133', '2019-09-26', 'T', 2, 1),
('TG002', 'ICT1133', '2019-09-28', 'P', 3, 1),
('TG002', 'ICT1133', '2019-09-29', 'P', 1, 1),
('TG003', 'ICT1113', '2019-09-01', 'T', 1, 1),
('TG003', 'ICT1113', '2019-09-02', 'T', 2, 1),
('TG003', 'ICT1113', '2019-09-03', 'T', 3, 1),
('TG003', 'ICT1113', '2019-09-04', 'T', 4, 0),
('TG003', 'ICT1113', '2019-10-23', 'T', 2, 0),
('TG003', 'ICT1133', '2019-09-11', 'P', 2, 1),
('TG003', 'ICT1133', '2019-09-25', 'P', 5, 0),
('TG003', 'ICT1133', '2019-09-26', 'T', 2, 1),
('TG003', 'ICT1133', '2019-09-28', 'P', 3, 1),
('TG003', 'ICT1133', '2019-09-29', 'P', 1, 0),
('TG004', 'ICT1113', '2019-09-01', 'T', 1, 0),
('TG004', 'ICT1113', '2019-09-02', 'T', 2, 1),
('TG004', 'ICT1113', '2019-09-03', 'T', 3, 1),
('TG004', 'ICT1113', '2019-09-04', 'T', 4, 1),
('TG004', 'ICT1113', '2019-10-23', 'T', 2, 0),
('TG004', 'ICT1133', '2019-09-11', 'P', 2, 1),
('TG004', 'ICT1133', '2019-09-25', 'P', 5, 0),
('TG004', 'ICT1133', '2019-09-26', 'T', 2, 1),
('TG004', 'ICT1133', '2019-09-28', 'P', 3, 0),
('TG004', 'ICT1133', '2019-09-29', 'P', 1, 1),
('TG013', 'ICT1113', '2019-10-23', 'T', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ict_level_ii`
--

CREATE TABLE IF NOT EXISTS `attendance_ict_level_ii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ict_level_iii`
--

CREATE TABLE IF NOT EXISTS `attendance_ict_level_iii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_ict_level_iv`
--

CREATE TABLE IF NOT EXISTS `attendance_ict_level_iv` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` char(7) NOT NULL,
  `title` varchar(100) NOT NULL,
  `coordinator` char(5) NOT NULL,
  `credit` int(11) NOT NULL,
  `department` char(3) NOT NULL,
  `level` varchar(3) NOT NULL,
  `quiz_mark` int(11) NOT NULL,
  `assess_mark` int(11) NOT NULL,
  `mid_mark` int(11) NOT NULL,
  `theory_mark` int(11) NOT NULL,
  `practical_mark` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `coordinator`, `credit`, `department`, `level`, `quiz_mark`, `assess_mark`, `mid_mark`, `theory_mark`, `practical_mark`, `is_deleted`) VALUES
('BST1111', 'Animal Science', 'LC004', 1, 'BST', 'I', 0, 0, 30, 40, 30, 0),
('ENT1114', 'PM', 'LC005', 4, 'ENT', 'I', 0, 30, 0, 70, 0, 0),
('ENT1122', 'EM', 'LC006', 2, 'ENT', 'I', 10, 30, 0, 60, 0, 0),
('ICT1113', 'SADU', 'LC001', 3, 'ICT', 'I', 10, 30, 0, 60, 0, 0),
('ICT1115', 'fhgg', 'LC001', 5, 'ICT', 'I', 10, 30, 0, 50, 10, 0),
('ICT1124', 'PHP', 'LC002', 4, 'ICT', 'I', 10, 0, 0, 40, 50, 0),
('ICT1133', 'C Programming', 'LC003', 3, 'ICT', 'I', 10, 0, 30, 30, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` char(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
('BST', 'Bio system Technology'),
('ENT', 'Engineering Technology'),
('ICT', 'Information Communication Technology');

-- --------------------------------------------------------

--
-- Stand-in structure for view `final_result`
--
CREATE TABLE IF NOT EXISTS `final_result` (
);
-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `id` char(5) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `nic` char(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `department` char(3) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `f_name`, `l_name`, `dob`, `gender`, `nic`, `address`, `contact`, `email`, `department`, `is_deleted`) VALUES
('LC001', 'Mithila', 'Madushanka', '1997-05-17', 'M', '971584237v', 'Heeloya,\nBandarawela.', 714852395, 'mithila@gmail.com', 'ICT', 0),
('LC002', 'Manura', 'Lakshan', '1996-05-02', 'F', '963584217v', 'Ginthota,\nGalle.', 774815247, 'manura@gmail.com', 'ICT', 0),
('LC003', 'Ruvindu', 'Madushanka', '1997-08-23', 'M', '971425896v', 'Agalawaththa.', 754218547, 'ruvindu@gmail.com', 'ICT', 0),
('LC004', 'Dulmini', 'Sandunika', '1997-10-14', 'F', '975894789v', 'Kolonnawa.', 771589359, 'dulmini@gmai.com', 'BST', 0),
('LC005', 'Hameesha', 'Rantharu', '1997-09-28', 'M', '974239566v', 'Meegoda.', 728596576, 'hameesha@gmail.com', 'ENT', 0),
('LC006', 'Ravindu', 'Lakmal', '1997-02-03', 'M', '975741239v', 'Ambalangoda,\nGalle.', 762589423, 'ravindu@gmail.com', 'ENT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `stu_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `q1` float(5,2) NOT NULL DEFAULT '0.00',
  `q2` float(5,2) NOT NULL DEFAULT '0.00',
  `q3` float(5,2) NOT NULL DEFAULT '0.00',
  `q4` float(5,2) NOT NULL DEFAULT '0.00',
  `a1` float(5,2) NOT NULL DEFAULT '0.00',
  `a2` float(5,2) NOT NULL DEFAULT '0.00',
  `a3` float(5,2) NOT NULL DEFAULT '0.00',
  `mid` float(5,2) NOT NULL DEFAULT '0.00',
  `f_theory` float(5,2) NOT NULL DEFAULT '0.00',
  `f_practical` float(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`stu_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`stu_id`, `course_id`, `q1`, `q2`, `q3`, `q4`, `a1`, `a2`, `a3`, `mid`, `f_theory`, `f_practical`) VALUES
('TG001', 'ICT1113', 90.00, 80.00, 80.00, 80.00, 80.00, 60.00, 80.00, 75.00, 80.00, 80.00);

-- --------------------------------------------------------

--
-- Table structure for table `medical_bst_level_i`
--

CREATE TABLE IF NOT EXISTS `medical_bst_level_i` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_bst_level_ii`
--

CREATE TABLE IF NOT EXISTS `medical_bst_level_ii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_bst_level_iii`
--

CREATE TABLE IF NOT EXISTS `medical_bst_level_iii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_bst_level_iv`
--

CREATE TABLE IF NOT EXISTS `medical_bst_level_iv` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ent_level_i`
--

CREATE TABLE IF NOT EXISTS `medical_ent_level_i` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ent_level_ii`
--

CREATE TABLE IF NOT EXISTS `medical_ent_level_ii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ent_level_iii`
--

CREATE TABLE IF NOT EXISTS `medical_ent_level_iii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ent_level_iv`
--

CREATE TABLE IF NOT EXISTS `medical_ent_level_iv` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ict_level_i`
--

CREATE TABLE IF NOT EXISTS `medical_ict_level_i` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_ict_level_i`
--

INSERT INTO `medical_ict_level_i` (`student_id`, `course_id`, `date`, `type`, `hours`) VALUES
('tg001', 'ICT1113', '2019-09-04', 'T', 4),
('tg001', 'ICT1133', '2019-09-29', 'P', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medical_ict_level_ii`
--

CREATE TABLE IF NOT EXISTS `medical_ict_level_ii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ict_level_iii`
--

CREATE TABLE IF NOT EXISTS `medical_ict_level_iii` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ict_level_iv`
--

CREATE TABLE IF NOT EXISTS `medical_ict_level_iv` (
  `student_id` char(5) NOT NULL,
  `course_id` char(7) NOT NULL,
  `date` date NOT NULL,
  `type` char(1) NOT NULL,
  `hours` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`date`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` char(5) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `title`, `content`, `is_deleted`) VALUES
('N0001', '2019-09-13', 'To ALL Students', 'I will announce the date of commencement of classes and the date for you to\ncome to the hostels, when it is ready to conduct classes.\nYou all could use this period to study and get ready for the examinations.\nDean/Technology', 0),
('N0002', '2019-09-13', 'To all students', 'Applications are invited from eligible candidates for the semester I,\nexamination of Level I, II and III, Bachelor of Engineering Technology,\nBachelor of Information and communication Technology and Bachelor of Bio-systems Technology.', 0),
('N0003', '2019-09-13', 'On TCS 2122 Soft Skills for 2 nd year and 3 rd year repeat students', 'As informed at the last lecture you are required to submit a report consisting of five/six pages\nbased on the event you conducted of the above course module.', 0),
('N0004', '2019-09-20', '1111', '45552mknldknk vfd', 1),
('N0005', '2019-09-20', 'aaa', 'dddd', 1),
('N0006', '2019-10-23', 'ffgfj', 'vgjvkhgbu', 1),
('N0007', '2019-10-23', 'dcsa', 'dqsadxq', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `result1`
--
CREATE TABLE IF NOT EXISTS `result1` (
);
-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` char(5) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `nic` char(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `department` char(3) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `f_name`, `l_name`, `dob`, `gender`, `nic`, `address`, `contact`, `email`, `department`, `is_deleted`) VALUES
('TG001', 'Kelum', 'Nagodawithana', '1997-08-09', 'M', '975893954v', 'Ambalangoda.', 725893214, 'kelum@gmail.com', 'ICT', 0),
('TG002', 'Chamika', 'Ravihara', '1997-05-23', 'M', '974125967v', 'Ja-Ela.', 702589354, 'rhameesha@gmail.com', 'ICT', 0),
('TG003', 'Ishanka', 'Hewapathirana', '1997-05-20', 'F', '975412395v', 'Thalalla,\nMatara.', 712478534, 'ishanka@gmail.com', 'ICT', 0),
('TG004', 'Jithmi', 'Dasunika', '1997-04-16', 'F', '978541239v', 'Matara.', 775841239, 'jithmi@gmail.com', 'ICT', 0),
('TG005', 'Shashani', 'Dhanujika', '1996-08-05', 'F', '968541238v', 'Kalawana,\nRathnapura.', 789541230, 'sashani@gmail.com', 'ENT', 0),
('TG006', 'Tharindu', 'Madushanka', '1997-02-28', 'M', '972108452v', 'Bandaragama,\nPiliyandala.', 752413025, 'tharindu@gmail.com', 'ENT', 0),
('TG007', 'Sampath', 'Sandaruwan', '1998-01-17', 'M', '980174523v', 'Ibbagamuwa,\nKurunegala.', 771485236, 'sampath@mail.com', 'ENT', 0),
('TG008', 'Sachin', 'Rasanjana', '1997-06-30', 'M', '975823102v', 'Kekirawa,\nAnuradhapura.', 712358941, 'sachin@gmail.com', 'ENT', 0),
('TG009', 'Ishara', 'Dilini', '1997-04-22', 'F', '972586412v', 'Kegalla.', 771485239, 'ishara@gmail.com', 'BST', 0),
('TG010', 'Watasha', 'Harshani', '1997-10-20', 'F', '975894123v', 'Butthala.', 702385924, 'watasha@gmail.com', 'BST', 0),
('TG011', 'Supun', 'Chalaka', '1997-03-31', 'M', '973201423v', 'Angoda.', 774125894, 'supun@gmail.com', 'BST', 0),
('TG012', 'Yasuru', 'Dineth', '1997-08-09', 'M', '978451203v', 'Biyagama.', 784589231, 'yasuru@gmail.com', 'BST', 0),
('TG013', 'dcsbkjds', 'xasa', '2019-10-15', 'M', '33333', 'sdaxa', 5555, '5445', 'ICT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tech_officer`
--

CREATE TABLE IF NOT EXISTS `tech_officer` (
  `id` char(5) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `nic` char(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `department` char(3) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_officer`
--

INSERT INTO `tech_officer` (`id`, `f_name`, `l_name`, `dob`, `gender`, `nic`, `address`, `contact`, `email`, `department`, `is_deleted`) VALUES
('TO001', 'Pasindu', 'Madusanka', '1997-07-09', 'M', '975841389v', 'Piliyandala.', 702478541, 'pasindu@gmail.com', 'ICT', 0),
('TO002', 'Yasiru', 'Nimnada', '1997-01-08', 'M', '974136657v', 'Agunakolapelessa.', 784123956, 'yasiru@gmail.com', 'ENT', 0),
('TO003', 'Buddhini', 'Dilshara', '1997-06-04', 'F', '978542310v', 'Nawalapitiya.', 774851230, 'dilshara@gmail.com', 'BST', 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_table_bst_level_i`
--

CREATE TABLE IF NOT EXISTS `time_table_bst_level_i` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_bst_level_i`
--

INSERT INTO `time_table_bst_level_i` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_bst_level_ii`
--

CREATE TABLE IF NOT EXISTS `time_table_bst_level_ii` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_bst_level_ii`
--

INSERT INTO `time_table_bst_level_ii` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_bst_level_iii`
--

CREATE TABLE IF NOT EXISTS `time_table_bst_level_iii` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_bst_level_iii`
--

INSERT INTO `time_table_bst_level_iii` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_bst_level_iv`
--

CREATE TABLE IF NOT EXISTS `time_table_bst_level_iv` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_bst_level_iv`
--

INSERT INTO `time_table_bst_level_iv` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ent_level_i`
--

CREATE TABLE IF NOT EXISTS `time_table_ent_level_i` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ent_level_i`
--

INSERT INTO `time_table_ent_level_i` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ent_level_ii`
--

CREATE TABLE IF NOT EXISTS `time_table_ent_level_ii` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ent_level_ii`
--

INSERT INTO `time_table_ent_level_ii` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ent_level_iii`
--

CREATE TABLE IF NOT EXISTS `time_table_ent_level_iii` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ent_level_iii`
--

INSERT INTO `time_table_ent_level_iii` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ent_level_iv`
--

CREATE TABLE IF NOT EXISTS `time_table_ent_level_iv` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ent_level_iv`
--

INSERT INTO `time_table_ent_level_iv` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ict_level_i`
--

CREATE TABLE IF NOT EXISTS `time_table_ict_level_i` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ict_level_i`
--

INSERT INTO `time_table_ict_level_i` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', 'ICT1113', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ict_level_ii`
--

CREATE TABLE IF NOT EXISTS `time_table_ict_level_ii` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ict_level_ii`
--

INSERT INTO `time_table_ict_level_ii` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ict_level_iii`
--

CREATE TABLE IF NOT EXISTS `time_table_ict_level_iii` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ict_level_iii`
--

INSERT INTO `time_table_ict_level_iii` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ict_level_iv`
--

CREATE TABLE IF NOT EXISTS `time_table_ict_level_iv` (
  `time` char(13) NOT NULL,
  `monday` varchar(8) NOT NULL,
  `tuesday` varchar(8) NOT NULL,
  `wednesday` varchar(8) NOT NULL,
  `thursday` varchar(8) NOT NULL,
  `friday` varchar(8) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ict_level_iv`
--

INSERT INTO `time_table_ict_level_iv` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('08:00 - 09:00', '-', '-', '-', '-', '-'),
('09:00 - 10:00', '-', '-', '-', '-', '-'),
('10:00 - 11:00', '-', '-', '-', '-', '-'),
('11:00 - 12:00', '-', '-', '-', '-', '-'),
('12:00 - 13:00', '-', '-', '-', '-', '-'),
('13:00 - 14:00', '-', '-', '-', '-', '-'),
('14:00 - 15:00', '-', '-', '-', '-', '-'),
('15:00 - 16:00', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` char(5) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `role`, `is_deleted`) VALUES
('AD001', '123', 'admin', 0),
('LC001', '123', 'lecturer', 0),
('LC002', '123', 'lecturer', 0),
('LC003', '123', 'lecturer', 0),
('LC004', '123', 'lecturer', 0),
('LC005', '123', 'lecturer', 0),
('LC006', '123', 'lecturer', 0),
('TG001', '123', 'student', 0),
('TG002', '456', 'student', 0),
('TG003', '123', 'student', 0),
('TG004', '123', 'student', 0),
('TG005', '123', 'student', 0),
('TG006', '123', 'student', 0),
('TG007', '123', 'student', 0),
('TG008', '123', 'student', 0),
('TG009', '123', 'student', 0),
('TG010', '123', 'student', 0),
('TG011', '123', 'student', 0),
('TG012', '123', 'student', 0),
('TG013', '123', 'student', 0),
('TO001', '123', 'technical officer', 0),
('TO002', '123', 'technical officer', 0),
('TO003', '123', 'technical officer', 0);

-- --------------------------------------------------------

--
-- Structure for view `final_result`
--
DROP TABLE IF EXISTS `final_result`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `final_result` AS select `result1`.`stuID` AS `stuID`,`result1`.`courseID` AS `courseID`,`result1`.`total_marks` AS `total_marks`,if(((`result1`.`total_marks` > 84) and (`result1`.`total_marks` < 101)),'A',if(((`result1`.`total_marks` > 74) and (`result1`.`total_marks` < 85)),'A',if(((`result1`.`total_marks` > 69) and (`result1`.`total_marks` < 75)),'A-',if(((`result1`.`total_marks` > 64) and (`result1`.`total_marks` < 70)),'B+',if(((`result1`.`total_marks` > 59) and (`result1`.`total_marks` < 65)),'B',if(((`result1`.`total_marks` > 54) and (`result1`.`total_marks` < 60)),'B-',if(((`result1`.`total_marks` > 49) and (`result1`.`total_marks` < 55)),'C+',if(((`result1`.`total_marks` > 44) and (`result1`.`total_marks` < 50)),'C',if(((`result1`.`total_marks` > 39) and (`result1`.`total_marks` < 45)),'C-',if(((`result1`.`total_marks` > 34) and (`result1`.`total_marks` < 40)),'D+',if(((`result1`.`total_marks` > 29) and (`result1`.`total_marks` < 35)),'D',if(((`result1`.`total_marks` > 0) and (`result1`.`total_marks` < 30)),'E','NULL')))))))))))) AS `grade` from `result1`;

-- --------------------------------------------------------

--
-- Structure for view `result1`
--
DROP TABLE IF EXISTS `result1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `result1` AS select `final_marks`.`stuID` AS `stuID`,`final_marks`.`courseID` AS `courseID`,((((((((`ca_marks`.`Q1` + `ca_marks`.`Q2`) + `ca_marks`.`Q3`) + `ca_marks`.`Q4`) + `ca_marks`.`A1`) + `ca_marks`.`A2`) + `ca_marks`.`A3`) + `ca_marks`.`A4`) + `ca_marks`.`mid_marks`) AS `ca_final_marks`,(`final_marks`.`practical` + `final_marks`.`theory`) AS `final_exam_marks`,((((((((((`ca_marks`.`Q1` + `ca_marks`.`Q2`) + `ca_marks`.`Q3`) + `ca_marks`.`Q4`) + `ca_marks`.`A1`) + `ca_marks`.`A2`) + `ca_marks`.`A3`) + `ca_marks`.`A4`) + `ca_marks`.`mid_marks`) + `final_marks`.`practical`) + `final_marks`.`theory`) AS `total_marks` from (`final_marks` join `ca_marks`) where ((`final_marks`.`stuID` = `ca_marks`.`stuID`) and (`final_marks`.`courseID` = `ca_marks`.`courseID`));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
