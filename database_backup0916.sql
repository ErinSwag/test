/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.25-0ubuntu0.16.04.2 : Database - mic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mic` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mic`;

/*Table structure for table `building_type` */

DROP TABLE IF EXISTS `building_type`;

CREATE TABLE `building_type` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `housing_residential` varchar(50) DEFAULT NULL,
  `accommodation` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `office` varchar(50) DEFAULT NULL,
  `health_services_building` varchar(50) DEFAULT NULL,
  `hotels` varchar(50) DEFAULT NULL,
  `retail` varchar(50) DEFAULT NULL,
  `factories` varchar(50) DEFAULT NULL,
  `canteens` varchar(50) DEFAULT NULL,
  `sports_center_dance_studios` varchar(50) DEFAULT NULL,
  `mobile_unites_for_events` varchar(50) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL,
  `laboratories` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `building_type` */

insert  into `building_type`(`sn`,`housing_residential`,`accommodation`,`school`,`office`,`health_services_building`,`hotels`,`retail`,`factories`,`canteens`,`sports_center_dance_studios`,`mobile_unites_for_events`,`storage`,`laboratories`) values (1,'housing/residential','accommodation','school','office','health services building','hotels',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'housing/residential','accommodation','school','office',NULL,'hotels',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'','','','','','','','','','','','',''),(4,'housing/residential','accommodation',NULL,'office',NULL,'hotels','retail',NULL,NULL,NULL,NULL,NULL,NULL),(5,'housing/residential','accommodation',NULL,'office',NULL,'hotels','retail',NULL,NULL,NULL,NULL,NULL,NULL),(6,'housing/residential','accommodation','school','office',NULL,'hotels','retail',NULL,NULL,NULL,NULL,NULL,NULL),(7,'housing/residential','accommodation',NULL,'office','health_services_building','hotels',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'housing/residential','accommodation',NULL,'office','health_services_building','hotels','retail',NULL,NULL,NULL,NULL,NULL,NULL),(9,'housing/residential','accommodation','school','office',NULL,'hotels',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'housing/residential','accommodation',NULL,'office','health_services_building',NULL,'retail','factories',NULL,NULL,NULL,NULL,NULL),(11,'housing/residential','accommodation','school','office','health_services_building','hotels',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'housing/residential','accommodation','school','office',NULL,'hotels',NULL,NULL,NULL,'sports_center_dance_studios',NULL,NULL,NULL),(13,'housing/residential','accommodation','school','office','health_services_building',NULL,'retail',NULL,'canteens','sports_center_dance_studios','mobile_unites_for_events',NULL,NULL),(14,'housing/residential',NULL,'school','office','health_services_building','hotels','retail',NULL,NULL,'sports_center_dance_studios',NULL,NULL,NULL),(15,'housing/residential','accommodation','school','office','health_services_building','hotels','retail',NULL,NULL,NULL,NULL,NULL,NULL),(16,'housing/residential','accommodation','school','office','health_services_building',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'housing/residential','accommodation','school','office','health_services_building','hotels','retail',NULL,NULL,NULL,NULL,NULL,NULL),(18,'housing/residential','accommodation','school','office',NULL,'hotels','retail','factories',NULL,NULL,NULL,NULL,NULL),(19,'housing/residential','accommodation','school','office','health_services_building',NULL,NULL,'factories',NULL,'sports_center_dance_studios',NULL,NULL,NULL),(20,'housing/residential','accommodation','school','office','health_services_building','hotels',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `collecting_project` */

DROP TABLE IF EXISTS `collecting_project`;

CREATE TABLE `collecting_project` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `customer_sn` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `main_contractor` varchar(100) DEFAULT NULL,
  `module_contractor` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `brief_introduction` varchar(2000) DEFAULT NULL,
  `building_type` varchar(50) DEFAULT NULL,
  `structure_type` varchar(50) DEFAULT NULL,
  `module_number` varchar(50) DEFAULT NULL,
  `storey` varchar(50) DEFAULT NULL,
  `ground_area` varchar(50) DEFAULT NULL,
  `cost` varchar(50) DEFAULT NULL,
  `beginning_date` varchar(100) DEFAULT NULL,
  `completion_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `collecting_project` */

insert  into `collecting_project`(`sn`,`customer_sn`,`project_name`,`owner`,`main_contractor`,`module_contractor`,`address`,`latitude`,`longitude`,`country`,`image`,`brief_introduction`,`building_type`,`structure_type`,`module_number`,`storey`,`ground_area`,`cost`,`beginning_date`,`completion_date`) values (9,1,'Test Project',NULL,NULL,NULL,'University','22.274326','114.176145',NULL,NULL,NULL,'sports_center_dance_studios','steel',NULL,NULL,'110',NULL,NULL,NULL),(10,1,'Test 2',NULL,NULL,NULL,'No.4 University','22.24','116.46',NULL,NULL,NULL,'accommodation','steel',NULL,NULL,'112',NULL,NULL,NULL),(11,1,'Andersion Road',NULL,NULL,NULL,'No.24, Queen Street','22.3','114.4',NULL,NULL,NULL,'housing/residential','steel',NULL,NULL,'100,000',NULL,NULL,NULL),(12,1,'Project 1',NULL,NULL,NULL,'Address','22.223','114.3476',NULL,NULL,NULL,'housing/residential','concrete',NULL,NULL,'100,000',NULL,NULL,NULL),(13,10,'Interview Room',NULL,NULL,NULL,'182 Nanhu Avenue, Wuhan City, Hubei Province','113.41','29.58',NULL,NULL,NULL,'office','concrete',NULL,'','Wu han',NULL,NULL,NULL);

/*Table structure for table `controlpoints` */

DROP TABLE IF EXISTS `controlpoints`;

CREATE TABLE `controlpoints` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `opening_time` varchar(20) DEFAULT NULL,
  `closing_time` varchar(20) DEFAULT NULL,
  `width_restriction` varchar(20) DEFAULT NULL,
  `height_restriction` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `controlpoints` */

insert  into `controlpoints`(`sn`,`name`,`opening_time`,`closing_time`,`width_restriction`,`height_restriction`,`latitude`,`longitude`) values (1,'Hong Kong-Zhuhai-Macao Bridge','0:00','24:00',NULL,NULL,'22.208016','113.578566'),(2,'Lok Ma Chau Control Point','0:00','24:00','3.0 m','4.6 m ','22.521954','114.071400'),(3,'Man Kam To Control Point','7:00','10:00',NULL,NULL,'22.540765','114.124719'),(4,'Sha Tau Kok Control Point','7:00','10:00',NULL,NULL,'22.551406','114.223324'),(5,'Shenzhen Bay Port','6:30','24:00','3.5 m',NULL,'22.505896','113.944782');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `sn` int(10) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`sn`,`account_name`,`password`,`phone`,`email`,`company`,`address`,`image`,`post`) values (1,'zy','123','13888888888','zy@gmail.com','zyCo','HKU','img/customer/1566222990testc.jpg',NULL),(2,'zj','1234',NULL,'zj@gmail.com','zj Co',NULL,NULL,NULL),(3,'zzj','1234',NULL,'zzj@gmail.com','zzjCo',NULL,NULL,NULL),(4,'zyj','123456',NULL,'zyj@gmail.com','zyjCo',NULL,NULL,NULL),(5,'Test_NSY','123456abc',NULL,'sniu@hku.hk','HKU',NULL,NULL,NULL),(10,'Di','wangdi2019','15623069467','1010670062@qq.com','èŠéº»äº‘ä¿¡','æ¹–åŒ—çœæ­¦æ±‰å¸‚æ´ªå±±åŒºä¸­å—è´¢ç»æ”¿æ³•å¤§å­¦å—æ¹–æ ¡åŒºå—æ¹–å¤§é“182å·','',NULL);

/*Table structure for table `following_supplier` */

DROP TABLE IF EXISTS `following_supplier`;

CREATE TABLE `following_supplier` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `customer_sn` int(11) NOT NULL,
  `supplier_sn` int(11) NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `following_supplier` */

insert  into `following_supplier`(`sn`,`customer_sn`,`supplier_sn`) values (1,1,1);

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `sn` int(11) NOT NULL,
  `project_sn` int(11) NOT NULL,
  `image` varchar(10000) NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image` */

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `customer_sn` int(11) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_location` varchar(500) DEFAULT NULL,
  `building_type` varchar(50) DEFAULT NULL,
  `structure_type` varchar(50) DEFAULT NULL,
  `site_area` varchar(50) DEFAULT NULL,
  `gross_floor_area` varchar(50) DEFAULT NULL,
  `storey` varchar(50) DEFAULT NULL,
  `target_supplier_country` varchar(20) DEFAULT NULL,
  `matched_mic_suppliers` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post` */

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `sn` int(10) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `main_contractor` varchar(100) DEFAULT NULL,
  `module_contractor` varchar(100) NOT NULL COMMENT 'supplier.company',
  `address` varchar(500) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL COMMENT 'img/project_image/X/project.jpg',
  `brief_introduction` varchar(2000) DEFAULT NULL,
  `building_type` varchar(50) DEFAULT NULL,
  `structure_type` varchar(50) DEFAULT NULL,
  `module_number` varchar(50) DEFAULT NULL,
  `storey` varchar(50) DEFAULT NULL,
  `ground_area` varchar(50) DEFAULT NULL,
  `cost` varchar(50) DEFAULT NULL,
  `beginning_date` varchar(100) DEFAULT NULL,
  `completion_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `project` */

insert  into `project`(`sn`,`project_name`,`owner`,`main_contractor`,`module_contractor`,`address`,`latitude`,`longitude`,`country`,`image`,`brief_introduction`,`building_type`,`structure_type`,`module_number`,`storey`,`ground_area`,`cost`,`beginning_date`,`completion_date`) values (1,'MiC Display Centre','Construction Industry Council',NULL,'China International Marine Containers','Construction Industry Council - Zero Carbon Building, 8 Sheung Yuet Road, Kowloon Bay, Hong Kong','22.321004','114.208317','Hong Kong','img/project_image/1/project.jpg','The MiC Display Centre is located within the Construction Industry Council - Zero Carbon Building complex in Kowloon Bay and is the first building constructed using MiC in Hong Kong. The Centre not only functions as a visitor centre and exhibits flats built using MiC, it also demonstrates compliance of each of the modules\' specific functions with the relevant Hong Kong building requirements.\nThe Centre consists of 5 types of show flats, including a hotel unit, hostel unit, elderly home unit, a 1-bedroom residential flat and a 3-bedroom residential flat. Each usage is aimed at a different market. The Centre is designed with an overall high level of spatial quality to form a holistic visitor venue. Through careful selection of materials, the design aims to deliver a high-quality, durable, aesthetically pleasing and user-friendly environment.',NULL,'steel','11','2','334.9',NULL,NULL,NULL),(2,'Construction of Disciplined Services Quarters for the Fire Services Department','The Hong Kong Government',NULL,'Yau Lee Wah Concrete Precast Products Company Limited','Area 106, Pak Shing Kok, Tseung Kwan O','22.306906','114.274388','Hong Kong','img/project_image/2/project.jpg','The Architectural Services Department \'Disciplined Services Quarters for the Fire Services Departmental Pak Shing Kok, Tseung Kwan O\' is the first pilot project using MiC in Hong Kong. The project commenced in September 2018, turning a new page in the construction industry.\n\n Project Overview \nAddress: Area 106, Pak Shing Kok, Tseung Kwan O\n\nNumber of Quarters: 5 quarters blocks with 16 to 17 residential storeys. Each floor is made up of 8 units, providing 648 units in total\n\nArea per Unit and Number of Rooms: about 50 m2 per unit for 3 bedrooms, living room, dining room, kitchen and bathroom\n\nAncillary Facilities: building management office, covered walkway, recreational space including a multi-function room, an outdoor children\'s playground, car parks, etc.\n\nConstruction Commencement Date: September, 2018\n\nAnticipated Project Completion Date: 2021','dormitory','concrete','648',NULL,NULL,NULL,'September, 2018','2021'),(3,'Student Residence at Wong Chuk Hang Site for the University of Hong Kong','The University of Hong Kong',NULL,'Yau Lee Wah Concrete Precast Products Company Limited','Police School Road, Wong Chuk Hang','22.246492','114.170626','Hong Kong','img/project_image/3/project.jpg','A new student residence for HKU at Wong Chuk Hang has been selected by the Development Bureau as a pilot MiC project. Funding for this project has been approved by the Finance Committee of the Legislative Council. Construction is expected to commence in the first quarter of 2019.\n\nProject Overview\nNumber of Rooms: 1,224 hostel rooms in two 17-storey student residence tower buildings on top of a 3-storey podium structure\n\nArea per Hostel Place: about 6.5 m2 for each single room\n\nFacilities: residences for students and staff, recreational space, canteen, car park, etc.\n\nMain Contract Commencement Date: 1st Quarter, 2019\n\nCompletion Date: before 4th Quarter, 2023\n','dormitory',NULL,'','17','1816.8',NULL,'1st Quarter, 2019','4th Quarter, 2023'),(4,'InnoCell-HKSTP','HKSTP',NULL,'Novadeko','the Hong Kong Science Park in Sha Tin','22.425989','114.213004','Hong Kong','img/project_image/4/project.jpg','Hong Kong, 20 March 2019 – Hong Kong Science and Technology Parks Corporation (HKSTP) today announced that InnoCell, the 17-storey building for smart living and co-creation community adjacent to Hong Kong Science Park, will be built using the Modular Integrated Construction (MiC) technology incorporating the concept of “factory assembly followed by on-site installation”. This initiative aligns with the HKSAR Government’s drive to enhance productivity in the construction industry as well as the industry\'s endeavor to promote the use of advanced technologies across value chains.\n\nMiC refers to an innovative construction which applies Design for Manufacturing and Assembly (DfMA) approach to enable off-site manufacturing in a prefabrication factory and then transportation to site for installation. This approach will significantly reduce onsite construction processes. MiC has been proven effective to enhance building productivity and safety, construction quality and sustainability, supported by success cases in the US, the UK and other countries.\n\nAs Hong Kong’s largest innovation and technology (I&T) hub, HKSTP is committed to accelerating the applications of innovative technologies and taking the lead to adopt advanced construction method. In 2018, the Legislative Council Finance Committee approved the funding application for the InnoCell project. The InnoCell targets to provide local and overseas I&T talent with about 500 residential units with flexible design and ancillary facilities, and is expected to be completed by the end of 2020. ','office',NULL,NULL,'17',NULL,NULL,NULL,'2020');

/*Table structure for table `structure_type` */

DROP TABLE IF EXISTS `structure_type`;

CREATE TABLE `structure_type` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `concrete` varchar(50) DEFAULT NULL,
  `steel` varchar(50) DEFAULT NULL,
  `composite` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `structure_type` */

insert  into `structure_type`(`sn`,`concrete`,`steel`,`composite`) values (1,NULL,'steel',NULL),(2,NULL,'steel',NULL),(3,'','',''),(4,NULL,'steel',NULL),(5,NULL,'steel',NULL),(6,'concrete','steel',NULL),(7,'concrete','steel',NULL),(8,'concrete',NULL,NULL),(9,NULL,'steel',NULL),(10,NULL,'steel',NULL),(11,NULL,'steel',NULL),(12,'concrete','steel',NULL),(13,NULL,'steel',NULL),(14,NULL,'steel',NULL),(15,NULL,'steel',NULL),(16,NULL,'steel',NULL),(17,NULL,'steel',NULL),(18,NULL,'steel',NULL),(19,NULL,'steel',NULL),(20,NULL,'steel',NULL);

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `company` varchar(100) NOT NULL COMMENT 'supplier_name',
  `logo` varchar(500) DEFAULT NULL COMMENT 'img/supplier_logo/X/logo.png',
  `country` varchar(20) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `star_number` varchar(10) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `weblink` varchar(100) DEFAULT NULL,
  `structure_type` int(11) DEFAULT NULL,
  `building_type` int(11) DEFAULT NULL,
  `statement` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `supplier` */

insert  into `supplier`(`sn`,`account_name`,`password`,`phone`,`email`,`company`,`logo`,`country`,`address`,`latitude`,`longitude`,`image`,`star_number`,`contact_phone`,`contact_email`,`weblink`,`structure_type`,`building_type`,`statement`) values (1,'unitised_building','cicid123456',NULL,'','Unitsed Building','img/supplier_logo/1/logo.png','China','585 Qingda Road, Shanghai, China','31.240253','121.698259',NULL,'5','+86 (21) 6097 3918','enquiries@unitisedbuilding.com','http://www.unitisedbuilding.com/',1,1,NULL),(2,'cimc_mbs','cicid123456',NULL,NULL,'China International Marine Containers\r\n','img/supplier_logo/2/logo.png','China','CIMC Industrial Park, Daao Town, Xinhui District, Jiangmen, Guangdong, P.R. China ','22.481111','113.210435',NULL,'5','+86 750 3858300','mbs@cimc.com ','http://www.cimc-mbs.com/',2,2,NULL),(3,'ams','cicid123456',NULL,NULL,'Aussie Modular Solutions','img/supplier_logo/3/logo.png','Australia','No 3571 Great Northern Hwy, Muchea WA 6501, Australia','-31.580680','115.993194',NULL,'5','+61 8 9571 4173','residential@ams-group.com.au','http://www.ams-group.com.au/modular-homes-modular-buildings-steel-framing/',3,3,'This is Aussie Modular Solutions.'),(4,'aluhouse','cicid123456',NULL,NULL,'Aluhouse','img/supplier_logo/4/logo.png','China','Asia Aluminum Industrial City, New & Hi-The Industrial\nDevelopment Zone, Dawang, Zhaoqing, Guangdong, China','23.330457','112.844183',NULL,'5','+86 0758-692 8628','sales@aluhouse.com','http://aluhouse.com/en/index/',4,4,NULL),(5,'novadeko','cicid123456',NULL,NULL,'Novadeko','img/supplier_logo/5/logo.png','China','South China Hardware Industrial Base, South Mingsha Road, Jinsha Danzao, Foshan, Guangdong, China',NULL,NULL,NULL,'5','+91 99580 28717','info@mpspl.co','https://modernprefabsystems.com/',5,5,NULL),(6,'yauleewah','cicid123456',NULL,NULL,'Yau Lee Wah Concrete Precast Products Company Limited','img/supplier_logo/6/logo.png','China','Huizhou, Guangdong, China','23.118114','114.424224',NULL,'5','+852 2753 4325','ylwprecast@yaulee.com','http://www.yaulee.com/eng/businessDomain/yauleeWah/yauLeeWahCompany.htm',6,6,NULL),(7,'dragages_singapore','cicid123456',NULL,NULL,'Dragages Singapore','img/supplier_logo/7/logo.png','Singapore','10 Hoe Chiang Road, #23-01 Keppel Towers, 089315, Singapor','1.274656','103.842184',NULL,'5','+65 62273551','dragages.sg@bouygues-construction.com','http://dragages.com.sg/',7,7,NULL),(8,'excel_precast','cicid123456',NULL,NULL,'Excel Precast Pte Ltd','img/supplier_logo/8/logo.png','Singapore','12 Kallang Way, #02-01, North East Building, 349216,\nSingapore','1.323775','103.878899',NULL,'5','+65 6863 0895','sales@excel-precast.com.sg','http://www.excel-precast.com.sg/',8,8,NULL),(9,'modern_prefab','cicid123456',NULL,NULL,'Modern Prefab Private Limited','img/supplier_logo/9/logo.png','India','437, MTM Complex, Jonapur, Mehrauli, New Delhi-110047, INDIA','28.465606','77.158284',NULL,'5',NULL,NULL,NULL,9,9,NULL),(10,'nakano','cicid123456',NULL,NULL,'NAKANO SINGAPORE (PTE) LTD','img/supplier_logo/10/logo.png','Singapore','1 Coleman Street, #06-02 The Adelphi, 179803, Singapore','1.291497','103.851285',NULL,'5','+65 6333 4933','Info@nakano.com.sg','http://www.nakano.com.sg/',10,10,NULL),(11,'quicksmart','cicid123456',NULL,NULL,'Quicksmart Technology (Singapore) Pte Ltd','img/supplier_logo/11/logo.png','Singapore','105 Cecil Street, #07-01 The Octagon, \nSingapore 069534',NULL,NULL,NULL,'5','+65 9137 9620','info@quicksmarthomes.com','http://quicksmarttechnology.com/',11,11,NULL),(12,'imax_modular','cicid123456',NULL,NULL,'iMax Modular Pte Ltd','img/supplier_logo/12/logo.png','Singapore','28 Genting Lane, #04-01, Platinum 28, Singapore 349585',NULL,NULL,NULL,'5','+65 6634 5228','sales@imaxmodular.com','http://imaxmodular.com/',12,12,NULL),(13,'lewis_ashley','cicid123456',NULL,NULL,'Lewis Ashley Group','img/supplier_logo/13/logo.png','UK','Unit 5a, Brooksbank Ind Estate, Hull, East Yorkshire, HU12 8EE',NULL,NULL,NULL,'5','01482 815310','jwalker@lewisashleygroup.com','http://www.lewisashleygroup.com/',13,13,NULL),(14,'catfoss','cicid123456',NULL,NULL,'Catfoss Modular and Portable Buildings Ltd','img/supplier_logo/14/logo.png','UK','Beck View Road, Beverley, East Yorkshire, England, HU17 0JT',NULL,NULL,NULL,'5','01964 542225','contact@catfosshire.co.uk','https://www.catfosshire.co.uk/',14,14,NULL),(15,'premier_modular','cicid123456',NULL,NULL,'Premier Modular Limited','img/supplier_logo/15/logo.png','UK','Catfoss Lane, Brandesburton, East Yorkshire, YO25 8EJ',NULL,NULL,NULL,'5','01964 545000','sales@premiermodular.co.uk','https://www.premiermodular.co.uk/',15,15,NULL),(16,'rollalong','cicid123456',NULL,NULL,'Rollalong Permanent Offiste constrction','img/supplier_logo/16/logo.png','UK','Rollalong Ltd, Woolsbridge Industrial Park, Three Legged Cross, Wimborne, Dorset, BH21 6SF',NULL,NULL,NULL,'5','01202 824 541',NULL,'https://www.rollalong.co.uk/',16,16,NULL),(17,'caledonian','cicid123456',NULL,NULL,'Caledonian Modular','img/supplier_logo/17/logo.png','UK','Caledonian, Carlton Works, Carlton-on-Trent, Newark, Nottinghamshire, NG23 6NT',NULL,NULL,NULL,'5','01636 821645',NULL,'http://www.caledonianmodular.com/',17,17,NULL),(18,'hutchinson_builders','cicid123456',NULL,NULL,'Hutchinson Builders','img/supplier_logo/18/logo.png','Australia','2/153 Burnside Road, Ormeau QLD 4208, Australia',NULL,NULL,NULL,'5','+61 7 3414 9100','modular@hutchinsonbuilders.com.au','https://www.hutchinsonbuilders.com.au/',18,18,NULL),(19,'bgc','cicid123456',NULL,NULL,'BGC CONSTRUCTION','img/supplier_logo/19/logo.png','Australia','BGC Construction, 5th Floor, 22 Mount St, Perth, WA 6000, Australia',NULL,NULL,NULL,'5','+08 9261 1700','construction@bgcconstruction.com\r\n','http://www.bgcconstruction.com/',19,19,NULL),(20,'seisui_house','cicid123456',NULL,NULL,'Sekisui House, Ltd','img/supplier_logo/20/logo.png','Japan','1-1-88, Oyodonaka, Kita-ku, Osaka, 531-0076, Japan',NULL,NULL,NULL,'5',NULL,NULL,'https://www.sekisuihouse-global.com/\r\n',20,20,NULL),(32,'RomanosOG','He837wyvQ',NULL,'romanilinin88@mail.ru','google',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
