-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 05:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

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
  `EmployeeCode` int(100) NOT NULL DEFAULT current_timestamp(),
  `EmployeeName` varchar(100) DEFAULT NULL,
  `DeviceCode` varchar(100) NOT NULL,
  `Company` varchar(100) NOT NULL DEFAULT 'Virdaks Engineering',
  `Department` varchar(100) NOT NULL DEFAULT 'D1',
  `Location` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Grade` varchar(100) NOT NULL,
  `Team` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `EmploymentType` varchar(100) NOT NULL DEFAULT 'Part Time',
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
  `Email` varchar(100) NOT NULL,
  `picture` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeCode`, `EmployeeName`, `DeviceCode`, `Company`, `Department`, `Location`, `Designation`, `Grade`, `Team`, `Category`, `EmploymentType`, `Gender`, `DOJ`, `DOC`, `CardNumber`, `ShiftRoaster`, `Status`, `DOB`, `PL`, `SL`, `CL`, `OL`, `Email`, `picture`) VALUES
(1001, 'ABC', '1001', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1002, 'PQR', '1002', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1004, 'ASD', '1004', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1006, 'SDA', '1006', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1008, 'JHB', '1008', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1009, 'KUB', '1009', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1010, 'IUB', '1010', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1011, 'KUHk', '1011', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(1012, 'ubI jhbj', '1012', 'Virdaks Engineering', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(2001, 'jusjjs sjbds ', '1019', 'Ganesh', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', ''),
(3001, ' asbbsd ', '1234', 'XYZ', 'Default', '', '', '', '', 'Default', 'Permanent', 'Male', '01-01-1900', '', '', '', 'Working', '', 0, 0, 0, 0, '', '');

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

--
-- Dumping data for table `employee_salary_details`
--

INSERT INTO `employee_salary_details` (`ID`, `EmployeeCode`, `Company`, `Basic`, `HRA`, `Incentive`, `CA`, `OtherAllowances`, `PF_Deduction`, `TAX_Deduction`, `Bonus`) VALUES
(102, 1001, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(103, 1002, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(104, 1004, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(105, 1006, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(106, 1008, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(107, 1009, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(108, 1010, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(109, 1011, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(110, 1012, 'Virdaks Engineering', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(111, 2001, 'Ganesh', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(112, 3001, 'XYZ', 35.0000, 20.0000, 15.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000);

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
(4, 'Viraj@gmail.com', '123', 'Employee'),
(5, 'virajdsardeshpande@gmail.com', '123', 'Employee');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2641;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leave_details`
--
ALTER TABLE `employee_leave_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_salary_details`
--
ALTER TABLE `employee_salary_details`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `employee_salary_master`
--
ALTER TABLE `employee_salary_master`
  MODIFY `SalarySlipCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
