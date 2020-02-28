-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2020 at 01:49 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_virdask`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `ID` int(11) NOT NULL,
  `EmployeeCode` int(100) DEFAULT NULL,
  `AttendanceDate` date DEFAULT NULL,
  `InTime` time DEFAULT NULL,
  `InDeviceName` varchar(100) DEFAULT NULL,
  `OutTime` time DEFAULT NULL,
  `OutDeviceName` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `StatusCode` varchar(100) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `LateBy` int(11) DEFAULT NULL,
  `Earlyby` int(11) DEFAULT NULL,
  `Overtime` int(11) DEFAULT NULL,
  `IsOnLeave` varchar(100) DEFAULT NULL,
  `LeaveType` varchar(100) DEFAULT NULL,
  `IsOnOutDoorEntries` varchar(100) DEFAULT NULL,
  `OutDoorDuration` int(11) DEFAULT NULL,
  `PunchRecords` varchar(100) DEFAULT NULL,
  `ShiftName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`ID`, `EmployeeCode`, `AttendanceDate`, `InTime`, `InDeviceName`, `OutTime`, `OutDeviceName`, `Status`, `StatusCode`, `Duration`, `LateBy`, `Earlyby`, `Overtime`, `IsOnLeave`, `LeaveType`, `IsOnOutDoorEntries`, `OutDoorDuration`, `PunchRecords`, `ShiftName`) VALUES
(2553, 1001, '2020-02-26', '11:26:00', 'TD', '16:15:00', 'TD', 'Absent', 'A', 5, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '11:26:in(TD) 18:26:(TD) ', 'GS'),
(2554, 1002, '2018-07-24', '12:20:00', '', '18:18:00', '', 'Absent', 'A', 6, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '', 'NS'),
(2555, 1004, '2018-07-24', '10:11:00', 'TD', '12:11:00', 'TD', 'Absent', 'A', 2, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '10:11:in(TD) ', 'GS'),
(2556, 1006, '2018-07-24', '09:50:00', '', '18:18:00', '', 'Absent', 'A', 9, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '', 'NS'),
(2557, 1008, '2018-07-24', '11:15:00', '', '19:18:00', '', 'Absent', 'A', 8, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '', 'NS'),
(2558, 1009, '2018-07-24', '13:20:00', '', '20:18:00', '', 'Absent', 'A', 7, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '', 'NS'),
(2559, 1010, '2018-07-24', '08:05:00', '', '21:18:00', '', 'Absent', 'A', 13, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '', 'NS'),
(2560, 1011, '2018-07-24', '09:05:00', '', '22:18:00', '', 'Absent', 'A', 13, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '', 'NS'),
(2561, 1012, '2018-07-24', '10:05:00', '', '23:18:00', '', 'Absent', 'A', 13, 0, 0, 0, 'FALSE', '', 'FALSE', 0, '', 'NS');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `ID` int(100) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeCode` int(100) NOT NULL,
  `EmployeeName` varchar(100) DEFAULT NULL,
  `DeviceCode` varchar(100) NOT NULL,
  `Company` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Grade` varchar(100) NOT NULL,
  `Team` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `EmploymentType` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `DOJ` varchar(100) NOT NULL,
  `DOC` varchar(100) NOT NULL,
  `CardNumber` varchar(100) NOT NULL,
  `ShiftRoaster` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `PL` int(100) NOT NULL,
  `SL` int(100) NOT NULL,
  `CL` int(100) NOT NULL,
  `OL` int(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeCode`, `EmployeeName`, `DeviceCode`, `Company`, `Department`, `Location`, `Designation`, `Grade`, `Team`, `Category`, `EmploymentType`, `Gender`, `DOJ`, `DOC`, `CardNumber`, `ShiftRoaster`, `Status`, `DOB`, `PL`, `SL`, `CL`, `OL`, `Email`) VALUES
(111, 'Viraj sardeshpande D', '', 'Virdaks Engineering', 'D2', '', 'Manager', '', '', '', 'Full-Time', 'Male', '2020-02-02', '', '', '', '', '1996-03-11', 28, 5, 5, 8, 'virajdsardeshpande@gmail.com'),
(1001, 'ABC', '1001', 'Virdaks Engineering', 'Default', '', 'asd', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, 'Paranjapepri11@gmail.com'),
(1002, 'PQR', '1002', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1004, 'ASD', '1004', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1006, 'SDA', '1006', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1008, 'JHB', '1008', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1009, 'KUB', '1009', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1010, 'IUB', '1010', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1011, 'KUHk', '1011', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1012, 'ubI jhbj', '1012', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(1121, 'Aniruddha Sardeshpande', '', 'Virdaks Engineering', 'D2', '', 'Manager', '', '', '', 'Contractor', 'Male', '2020-02-20', '', '', '', '', '1986-10-25', 20, 5, 5, 5, 'Aniruddha10699@gmail.com'),
(1122, 'Tanvi Gadre', '', 'Virdaks Engineering', 'D1', '', 'Feild Worker', '', '', '', 'Part-Time', 'Male', '2020-02-20', '', '', '', '', '2020-02-20', 20, 5, 5, 5, 'tanvig@gmail.com'),
(2001, 'jusjjs sjbds ', '1019', 'Ganesh', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, ''),
(3001, ' asbbsd ', '1234', 'XYZ', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_details`
--

CREATE TABLE `employee_leave_details` (
  `ID` int(11) NOT NULL,
  `EmployeeCode` int(100) DEFAULT NULL,
  `EmployeeName` varchar(100) DEFAULT NULL,
  `PL` int(11) DEFAULT NULL,
  `SL` int(11) DEFAULT NULL,
  `CL` int(11) DEFAULT NULL,
  `OL` int(11) DEFAULT NULL,
  `LeaveType` varchar(100) DEFAULT NULL,
  `DateFrom` date DEFAULT NULL,
  `DateTo` date DEFAULT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Pending',
  `Total` int(11) NOT NULL,
  `Reasone` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave_details`
--

INSERT INTO `employee_leave_details` (`ID`, `EmployeeCode`, `EmployeeName`, `PL`, `SL`, `CL`, `OL`, `LeaveType`, `DateFrom`, `DateTo`, `Status`, `Total`, `Reasone`) VALUES
(5, 111, 'Viraj sardeshpande', NULL, NULL, NULL, NULL, 'SL', '2020-02-20', '2020-02-28', 'Approved', 0, 'Health issue');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_details`
--

CREATE TABLE `employee_salary_details` (
  `ID` int(100) NOT NULL,
  `EmployeeCode` int(100) DEFAULT NULL,
  `Company` varchar(100) NOT NULL,
  `Basic` double(10,4) NOT NULL,
  `HRA` double(10,4) NOT NULL,
  `Incentive` double(10,4) NOT NULL,
  `CA` double(10,4) NOT NULL,
  `OtherAllowances` double(10,4) NOT NULL,
  `PF_Deduction` double(10,4) NOT NULL,
  `TAX_Deduction` double(10,4) NOT NULL,
  `Bonus` double(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_master`
--

CREATE TABLE `employee_salary_master` (
  `SalarySlipCode` int(11) NOT NULL,
  `EmployeeCode` int(100) DEFAULT NULL,
  `EmployeeName` varchar(100) DEFAULT NULL,
  `Basic` varchar(100) DEFAULT NULL,
  `DA` varchar(100) DEFAULT NULL,
  `HRA` varchar(100) DEFAULT NULL,
  `CA` varchar(100) DEFAULT NULL,
  `Other_Allowances` varchar(100) DEFAULT NULL,
  `PF` varchar(100) DEFAULT NULL,
  `TAX` varchar(100) DEFAULT NULL,
  `WD` varchar(100) DEFAULT NULL,
  `PD` varchar(100) DEFAULT NULL,
  `OT` varchar(100) DEFAULT NULL,
  `NET` varchar(100) DEFAULT NULL,
  `GROSS` varchar(100) DEFAULT NULL,
  `Total` varchar(100) NOT NULL,
  `Salary_Date` date NOT NULL,
  `Incentive` float(100,4) NOT NULL,
  `Salary_Month` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `UT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `UserName`, `Password`, `UT`) VALUES
(1, 'Admin@gmail.com', '000', 'Admin'),
(2, 'Clerk@gmail.com', '000', 'Clerk'),
(3, 'Su@gmail.com', '000', 'Supervisor'),
(4, 'Viraj@gmail.com', '123', 'Employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EmployeeCode` (`EmployeeCode`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeCode`);

--
-- Indexes for table `employee_leave_details`
--
ALTER TABLE `employee_leave_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EmployeeCode` (`EmployeeCode`);

--
-- Indexes for table `employee_salary_details`
--
ALTER TABLE `employee_salary_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EmployeeCode` (`EmployeeCode`);

--
-- Indexes for table `employee_salary_master`
--
ALTER TABLE `employee_salary_master`
  ADD PRIMARY KEY (`SalarySlipCode`),
  ADD KEY `EmployeeCode` (`EmployeeCode`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2564;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leave_details`
--
ALTER TABLE `employee_leave_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_salary_details`
--
ALTER TABLE `employee_salary_details`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `employee_salary_master`
--
ALTER TABLE `employee_salary_master`
  MODIFY `SalarySlipCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendence`
--
ALTER TABLE `attendence`
  ADD CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`EmployeeCode`) REFERENCES `employee` (`EmployeeCode`);

--
-- Constraints for table `employee_leave_details`
--
ALTER TABLE `employee_leave_details`
  ADD CONSTRAINT `employee_leave_details_ibfk_1` FOREIGN KEY (`EmployeeCode`) REFERENCES `employee` (`EmployeeCode`);

--
-- Constraints for table `employee_salary_details`
--
ALTER TABLE `employee_salary_details`
  ADD CONSTRAINT `employee_salary_details_ibfk_1` FOREIGN KEY (`EmployeeCode`) REFERENCES `employee` (`EmployeeCode`);

--
-- Constraints for table `employee_salary_master`
--
ALTER TABLE `employee_salary_master`
  ADD CONSTRAINT `employee_salary_master_ibfk_1` FOREIGN KEY (`EmployeeCode`) REFERENCES `employee` (`EmployeeCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
