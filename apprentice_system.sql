-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 12:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apprentice_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `apprentice`
--

CREATE TABLE `apprentice` (
  `sn` int(11) NOT NULL,
  `enrollment_no` varchar(255) NOT NULL,
  `apprentice_no` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `trade` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `start_from` date NOT NULL,
  `completion_on` date NOT NULL,
  `qualification` int(11) NOT NULL,
  `punch_id` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apprentice`
--

INSERT INTO `apprentice` (`sn`, `enrollment_no`, `apprentice_no`, `name`, `father_name`, `dob`, `address`, `trade`, `department`, `mobile`, `start_from`, `completion_on`, `qualification`, `punch_id`, `status`, `role`, `password`) VALUES
(52, 'CN102008456', 'C-2888', 'RADHA PAL', 'MOOLCHAND', '1996-04-17', 'Dehradun', 'COPA', 'PA - TESTING', '8192888026', '2020-09-21', '2021-09-20', 3, '652888', 1, 2, '17.04.1996'),
(53, 'CN102002248', 'C-2889', 'YOGESH KUMAR', 'DEVPRAKASH', '1995-11-30', 'Haridwar', 'COPA', 'HRD', '9557403116', '2020-09-21', '2021-09-20', 3, '652889', 1, 2, '30.11.1995'),
(54, 'CN102000231', 'C-2890', 'ARBAZ MALIK', 'NABABUDDEEN', '1996-05-23', 'Haridwar', 'COPA', 'SECURITY', '9548830084', '2020-09-21', '2021-09-20', 3, '652890', 1, 2, '23.05.1996'),
(55, 'CN102000260', 'C-2891', 'MONIKA DEVI', 'JANG BAHADUR', '1998-02-06', 'Najibabad', 'COPA', 'PA - MRI', '7465006415', '2020-09-21', '2021-09-20', 3, '652891', 1, 2, '06.02.1998'),
(56, 'CN102002680', 'DC-2892', 'ROHIT CHAUHAN', 'DHARAM SINGH', '1996-07-20', 'Najibabad', 'DRAUGHTSMAN CIVIL', 'CIVIL', '9458183105', '2020-09-21', '2021-09-20', 3, '652892', 1, 2, '20.07.1996'),
(57, 'CN102003934', 'E-2893', 'ROHIT KUMAR JEWARIYA', 'MINESH KUMAR', '1998-10-29', 'Haridwar', 'ELECTRICIAN', 'ES - ELECTRICAL', '7088661741', '2020-09-21', '2021-09-20', 3, '652893', 1, 2, '29.10.1998'),
(58, 'CN102004072', 'E-2894', 'RAKESH KUMAR', 'BHURE SINGH', '1998-04-16', 'Najibabad', 'ELECTRICIAN', 'ES - ELECTRICAL', '8791767400', '2020-09-21', '2021-09-20', 3, '652894', 1, 2, '16.04.1998'),
(59, 'CN102003939', 'E-2895', 'ARJUN SINGH', 'SITARAM', '1996-07-18', 'Najibabad', 'ELECTRICIAN', 'ES - ELECTRICAL', '9084939712', '2020-09-21', '2021-09-20', 3, '652895', 1, 2, '18.07.1996'),
(60, 'CN102003949', 'E-2896', 'GAUTAM KUMAR', 'VINOD SINGH', '1998-03-26', 'Dehradun', 'ELECTRICIAN', 'ES - ELECTRICAL', '8958786200', '2020-09-21', '2021-09-20', 3, '652896', 1, 2, '26.03.1998'),
(113, 'CN102004112', 'E-2951', 'RAJAN KUMAR', 'SUNIL KUMAR', '1998-03-11', 'Najibabad', 'ELECTRICIAN', 'ES - ELECTRICAL', '7895615872', '2020-09-23', '2021-09-22', 3, '652951', 1, 2, '11.03.1998'),
(61, 'CN102005581', 'EM-2897', 'MUKUL CHAUHAN', 'SANDEEP KUMAR', '1998-02-05', 'Pauri Garhwal', 'ELECTRONIC MECHANICS', 'PA - INSPECTION', '7895064546', '2020-09-21', '2021-09-20', 3, '652897', 1, 2, '05.02.1998'),
(62, 'CN102007138', 'EM-2898', 'NIRMAL KAUR', 'SURENDER PAL SINGH', '1995-03-07', 'Pauri Garhwal', 'ELECTRONIC MECHANICS', 'PA- TESTING', '8859185580', '2020-09-21', '2021-09-20', 3, '652898', 1, 2, '07.03.1995'),
(63, 'CN102005591', 'EM-2899', 'SATISH KUMAR', 'NARESH KUMAR', '1997-05-24', 'Haridwar', 'ELECTRONIC MECHANICS', 'PA- TESTING', '7500358408', '2020-09-21', '2021-09-20', 3, '652899', 1, 2, '24.05.1997'),
(64, 'CN102005599', 'EM-2900', 'MOHD ARSHAD', 'MOHD AKRAM', '1996-03-24', 'Kotdwara', 'ELECTRONIC MECHANICS', 'PA - TESTING', '6398627001', '2020-09-21', '2021-09-20', 3, '652900', 1, 2, '24.03.1996'),
(65, 'CN102005606', 'EM-2901', 'SANJEEV KUMAR', 'SANTRAM SINGH', '1997-10-15', 'Haridwar', 'ELECTRONIC MECHANICS', 'PA - MRI', '9389972598', '2020-09-21', '2021-09-20', 3, '652901', 1, 2, '15.10.1997'),
(66, 'CN102014018', 'EM-2903', 'NITU RANI', 'MAHENDRA SINGH', '1997-05-23', 'Najibabad', 'ELECTRONIC MECHANICS', 'PA - TESTING', '7533988761', '2020-09-21', '2021-09-20', 3, '652903', 1, 2, '23.05.1997'),
(67, 'CN102007139', 'EM-2904', 'ANMOL', 'MEHAR SINGH', '1997-01-09', 'Najibabad', 'ELECTRONIC MECHANICS', 'PA - TESTING', '7895973603', '2020-09-21', '2021-09-20', 3, '652904', 1, 2, '09.01.1997'),
(68, 'CN102005620', 'EM-2905', 'GAURAV KUMAR DHULIAYA', 'DWARIKA PRASAD DHULIYA', '1995-04-27', 'Najibabad', 'ELECTRONIC MECHANICS', 'PA - TESTING', '9368042592', '2020-09-21', '2021-09-20', 3, '652905', 1, 2, '27.04.1995'),
(69, 'CN122002867', 'EM-2906', 'SANJEEV KUMAR', 'VIRENDRA SINGH', '1996-04-28', 'Pauri Garhwal', 'ELECTRONIC MECHANICS', 'PA - ENV', '6396871893', '2020-09-21', '2021-09-20', 3, '652906', 1, 2, '28.04.1996'),
(70, 'CN102005641', 'EM-2907', 'SUMIT KUMAR RAJPUT', 'MULCHAND SINGH', '1995-05-25', 'Kotdwara', 'ELECTRONIC MECHANICS', 'PA  - INSPECTION', '8384825212', '2020-09-21', '2021-09-20', 3, '652907', 1, 2, '25.05.1995'),
(71, 'CN102005646', 'EM-2908', 'VIKAS KUMAR', 'RAGHUVEER SINGH', '1996-09-30', 'Kotdwara', 'ELECTRONIC MECHANICS', 'PA - TESTING', '9568328738-9536302713', '2020-09-21', '2021-09-20', 3, '652908', 1, 2, '30.09.1996'),
(72, 'CN102005651', 'EM-2909', 'RISHABH CHAUHAN', 'SUBHASH CHAND', '1998-07-03', 'Pauri Garhwal', 'ELECTRONIC MECHANICS', 'PA- TESTING', '6397358166', '2020-09-21', '2021-09-20', 3, '652909', 1, 2, '03.07.1998'),
(73, 'CN102006575', 'EM-2910', 'YASHVANI KUMAR', 'PREM RAJ SINGH', '1996-12-11', 'Najibabad', 'ELECTRONIC MECHANICS', 'PA - TES', '9457706801', '2020-09-21', '2021-09-20', 3, '652910', 1, 2, '11.12.1996'),
(74, 'CN102005661', 'EM-2911', 'MANOJ KUMAR', 'RAMBAHADUR SINGH', '1995-07-28', 'Pauri Garhwal', 'ELECTRONIC MECHANICS', 'PA- TESTING', '8449081693', '2020-09-21', '2021-09-20', 3, '652911', 1, 2, '28.07.1995'),
(75, 'CN102005669', 'EM-2913', 'ARVIND KUMAR', 'SUMER SINGH', '1997-12-18', 'Kotdwara', 'ELECTRONIC MECHANICS', 'PA - EO', '9917685217', '2020-09-21', '2021-09-20', 3, '652913', 1, 2, '18.12.1997'),
(76, 'CN102005674', 'EM-2914', 'RAHUL KUMAR', 'ROOP CHAND', '1995-05-04', 'Dehradun', 'ELECTRONIC MECHANICS', 'PA - EO', '9756114782', '2020-09-21', '2021-09-20', 3, '652914', 1, 2, '04.05.1995'),
(77, 'CN102005679', 'EM-2915', 'RAHUL KUMAR', 'LAKHAN SINGH', '1996-12-08', 'Najibabad', 'ELECTRONIC MECHANICS', 'ASSY-PROD', '8476886860', '2020-09-21', '2021-09-20', 3, '652915', 1, 2, '08.12.1996'),
(78, 'CN102005683', 'EM-2916', 'HEMANT KUMAR', 'GIRISH CHANDRA ', '1997-11-15', 'Kotdwara', 'ELECTRONIC MECHANICS', 'TES', '9997072405', '2020-09-21', '2021-09-20', 3, '652916', 1, 2, '15.11.1997'),
(79, 'CN122002863', 'EM-2917', 'HARVENDAR SINGH', 'CHAMAN SINGH', '1995-04-22', 'Haridwar', 'ELECTRONIC MECHANICS', 'ASSY-NVD', '8449706494', '2020-09-21', '2021-09-20', 3, '652917', 1, 2, '22.04.1995'),
(80, 'CN102005703', 'EM-2918', 'PRASHANT KUMAR LAMBA', 'SHOORVIR SINGH', '1998-10-28', 'Kotdwara', 'ELECTRONIC MECHANICS', 'ASSY-NVD', '9058641700', '2020-09-21', '2021-09-20', 3, '652918', 1, 2, '28.10.1998'),
(81, 'CN102005707', 'EM-2919', 'MANGLESH', 'CHETRAM SINGH', '1997-01-12', 'Kotdwara', 'ELECTRONIC MECHANICS', 'HOLDING - STORE', '7017602387', '2020-09-21', '2021-09-20', 3, '652919', 1, 2, '12.01.1997'),
(82, 'CN102005712', 'EM-2920', 'DHARMVEER', 'KEWAL SINGH', '1998-08-11', 'Pauri Garhwal', 'ELECTRONIC MECHANICS', '  MCT ', '9548626508', '2020-09-21', '2021-09-20', 3, '652920', 1, 2, '11.08.1998'),
(83, 'CN102005718', 'EM-2921', 'SACHIN KUMAR', 'FAKIR CHAND', '1997-09-10', 'Najibabad', 'ELECTRONIC MECHANICS', 'MM', '9758243052', '2020-09-21', '2021-09-20', 3, '652921', 1, 2, '10.09.1997'),
(84, 'CN102005721', 'EM-2922', 'VINIT KUMAR', 'SHEESHRAM SINGH', '1995-07-21', 'Haridwar', 'ELECTRONIC MECHANICS', 'ASSY-NVD', '8006821369', '2020-09-21', '2021-09-20', 3, '652922', 1, 2, '21.07.1995'),
(85, 'CN102005733', 'EM-2923', 'VIPIN KUMAR', 'AMAR SINGH', '1997-08-08', 'Haridwar', 'ELECTRONIC MECHANICS', 'ASSY-PROD', '9997326380', '2020-09-21', '2021-09-20', 3, '652923', 1, 2, '08.08.1997'),
(86, 'CN102005735', 'EM-2924', 'ASHISH VASHISTH', 'UMESH KUMAR SHARMA', '1996-09-14', 'Haridwar', 'ELECTRONIC MECHANICS', 'PPC', '9084492991', '2020-09-21', '2021-09-20', 3, '652924', 1, 2, '14.09.1996'),
(87, 'CN102006565', 'EM-2925', 'DHARAM SINGH', 'MOHAN SINGH', '1995-01-09', 'Kotdwara', 'ELECTRONIC MECHANICS', 'CMPT', '8057118564', '2020-09-21', '2021-09-20', 3, '652925', 1, 2, '09.01.1995'),
(88, 'CN102005742', 'EM-2926', 'DEEPAK KUMAR', 'SATYENDRA KUMAR', '1995-05-22', 'Haridwar', 'ELECTRONIC MECHANICS', 'ASSY-PROD', '7500002532', '2020-09-21', '2021-09-20', 3, '652926', 1, 2, '22.05.1995'),
(89, 'CN102007206', 'EM-2927', 'VIJAY KUMAR', 'MUNNA SINGH', '1998-04-04', 'Pauri Garhwal', 'ELECTRONIC MECHANICS', 'ASSY-PROD', '6395250328', '2020-09-21', '2021-09-20', 3, '652927', 1, 2, '04.04.1998'),
(90, 'CN102005753', 'EM-2928', 'PRADUMAN KUMAR', 'MADAN SINGH', '1997-01-13', 'Dehradun', 'ELECTRONIC MECHANICS', 'ASSY-PROD', '8433242620', '2020-09-21', '2021-09-20', 3, '652928', 1, 2, '13.01.1997'),
(91, 'CN102005756', 'EM-2929', 'ANKIT NEGI', 'SOBAN SINGH NEGI', '1997-03-11', 'Najibabad', 'ELECTRONIC MECHANICS', 'ASSY', '8126312308', '2020-09-21', '2021-09-20', 3, '652929', 1, 2, '11.03.1997'),
(92, 'CN102005789', 'EM-2930', 'RAHUL KUMAR', 'RAJESH KUMAR', '1996-02-06', 'Dehradun', 'ELECTRONIC MECHANICS', 'ASSY-PROD', '7017802982', '2020-09-21', '2021-09-20', 3, '652930', 1, 2, '06.02.1996'),
(114, 'CN102020257', 'EM-2952', 'AAKASH KUMAR', 'MADAN SINGH', '1995-12-12', 'Haridwar', 'ELECTRONIC MECHANICS', 'ASSY', '7351099919', '2020-09-23', '2021-09-22', 3, '652952', 1, 2, '12.12.1995'),
(117, 'CN102007215', 'EM-2955', 'ASHISH SINGH', 'VIRENDRA SINGH NEGI', '1997-08-01', 'Dehradun', 'ELECTRONIC MECHANICS', 'PA - TESTING', '8937921076', '2020-10-05', '2021-10-04', 3, '652955', 1, 2, '01.08.1997'),
(118, 'CN102007218', 'EM-2956', 'GIRIRAJ SINGH', 'RAJPAL SINGH', '1996-12-08', 'Dehradun', 'ELECTRONIC MECHANICS', 'PA - TESTING', '8,93,70,00,35,49,01,28,00,000', '2020-10-05', '2021-10-04', 3, '652956', 1, 2, '08.12.1996'),
(93, 'CN102008659', 'F-2931', 'SHUDHANSHU KUMAR', 'RAJEEV KUMAR', '1998-12-08', 'Kotdwara', 'FITTER', 'PA - ENV', '6399158280', '2020-09-21', '2021-09-20', 3, '652931', 1, 2, '08.12.1998'),
(94, 'CN102007849', 'F-2932', 'SACHIN KUMAR', 'NAUBHAR SINGH', '1998-06-18', 'Kotdwara', 'FITTER', 'PA - MRI', '9458491818', '2020-09-21', '2021-09-20', 3, '652932', 1, 2, '18.06.1998'),
(95, 'CN102009407', 'F-2933', 'RABINDRA KUMAR ', 'DHARAM PAL SINGH', '1996-01-23', 'Kotdwara', 'FITTER', 'ASSY-PROD', '9927279887', '2020-09-21', '2021-09-20', 3, '652933', 1, 2, '23.01.1996'),
(96, 'CN102007221', 'F-2934', 'SACHIN KUMAR', 'SURESH KUMAR', '1995-01-11', 'Pauri Garhwal', 'FITTER', 'DARK-ROOM', '7060307916', '2020-09-21', '2021-09-20', 3, '652934', 1, 2, '11.01.1995'),
(97, 'CN102005871', 'F-2935', 'SIDHART GAUTAM', 'OMPRAKASH', '1996-04-07', 'Haridwar', 'FITTER', 'PPC', '7505342319', '2020-09-21', '2021-09-20', 3, '652935', 1, 2, '07.04.1996'),
(98, 'CN122002115', 'F-2936', 'VISHESH KUMAR', 'MADAN PAL', '1996-05-25', 'Haridwar', 'FITTER', 'CPS - FAB', '8077495548', '2020-09-21', '2021-09-20', 3, '652936', 1, 2, '25.05.1996'),
(99, 'CN102006563', 'F-2937', 'SUNEEL SINGH', 'SHYAM SINGH', '1996-03-24', 'Najibabad', 'FITTER', 'CPS - FAB', '9639811096', '2020-09-21', '2021-09-20', 3, '652937', 1, 2, '24.03.1996'),
(100, 'CN102005911', 'F-2938', 'JITENDRA SINGH', 'CHHATRAPAL SINGH', '1996-03-30', 'Pauri Garhwal', 'FITTER', 'ASSY-NVD', '9690265697', '2020-09-21', '2021-09-20', 3, '652938', 1, 2, '30.03.1996'),
(101, 'CN102005914', 'F-2939', 'RITU MOURYA', 'JAI PRAKASH MOURYA', '1998-11-19', 'Kotdwara', 'FITTER', 'CPS - FAB', '8650535548', '2020-09-21', '2021-09-20', 3, '652939', 1, 2, '19.11.1998'),
(102, 'CN122002872', 'F-2940', 'MILAN SINGH', 'DILIP SINGH RAWAT', '1995-09-15', 'Haridwar', 'FITTER', 'MM', '9411353113', '2020-09-21', '2021-09-20', 3, '652940', 1, 2, '15.09.1995'),
(103, 'CN102005920', 'F-2941', 'RAVINDRA KUMAR ', 'ATAR SINGH', '1998-01-30', 'Najibabad', 'FITTER', 'PA - MRI', '9105211635', '2020-09-21', '2021-09-20', 3, '652941', 1, 2, '30.01.1998'),
(104, 'CN102005932', 'F-2942', 'SAURABH KUMAR', 'RAJESH KUMAR', '1998-09-13', 'Haridwar', 'FITTER', 'ASSY-NVD', '6399098009', '2020-09-21', '2021-09-20', 3, '652942', 1, 2, '13.09.1998'),
(105, 'CN102005935', 'F-2943', 'RIGVENDRA KUMAR', 'RISHIPAL SINGH', '1996-07-17', 'Dehradun', 'FITTER', 'CPS - FAB', '6398499452', '2020-09-21', '2021-09-20', 3, '652943', 1, 2, '17.07.1996'),
(106, 'CN102005939', 'F-2944', 'ANKIT KUMAR', 'DESHRAJ SINGH', '1998-01-06', 'Haridwar', 'FITTER', 'CPS - FAB', '8859198571', '2020-09-21', '2021-09-20', 3, '652944', 1, 2, '06.01.1998'),
(107, 'CN102005944', 'F-2945', 'ANIKET KUMAR', 'MUNNU SINGH', '1996-09-23', 'Kotdwara', 'FITTER', 'CPS - FAB', '8954969618', '2020-09-21', '2021-09-20', 3, '652945', 1, 2, '23.09.1996'),
(108, 'CN102005948', 'F-2946', 'HIMANSHU BHATYAN', 'SATYAPAL SINGH', '1998-08-07', 'Haridwar', 'FITTER', 'PA - MRI', '9627316441', '2020-09-21', '2021-09-20', 3, '652946', 1, 2, '07.08.1998'),
(109, 'CN102005953', 'F-2947', 'ASWANI KUMAR', 'MUNNU SINGH', '1995-04-28', 'Haridwar', 'FITTER', 'ES -AC PLANT', '7900691733', '2020-09-21', '2021-09-20', 3, '652947', 1, 2, '28.04.1995'),
(115, 'CN102005895', 'F-2953', 'SHEFALI PAL', 'SUKHBEER', '1996-05-19', 'Dehradun', 'FITTER', 'CMPT', '8218750039', '2020-09-23', '2021-09-22', 3, '652953', 1, 2, '19.05.1996'),
(119, 'CN102007209', 'F-2957', 'KARAN SINGH', 'VIRENDRA SINGH NEGI', '1996-10-24', 'Dehradun', 'FITTER', 'FINISHING - PLTG', '7599123990', '2020-10-05', '2021-10-04', 3, '652957', 1, 2, '24.10.1996'),
(3, 'NUKG122190600317', 'GCS-2961', 'Aman Bhandari', 'Sardar Singh Bhandari', '1996-08-07', 'Kotdwara', 'CS', 'M & ES', '8006402735', '2020-12-07', '2021-12-06', 1, '652961', 1, 2, '07.08.1996'),
(2, 'NUPG780190500114', 'GCS-3089', 'Mohit Rawat', 'Bikram Singh Rawat', '1998-03-30', 'Kotdwara', 'CS', 'M& ES', '9027479386', '2022-04-05', '2023-04-05', 1, '653089', 1, 2, '30.03.1998'),
(5, 'NUPG108200900088', 'GEC-2963', 'Bhavna', 'Ashok Kumar', '1995-02-23', 'Kotdwara', 'E&C', 'D&E', '7017329039', '2020-12-07', '2021-12-06', 1, '652963', 1, 2, '23.02.1995'),
(6, 'NUKG108190700090', 'GEC-2964', 'Ajit Khatri', 'Goodvir Chandira', '1998-03-23', 'Najibabad', 'E&C', 'D&E-I', '7409092494', '2020-12-07', '2021-12-06', 1, '652964', 1, 2, '23.03.1998'),
(7, 'NUPG108180601484', 'GEC-2965', 'Mukul Kumar', 'Devendra Kumar', '1998-03-28', 'Pauri Garhwal', 'E&C', 'PA', '7351273260', '2020-12-07', '2021-12-06', 1, '652965', 1, 2, '28.03.1998'),
(8, 'NPBG108190500137', 'GEC-2967', 'Ankit Rawat', 'Arjun Singh Rawat', '1997-05-04', 'Kotdwara', 'E&C', 'PA', '8556044093', '2020-12-07', '2021-12-06', 1, '652967', 1, 2, '04.05.1997'),
(9, 'NUPG108200900083', 'GEC-2968', 'Gaurav Kumar', 'Lakh Pat Singh ', '1996-09-25', 'Najibabad', 'E&C', 'PA', '7505638266', '2020-12-07', '2021-12-06', 1, '652968', 1, 2, '25.09.1996'),
(10, 'NUPG006200900283', 'GM-2969', 'Prateek Majoomdar', 'Viplav Majoomdar', '1996-05-27', 'Dehradun', 'Mechanical', 'NVD', '9639050188', '2020-12-07', '2021-12-06', 1, '652969', 1, 2, '27.05.1996'),
(11, 'NUKG006200800035', 'GM-2970', 'Suha Islam', 'Mohd Islam', '1997-06-28', 'Haridwar', 'Mechanical', 'CPS- FAB', '9412946980', '2020-12-07', '2021-12-06', 1, '652970', 1, 2, '28.06.1997'),
(12, 'NUPG006200900179', 'GM-2971', 'Shivm Jaydhar', 'Suckchand Jaydhar', '1998-09-19', 'Haridwar', 'Mechanical', 'OPS-SC', '9368008149', '2020-12-07', '2021-12-06', 1, '652971', 1, 2, '19.09.1998'),
(13, 'NUKG006180700279', 'GM-2972', 'Archana', 'Safri Lal', '1995-06-22', 'Haridwar', 'Mechanical', 'OPS - MM', '9456345542', '2020-12-07', '2021-12-06', 1, '652972', 1, 2, '22.06.1995'),
(14, 'NUPG006201000328', 'GM-2973', 'Kartik Maheshwari ', 'Sanjay Maheshwari', '1997-12-07', 'Pauri Garhwal', 'Mechanical', 'OPS-SC', '9756773956', '2020-12-07', '2021-12-06', 1, '652973', 1, 2, '07.12.1997'),
(15, 'NUPG006201000324', 'GM-2974', 'Nitish Kumar', 'Surendra Kumar', '1995-06-02', 'Haridwar', 'Mechanical', 'OPS - ASSY-II', '8077128939', '2020-12-07', '2021-12-06', 1, '652974', 1, 2, '02.06.1995'),
(16, 'NUPG006190902023', 'GM-2975', 'Vaishnavi Pandey', 'Santosh Kumar Pandey', '1997-08-29', 'Kotdwara', 'Mechanical', 'OPS - ASSY-I', '8382885907', '2020-12-07', '2021-12-06', 1, '652975', 1, 2, '29.08.1997'),
(17, 'NUPG006201000325', 'GM-2976', 'Mohd Faizan', 'Abdul Wahab Ansari', '1997-07-01', 'Haridwar', 'Mechanical', 'OPS - MM', '6397907189', '2020-12-07', '2021-12-06', 1, '652976', 1, 2, '01.07.1997'),
(18, 'NUPG006181002446', 'GM-2978', 'Vikas ', 'Madanpal Singh', '1997-05-20', 'Pauri Garhwal', 'Mechanical', 'OPS - ASSY-I', '9058712339', '2020-12-07', '2021-12-06', 1, '652978', 1, 2, '20.05.1997'),
(116, 'CN102004082', 'M-2954', 'SHIKHA PANDEY', 'SANJAY KUMAR PANDEY', '1998-07-22', 'Kotdwara', 'MACHINIST', 'CPS - FAB', '9389646278', '2020-09-23', '2021-09-22', 3, '652954', 1, 2, '22.07.1998'),
(110, 'CN102006605', 'RAC-2948', 'AKSHAY DWIVEDI', 'ADITYA CHANDRA DWIVEDI', '1996-12-25', 'Dehradun', 'MECHANIC R&AC', 'AC - ES', '8273216460', '2020-09-21', '2021-09-20', 3, '652948', 1, 2, '25.12.1996'),
(111, 'CN102004009', 'RAC-2949', 'RAJA', 'SATYAPAL', '1996-12-20', 'Pauri Garhwal', 'MECHANIC R&AC', 'AC - ES', '8171555876', '2020-09-21', '2021-09-20', 3, '652949', 1, 2, '20.12.1996'),
(112, 'CN102004145', 'T-2950', 'AJAY KUMAR', 'MUKHRAM SINGH', '1998-12-28', 'Najibabad', 'TURNER', 'CPS - FAB', '9997537452', '2020-09-21', '2021-09-20', 3, '652950', 1, 2, '28.12.1998'),
(19, 'NUKD001201100005', 'TAC-2979', 'Pramila Bhandari', 'Ganesh Singh Bhandari', '1996-12-27', 'Haridwar', 'Civil Engg.', 'ES-CIVIL', '8449731023', '2021-01-25', '2022-01-24', 2, '652979', 1, 2, '27.12.1996'),
(20, 'NUKD001170800731', 'TAC-2980', 'Vikash Ved', 'Ashok Kumar Ved', '1996-12-13', 'Najibabad', 'Civil Engg.', 'ES-CIVIL', '9639643401', '2021-01-25', '2022-01-24', 2, '652980', 1, 2, '13.12.1996'),
(21, 'NUPD122201100003', 'TACS-2981', 'Sachin Kumar', 'Bagesh Kumar', '1996-10-02', 'Kotdwara', 'CS', 'D&E ', '9634656175', '2021-01-25', '2022-01-24', 2, '652981', 1, 2, '02.10.1996'),
(22, 'NUKD780201200001', 'TACS-2982', 'Neha', 'Anand Singh', '1998-05-18', 'Kotdwara', 'CS', 'D&E ', '8126437839', '2021-01-25', '2022-01-24', 2, '652982', 1, 2, '18.05.1998'),
(1, 'NUPG001190601860', 'TACS-3119', 'Anjali Jakhwal', 'Anil jakhwal', '1999-06-25', 'Kotdwara', 'CSE', 'M & ES', '', '2022-01-01', '2021-12-06', 2, '653119', 1, 2, '25.06.1999'),
(4, 'NUKG780190600026', 'TACS-3120', 'Saurabh Bharti', 'Satish Chandra Bharti', '2000-05-01', 'Kotdwara', 'CS', 'M& ES', '6396919076', '2022-04-11', '2023-04-11', 2, '653120', 1, 2, '01.05.2000'),
(25, 'NUPD120201100001', 'TAEC-2985', 'Km.Vaishali Chauhan', 'Surendra Kumar', '1997-07-30', 'Dehradun', 'Electronics Engg.', 'ASSY.2', '7455848545', '2021-01-25', '2022-01-24', 2, '652985', 1, 2, '30.07.1997'),
(26, 'NUKD858190600049', 'TAEC-2986', 'Shivani Negi', 'Rajmohan Singh Negi', '1996-07-14', 'Dehradun', 'Electronics Engg.', 'TESTING', '8171861204', '2021-01-25', '2022-01-24', 2, '652986', 1, 2, '14.07.1996'),
(27, 'NUKD858201100002', 'TAEC-2987', 'Raman Singh', 'Gabar Singh', '1995-10-16', 'Pauri Garhwal', 'Electronics Engg.', 'NVD', '8650138776', '2021-01-25', '2022-01-24', 2, '652987', 1, 2, '16.10.1995'),
(28, 'NUKD120201200001', 'TAEC-2988', 'Sagar Singh Rawat', 'Dinesh Singh Rawat', '1996-03-10', 'Najibabad', 'Electronics Engg.', 'ASSY.2', '8368627002', '2021-01-25', '2022-01-24', 2, '652988', 1, 2, '10.03.1996'),
(29, 'NUKD864190700014', 'TAEC-2989', 'Ayush Jadli', 'S P Jadli', '1995-12-13', 'Najibabad', 'Electronics Engg.', 'ASSY.2', '8979522844', '2021-01-25', '2022-01-24', 2, '652989', 1, 2, '13.12.1995'),
(30, 'NUKD858201200001', 'TAEC-2990', 'Sachin Rawat', 'Satpal Singh Rawat', '1996-06-23', 'Kotdwara', 'Electronics Engg.', 'NVD', '7017117861', '2021-01-25', '2022-01-24', 2, '652990', 1, 2, '23.06.1996'),
(31, 'NUKD864201100002', 'TAEC-2991', 'Saurabh Negi', 'Sushil Negi', '1995-01-18', 'Kotdwara', 'Electronics Engg.', 'TESTING', '7417056777', '2021-01-25', '2022-01-24', 2, '652991', 1, 2, '18.01.1995'),
(32, 'NUPD864190800185', 'TAEC-2992', 'Sandeep Kumar', 'Sukhram Singh', '1998-07-10', 'Kotdwara', 'Electronics Engg.', 'MRI', '7088744876', '2021-01-25', '2022-01-24', 2, '652992', 1, 2, '10.07.1998'),
(33, 'NUPD120190800348', 'TAEC-2993', 'Sandeep Kumar', 'Shishpal Singh ', '1995-09-10', 'Pauri Garhwal', 'Electronics Engg.', 'NVD', '9675345131', '2021-01-25', '2022-01-24', 2, '652993', 1, 2, '10.09.1995'),
(34, 'NUPD120190800478', 'TAEC-2994', 'Km Sheetal Rani', 'Rohitash Kumar', '1997-02-24', 'Dehradun', 'Electronics Engg.', 'PA-Testing', '7906636095 8394900000', '2021-01-25', '2022-01-24', 2, '652994', 1, 2, '24.02.1997'),
(35, 'NUPD858190500536', 'TAEC-2995', 'Rajat Kumar', 'Krishna Pal Singh', '1998-09-26', 'Haridwar', 'Electronics Engg.', 'D&E', '7210721767', '2021-01-25', '2022-01-24', 2, '652995', 1, 2, '26.09.1998'),
(36, 'NUPD858190800619', 'TAEC-2996', 'Shubham Kumar', 'Prem Prakash Singh', '1997-10-23', 'Najibabad', 'Electronics Engg.', 'D&E', '9045475474', '2021-01-25', '2022-01-24', 2, '652996', 1, 2, '23.10.1997'),
(37, 'NUKD858180900168', 'TAEC-2997', 'Suraj Singh ', 'Arjun Dev', '1995-03-09', 'Najibabad', 'Electronics Engg.', 'D&E', ' ', '2021-01-25', '2022-01-24', 2, '652997', 1, 2, '09.03.1995'),
(50, 'NUKD858191100001', 'TAEC-3010', 'Preeti', 'Bhagatram', '1996-04-04', 'Kotdwara', 'Electronics Engg.', 'Testing', '8279586570', '2022-02-15', '2022-02-14', 2, '653010', 1, 2, '04.04.1996'),
(23, 'NUKD011201200001', 'TAEL-2983', 'Sawan Ramola', 'Yashpal Singh', '1996-12-30', 'Haridwar', 'Electrical Engg.', 'ES-ELECTRICAL', '9193693001', '2021-01-25', '2022-01-24', 2, '652983', 1, 2, '30.12.1996'),
(24, 'NUPD011201100004', 'TAEL-2984', 'Shamsheed Ahmad', 'Khursheed Ahmad', '1996-12-13', 'Dehradun', 'Electrical Engg.', 'ES-ELECTRICAL', '8191916018', '2021-01-25', '2022-01-24', 2, '652984', 1, 2, '13.12.1996'),
(51, 'NUPD835200900001', 'TAEL-3011', 'Chiranjeet Pal', 'Chitranjan', '1996-11-24', 'Kotdwara', 'Electrical Engg.', 'ES-ELECTRICAL', '9027325122', '2023-02-15', '2023-02-14', 2, '653011', 1, 2, '24.11.1996'),
(49, 'NUPD860190501753', 'TAM- 3009', 'Harshit Kumar', 'Virendra Singh Kandari', '1997-04-16', 'Haridwar', 'Mechanical Engg.', 'D&E- I', '9149231346', '2021-02-15', '2021-02-14', 2, '65 3009', 1, 2, '16.04.1997'),
(42, 'NUKD856190600010', 'TAM-3002', 'Himanshu Kukreti', 'Anil Kumar Kukreti', '1995-01-05', 'Dehradun', 'Mechanical Engg.', 'TESTING', '8449815922', '2021-01-25', '2022-01-24', 2, '653002', 1, 2, '05.01.1995'),
(43, 'NUKD860190900019', 'TAM-3003', 'Shahrukh Ahmad', 'Saleem Ahmad', '1998-11-30', 'Dehradun', 'Mechanical Engg.', ' ( ENVT) Lab', '6398753769', '2021-01-25', '2022-01-24', 2, '653003', 1, 2, '30.11.1998'),
(44, 'NUKD006201100002', 'TAM-3004', 'Tejpal Singh Rawat', 'Dabal Singh Rawat', '1998-11-09', 'Kotdwara', 'Mechanical Engg.', 'NVD', '7465010907', '2021-01-25', '2022-01-24', 2, '653004', 1, 2, '09.11.1998'),
(45, 'NUPD006180700527', 'TAM-3005', 'Rahul Kumar', 'Dalchand Singh', '1996-12-18', 'Pauri Garhwal', 'Mechanical Engg.', 'PPC', '8954419792', '2021-01-25', '2022-01-24', 2, '653005', 1, 2, '18.12.1996'),
(46, 'NUKD006190600105', 'TAM-3006', 'Mohit Kumar', 'Rajesh Kumar', '1995-02-19', 'Pauri Garhwal', 'Mechanical Engg.', 'ASSY - I -SMT', '8445684582', '2021-01-25', '2022-01-24', 2, '653006', 1, 2, '19.02.1995'),
(47, 'NUPD589180800621', 'TAM-3007', 'Amit Kumar', 'Jaiprakash Singh', '1995-05-13', 'Najibabad', 'Mechanical Engg.', 'ASSY - I -SMT', '9411558510', '2021-01-25', '2022-01-24', 2, '653007', 1, 2, '13.05.1995'),
(48, 'NUKD856200900001', 'TAM-3008', 'Saurabh Singh', 'Jaswant Singh', '1997-04-27', 'Kotdwara', 'Mechanical Engg.', 'NVD', '8979474027', '2021-01-25', '2022-01-24', 2, '653008', 1, 2, '27.04.1997'),
(38, 'NUKD8111201100001', 'TAMOM-2998', 'Shivani', 'Komal Singh', '1997-01-18', 'Kotdwara', 'M.O.M SP', 'HRD', '6396914945', '2021-01-25', '2022-01-24', 2, '652998', 1, 2, '18.01.1997'),
(39, 'NUKD811201100002', 'TAMOM-2999', 'Sonu Chand', 'Balveer Chand', '1997-06-02', 'Najibabad', 'M.O.M SP', 'SECURITY', '7900544200', '2021-01-25', '2022-01-24', 2, '652999', 1, 2, '02.06.1997'),
(40, 'NUKD811180900014', 'TAMOM-3000', 'Ankita Rawat', 'Rajpal Singh Rawat', '1996-04-10', 'Najibabad', 'M.O.M SP', 'HR', '8433063875', '2021-01-25', '2022-01-24', 2, '653000', 1, 2, '10.04.1996'),
(41, 'NUKD811181200001', 'TAMOM-3001', 'Mamta Kohli', 'Diwani Ram', '1997-05-11', 'Pauri Garhwal', 'M.O.M SP', 'MM-CPMT', '9536837602', '2021-01-25', '2022-01-24', 2, '653001', 1, 2, '11.05.1997'),
(120, 'CN102007247', 'W-2958', 'SANJU', 'KHEM SINGH', '1996-11-21', 'Dehradun', 'WELDER', 'CPS - FAB', '9756385278', '2020-10-05', '2021-10-04', 3, '652958', 1, 2, '21.11.1996');

-- --------------------------------------------------------

--
-- Table structure for table `apprentice_status`
--

CREATE TABLE `apprentice_status` (
  `status_id` int(10) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apprentice_status`
--

INSERT INTO `apprentice_status` (`status_id`, `status`) VALUES
(0, 'inactive'),
(1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_records`
--

CREATE TABLE `attendance_records` (
  `sn` int(11) NOT NULL,
  `date` date NOT NULL,
  `apprentice_no` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `trade` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `punch_id` varchar(255) NOT NULL,
  `punch_in_time` time NOT NULL,
  `punch_out_time` time NOT NULL,
  `attendance` varchar(255) NOT NULL,
  `half/full_day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_records`
--

INSERT INTO `attendance_records` (`sn`, `date`, `apprentice_no`, `name`, `trade`, `department`, `punch_id`, `punch_in_time`, `punch_out_time`, `attendance`, `half/full_day`) VALUES
(1, '2022-06-21', 'TAC-2979', 'Pramila Bhandari', 'Civil Engg.', 'ES/CIVIL', '652980', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(2, '2022-06-22', 'TAC-2980', 'Vikash Ved', 'Civil Engg.', 'ES/CIVIL', '652922', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(3, '2022-06-22', 'TAC-2981', 'Sachin Kumar', 'CS', 'D&E ', '652981', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(4, '2022-06-22', 'TAC-2982', 'Neha', 'CS', 'D&E ', '652982', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(5, '2022-06-22', 'TAC-2983', 'Sawan Ramola', 'Electrical Engg.', 'ES/ELECTRICAL', '652983', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(6, '2022-06-22', 'TAC-2984', 'Shamsheed Ahmad', 'Electrical Engg.', 'ES/ELECTRICAL', '652984', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(7, '2022-06-22', 'TAC-2985', 'Km.Vaishali Chauhan', 'Electronics Engg.', 'ASSY.2', '652985', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(8, '2022-06-22', 'TAC-2986', 'Shivani Negi', 'Electronics Engg.', 'TESTING', '652986', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(9, '2022-06-22', 'TAC-2987', 'Raman Singh', 'Electronics Engg.', 'NVD', '652987', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(10, '2022-06-22', 'TAC-2988', 'Sagar Singh Rawat', 'Electronics Engg.', 'ASSY.2', '652988', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(11, '2022-06-22', 'TAC-2989', 'Ayush Jadli', 'Electronics Engg.', 'ASSY.2', '652989', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(12, '2022-06-22', 'TAC-2990', 'Sachin Rawat', 'Electronics Engg.', 'NVD', '652990', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(13, '2022-06-22', 'TAC-2991', 'Saurabh Negi', 'Electronics Engg.', 'TESTING', '652991', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(14, '2022-06-22', 'TAC-2992', 'Sandeep Kumar', 'Electronics Engg.', 'MRI', '652992', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(15, '2022-06-22', 'TAC-2993', 'Sandeep Kumar', 'Electronics Engg.', 'NVD', '652993', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(16, '2022-06-22', 'TAC-2994', 'Km Sheetal Rani', 'Electronics Engg.', 'PA/Testing', '652994', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(17, '2022-06-22', 'TAC-2995', 'Rajat Kumar', 'Electronics Engg.', 'D&E', '652995', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(18, '2022-06-22', 'TAC-2996', 'Shubham Kumar', 'Electronics Engg.', 'D&E', '652996', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(19, '2022-06-22', 'TAC-2997', 'Suraj Singh ', 'Electronics Engg.', 'D&E', '652997', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(20, '2022-06-22', 'TAC-2998', 'Shivani', 'M.O.M SP', 'HRD', '652998', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(21, '2022-06-22', 'TAC-2999', 'Sonu Chand', 'M.O.M SP', 'SECURITY', '652999', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(22, '2022-06-22', 'TAC-3000', 'Ankita Rawat', 'M.O.M SP', 'HR', '653000', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(23, '2022-06-22', 'TAC-3001', 'Mamta Kohli', 'M.O.M SP', 'MM/CPMT', '653001', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(24, '2022-06-22', 'TAC-3002', 'Himanshu Kukreti', 'Mechanical Engg.', 'TESTING', '653002', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(25, '2022-06-22', 'TAC-3003', 'Shahrukh Ahmad', 'Mechanical Engg.', ' ( ENVT) Lab', '653003', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(87, '2022-07-22', 'TAC-2980', 'Pramila Bhandari', 'Civil Engg.', 'ES/CIVIL', '652980', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(88, '2022-07-23', 'TAC-2981', 'Pramila Bhandari', 'Civil Engg.', 'ES/CIVIL', '652980', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(89, '2022-07-24', 'TAC-2982', 'Pramila Bhandari', 'Civil Engg.', 'ES/CIVIL', '652980', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(90, '2022-07-25', 'TAC-2983', 'Pramila Bhandari', 'Civil Engg.', 'ES/CIVIL', '652980', '15:21:32', '17:21:32', 'Present', 'Full Day'),
(91, '2022-07-26', 'TAC-2984', 'Pramila Bhandari', 'Civil Engg.', 'ES/CIVIL', '652980', '15:21:32', '17:21:32', 'Present', 'Full Day');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `q_id` int(10) NOT NULL,
  `qualification` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`q_id`, `qualification`) VALUES
(1, 'B.tech'),
(2, 'Diploma'),
(3, 'I.T.I.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_id`, `role_name`) VALUES
(1, 0, 'admin'),
(2, 1, 'normal'),
(3, 2, 'apprentice');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `lname`, `username`, `password`, `role`) VALUES
(1, 'Saurabh', 'Bharti', 'Saurabh', '202cb962ac59075b964b07152d234b70', 0),
(3, 'Anjali', 'Jakhwal', 'Anjali', '202cb962ac59075b964b07152d234b70', 2),
(4, 'Mohit', 'Rawat', 'Mohit', '202cb962ac59075b964b07152d234b70', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apprentice`
--
ALTER TABLE `apprentice`
  ADD PRIMARY KEY (`apprentice_no`),
  ADD UNIQUE KEY `sn` (`sn`),
  ADD UNIQUE KEY `punch_id` (`punch_id`),
  ADD KEY `qualification` (`qualification`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `apprentice_status`
--
ALTER TABLE `apprentice_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `attendance_records`
--
ALTER TABLE `attendance_records`
  ADD PRIMARY KEY (`sn`),
  ADD UNIQUE KEY `SN` (`sn`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apprentice`
--
ALTER TABLE `apprentice`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `attendance_records`
--
ALTER TABLE `attendance_records`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apprentice`
--
ALTER TABLE `apprentice`
  ADD CONSTRAINT `apprentice_ibfk_1` FOREIGN KEY (`status`) REFERENCES `apprentice_status` (`status_id`),
  ADD CONSTRAINT `apprentice_ibfk_2` FOREIGN KEY (`qualification`) REFERENCES `qualifications` (`q_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
