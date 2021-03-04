

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `1` int(100) NOT NULL,
  `responsibility` varchar(300) NOT NULL,
  `sector` varchar(300) NOT NULL,
  `activities` varchar(300) NOT NULL,
  `units` varchar(300) NOT NULL,
  `target_group` varchar(300) NOT NULL,
  `account_code` varchar(300) NOT NULL,
  `unit_cost` int(200) NOT NULL,
  `rate_of_honororium_for_crp` varchar(300) NOT NULL,
  `1st_reporting_officer` varchar(300) NOT NULL,
  `2nd_reporting_officer` varchar(300) NOT NULL,
  PRIMARY KEY (`account_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

