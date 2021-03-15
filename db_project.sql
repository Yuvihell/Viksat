
--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_report`
--

DROP TABLE IF EXISTS `activity_report`;
CREATE TABLE IF NOT EXISTS `activity_report` (
  `project` int(255) NOT NULL,
  `date` date NOT NULL,
  `sector` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `units` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `monthly_target` varchar(255) NOT NULL,
  `monthly_budget` int(255) NOT NULL,
  `unit_cost` int(255) NOT NULL,
  `pending_activity` varchar(255) NOT NULL,
  `total_target_up_to_this` varchar(255) NOT NULL,
  `total_budget_up_to_this` varchar(255) NOT NULL,
  KEY `sector` (`sector`),
  KEY `activity` (`activity`),
  KEY `units` (`units`),
  KEY `account_code` (`account_code`),
  KEY `unit_cost` (`unit_cost`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `1` int(255) NOT NULL,
  `responsibility` varchar(255) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `activities` varchar(255) NOT NULL,
  `units` varchar(255) NOT NULL,
  `target_group` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `unit_cost` int(255) NOT NULL,
  `rate_of_honororium_for_crp` varchar(255) NOT NULL,
  `1st_reporting_officer` varchar(255) NOT NULL,
  `2nd_reporting_officer` varchar(255) NOT NULL,
  PRIMARY KEY (`account_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daily_plan_&_progress`
--

DROP TABLE IF EXISTS `daily_plan_&_progress`;
CREATE TABLE IF NOT EXISTS `daily_plan_&_progress` (
  `project` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `sector` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `account_code` varchar(255) NOT NULL,
  `work_plan` varchar(255) NOT NULL,
  `budget` int(255) NOT NULL,
  `phy` varchar(255) NOT NULL,
  `expense` int(255) NOT NULL,
  `hh_coverage` varchar(255) NOT NULL,
  `area_coverage` varchar(255) NOT NULL,
  `reason_for_pending_work` varchar(255) NOT NULL,
  `approve_by_1st_reporting` varchar(255) NOT NULL,
  KEY `project` (`project`),
  KEY `date` (`date`),
  KEY `sector` (`sector`),
  KEY `activity` (`activity`),
  KEY `unit` (`unit`),
  KEY `account_code` (`account_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_profile`
--

DROP TABLE IF EXISTS `staff_profile`;
CREATE TABLE IF NOT EXISTS `staff_profile` (
  `staff_name` varchar(255) NOT NULL,
  `mobile_number` int(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `village`
--

DROP TABLE IF EXISTS `village`;
CREATE TABLE IF NOT EXISTS `village` (
  `sr_no` int(255) DEFAULT NULL,
  `district_name` varchar(255) DEFAULT NULL,
  `name_of_block` varchar(255) DEFAULT NULL,
  `name_of_gram_panchayat` varchar(255) DEFAULT NULL,
  `village_code` varchar(255) DEFAULT NULL,
  `name_of_revenue_Village` varchar(255) DEFAULT NULL,
  `name_of_existing_staff` varchar(255) DEFAULT NULL,
  KEY `name_of_existing_staff` (`name_of_existing_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

