-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 01:08 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hp_mgmt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE `admitpatient_room` (
  `PatientID` int(10) NOT NULL,
  `Disease` varchar(50) DEFAULT NULL,
  `AdmitDate` date DEFAULT NULL,
  `RoomNo` int(5) NOT NULL,
  `DoctorID` int(10) NOT NULL,
  `AP_Remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admitpatient_room`
--

INSERT INTO `admitpatient_room` (`PatientID`, `Disease`, `AdmitDate`, `RoomNo`, `DoctorID`, `AP_Remarks`) VALUES
(11111, 'Typhoid fever', '2021-03-02', 1, 1, 'High temp and weakness.');

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE `bill_room` (
  `DischargeID` int(5) DEFAULT NULL,
  `BillingDate` date DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `PaymentMode` varchar(20) DEFAULT NULL,
  `PaymentModeDetails` varchar(100) DEFAULT NULL,
  `TotalCharges` int(10) DEFAULT NULL,
  `NoOfDays` int(5) DEFAULT NULL,
  `TotalRoomCharges` int(10) DEFAULT NULL,
  `BillNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_room`
--

INSERT INTO `bill_room` (`DischargeID`, `BillingDate`, `RoomCharges`, `ServiceCharges`, `PaymentMode`, `PaymentModeDetails`, `TotalCharges`, `NoOfDays`, `TotalRoomCharges`, `BillNo`) VALUES
(1, '2015-01-12', 5000, 500, 'by Cash', 'Payment done successfully!', 1485500, 297, 1485000, '120150112'),
(12, '2015-01-20', 2500, 500, 'by Credit Card', 'NA', 500, 0, 0, '1220150120'),
(3, '2018-04-15', 5000, 20000, 'by Credit Card', '', 20000, 0, 0, '320180415');

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE `dischargepatient_room` (
  `AdmitID` int(20) DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  `DP_Remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dischargepatient_room`
--

INSERT INTO `dischargepatient_room` (`AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(1, '2015-01-12', 'Patient recovered successfully!'),
(12, '2015-01-20', 'Patient is stable'),
(3, '2018-04-15', 'Patient operated');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(10) NOT NULL,
  `DoctorName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ContacNo` varchar(11) DEFAULT NULL,
  `Qualifications` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorName`, `FatherName`, `Email`, `ContacNo`, `Qualifications`, `Gender`, `BloodGroup`, `DateOfJoining`, `Address`) VALUES
(1, 'Ajay Mishra', 'Deepak MIshra', 'ajay123@gmail.com ', '9880876532', 'MD,MBBS', 'M', 'A+', '2014-03-20', '108;Whitefield,Bangalore-560066'),
(2, 'Anjali Chopra', 'Madan Chopra', 'anjalirox123@gmail.com', '9880756634', 'MD,MBBS', 'F', 'A-', '2016-01-02', '#111;Gayathri Temple;Whitefield;Bangalore-560066');

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE `patientregistration` (
  `PatientID` int(10) NOT NULL,
  `PatientName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContactNo` varchar(11) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `Gen` varchar(1) DEFAULT NULL,
  `BG` varchar(3) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `PatientName`, `FatherName`, `Email`, `ContactNo`, `Age`, `Remarks`, `Gen`, `BG`, `Address`) VALUES
(11111, 'Angel Jude Suarez', 'Michael Suarez', 'jude@gmail.com', '09272777334', 25, 'Gwapo nga taho', 'M', 'C++', 'Himamaylan City');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `user_name`, `password`, `email_id`, `contact_no`) VALUES
('akshay', 'ak', 'akshay', 'xyz', 41162171),
('Akash', 'akash', '12345', 'akash.agarwal', 41162171),
('akshay', 'aksh', 'aksh', 'aksh@gmail.com', 41162181),
('anurag', 'anu', 'anu123', 'sampath.anurag@gmail.com', 80956835),
('avit', 'avit', 'avit', 'avit', 213);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` int(5) NOT NULL,
  `RoomType` varchar(10) DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
(1, 'General', 5000, 'Vacant'),
(2, 'General', 2500, 'Vacant'),
(3, 'Deluxe', 10000, 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceName` varchar(20) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `ServiceID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceName`, `ServiceDate`, `PatientID`, `ServiceCharges`, `ServiceID`) VALUES
('General Consultation', '2021-03-01', 11111, 500, 16);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `password`) VALUES
('ak', '12345'),
('akash', '123456'),
('aksh', 'akash'),
('anu', 'anu123'),
('avit', 'akash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD PRIMARY KEY (`PatientID`),
  ADD KEY `RoomNo` (`RoomNo`),
  ADD KEY `DoctorID` (`DoctorID`);

--
-- Indexes for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD PRIMARY KEY (`BillNo`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patientregistration`
--
ALTER TABLE `patientregistration`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;






/*     for oracle  */
-- Create a new user
CREATE USER HPMS IDENTIFIED BY HPMS;

-- Grant the necessary privileges to the user
GRANT CONNECT, RESOURCE TO HPMS;

-- Optionally, grant the user additional privileges for specific operations
-- For example, if you want to grant all privileges on your database:
GRANT ALL PRIVILEGES TO HPMS;

-- Alternatively, you can grant specific privileges, like:
-- GRANT SELECT, INSERT, UPDATE, DELETE ON <table_name> TO HPMS;

-- Oracle SQL Dump for `hp_mgmt_db`

-- Start of the transaction
SET DEFINE OFF;

-- Create tables

-- Table `admitpatient_room`
CREATE TABLE admitpatient_room (
  PatientID NUMBER(10) NOT NULL,
  Disease VARCHAR2(50),
  AdmitDate DATE,
  RoomNo NUMBER(5) NOT NULL,
  DoctorID NUMBER(10) NOT NULL,
  AP_Remarks VARCHAR2(50)
);

-- Table `bill_room`
CREATE TABLE bill_room (
  DischargeID NUMBER(5),
  BillingDate DATE,
  RoomCharges NUMBER(10),
  ServiceCharges NUMBER(10),
  PaymentMode VARCHAR2(20),
  PaymentModeDetails VARCHAR2(100),
  TotalCharges NUMBER(10),
  NoOfDays NUMBER(5),
  TotalRoomCharges NUMBER(10),
  BillNo VARCHAR2(15) NOT NULL
);

-- Table `dischargepatient_room`
CREATE TABLE dischargepatient_room (
  AdmitID NUMBER(20),
  DischargeDate DATE,
  DP_Remarks VARCHAR2(50)
);

-- Table `doctor`
CREATE TABLE doctor (
  DoctorID NUMBER(10) NOT NULL,
  DoctorName VARCHAR2(20),
  FatherName VARCHAR2(20),
  Email VARCHAR2(50),
  ContacNo VARCHAR2(11),
  Qualifications VARCHAR2(50),
  Gender VARCHAR2(1),
  BloodGroup VARCHAR2(5),
  DateOfJoining DATE,
  Address VARCHAR2(100)
);

-- Table `patientregistration`
CREATE TABLE patientregistration (
  PatientID NUMBER(10) NOT NULL,
  PatientName VARCHAR2(20),
  FatherName VARCHAR2(20),
  Email VARCHAR2(30),
  ContactNo VARCHAR2(11),
  Age NUMBER(2),
  Remarks VARCHAR2(100),
  Gen VARCHAR2(1),
  BG VARCHAR2(3),
  Address VARCHAR2(100)
);

-- Table `registration`
CREATE TABLE registration (
  name VARCHAR2(20),
  user_name VARCHAR2(20) NOT NULL,
  password VARCHAR2(20),
  email_id VARCHAR2(30),
  contact_no NUMBER(10)
);

-- Table `room`
CREATE TABLE room (
  RoomNo NUMBER(5) NOT NULL,
  RoomType VARCHAR2(10),
  RoomCharges NUMBER(10),
  RoomStatus VARCHAR2(10)
);

-- Table `services`
CREATE TABLE services (
  ServiceName VARCHAR2(20),
  ServiceDate DATE,
  PatientID NUMBER(10),
  ServiceCharges NUMBER(10),
  ServiceID NUMBER(10) NOT NULL
);

-- Table `users`
CREATE TABLE users (
  user_name VARCHAR2(20) NOT NULL,
  password VARCHAR2(20)
);

-- Inserting data (Data for `admitpatient_room` table as an example)
INSERT INTO admitpatient_room (PatientID, Disease, AdmitDate, RoomNo, DoctorID, AP_Remarks) VALUES
(11111, 'Typhoid fever', TO_DATE('2021-03-02', 'YYYY-MM-DD'), 1, 1, 'High temp and weakness.');

-- Inserting data for `bill_room` (example)
INSERT INTO bill_room (DischargeID, BillingDate, RoomCharges, ServiceCharges, PaymentMode, PaymentModeDetails, TotalCharges, NoOfDays, TotalRoomCharges, BillNo) VALUES
(1, TO_DATE('2015-01-12', 'YYYY-MM-DD'), 5000, 500, 'by Cash', 'Payment done successfully!', 1485500, 297, 1485000, '120150112'),
(12, TO_DATE('2015-01-20', 'YYYY-MM-DD'), 2500, 500, 'by Credit Card', 'NA', 500, 0, 0, '1220150120'),
(3, TO_DATE('2018-04-15', 'YYYY-MM-DD'), 5000, 20000, 'by Credit Card', '', 20000, 0, 0, '320180415');

-- Creating Primary Keys
ALTER TABLE admitpatient_room ADD CONSTRAINT pk_admitpatient_room PRIMARY KEY (PatientID);
ALTER TABLE bill_room ADD CONSTRAINT pk_bill_room PRIMARY KEY (BillNo);
ALTER TABLE doctor ADD CONSTRAINT pk_doctor PRIMARY KEY (DoctorID);
ALTER TABLE patientregistration ADD CONSTRAINT pk_patientregistration PRIMARY KEY (PatientID);
ALTER TABLE registration ADD CONSTRAINT pk_registration PRIMARY KEY (user_name);
ALTER TABLE room ADD CONSTRAINT pk_room PRIMARY KEY (RoomNo);
ALTER TABLE services ADD CONSTRAINT pk_services PRIMARY KEY (ServiceID);
ALTER TABLE users ADD CONSTRAINT pk_users PRIMARY KEY (user_name);

-- Foreign Key Constraints

-- Foreign Key for `admitpatient_room`
ALTER TABLE admitpatient_room
  ADD CONSTRAINT fk_admitpatient_room_room FOREIGN KEY (RoomNo) REFERENCES room (RoomNo),
  ADD CONSTRAINT fk_admitpatient_room_doctor FOREIGN KEY (DoctorID) REFERENCES doctor (DoctorID);

-- Sequences for Auto-Increment (Oracle doesn't support AUTO_INCREMENT)
CREATE SEQUENCE services_seq START WITH 20;

-- Trigger to simulate AUTO_INCREMENT for `services`
CREATE OR REPLACE TRIGGER services_trigger
  BEFORE INSERT ON services
  FOR EACH ROW
BEGIN
  SELECT services_seq.NEXTVAL
  INTO :NEW.ServiceID
  FROM dual;
END;

-- Commit the transaction
COMMIT;
