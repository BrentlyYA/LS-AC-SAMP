/*
Navicat MySQL Data Transfer

Source Server         : sarp
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : azcc

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2023-06-07 12:06:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Online` int(11) NOT NULL DEFAULT '0',
  `UpdateDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RegiDate` datetime DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `Username` varchar(32) NOT NULL DEFAULT '',
  `Key` varchar(256) NOT NULL DEFAULT '',
  `Email` varchar(256) NOT NULL DEFAULT '',
  `IP` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `SecureIP` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `Registered` int(11) NOT NULL DEFAULT '0',
  `ConnectedTime` int(11) NOT NULL DEFAULT '0',
  `Sex` int(11) NOT NULL DEFAULT '1',
  `Age` int(11) NOT NULL DEFAULT '18',
  `BirthDate` date NOT NULL DEFAULT '0000-00-00',
  `Band` int(11) NOT NULL DEFAULT '0',
  `PermBand` int(11) NOT NULL DEFAULT '0',
  `Warnings` int(11) NOT NULL DEFAULT '0',
  `Disabled` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '1',
  `AdminLevel` int(11) NOT NULL DEFAULT '0',
  `SeniorModerator` int(11) NOT NULL DEFAULT '0',
  `DonateRank` int(11) NOT NULL DEFAULT '0',
  `Respect` int(11) NOT NULL DEFAULT '0',
  `XP` int(11) NOT NULL DEFAULT '0',
  `Money` bigint(11) NOT NULL DEFAULT '5000',
  `Bank` bigint(11) NOT NULL DEFAULT '20000',
  `pHealth` float(10,5) NOT NULL DEFAULT '50.00000',
  `pArmor` float(10,5) NOT NULL DEFAULT '0.00000',
  `pSHealth` float(10,5) NOT NULL DEFAULT '0.00000',
  `Int` int(11) NOT NULL DEFAULT '0',
  `VirtualWorld` int(11) NOT NULL DEFAULT '0',
  `Model` int(11) NOT NULL DEFAULT '299',
  `SPos_x` float(20,5) NOT NULL DEFAULT '0.00000',
  `SPos_y` float(20,5) NOT NULL DEFAULT '0.00000',
  `SPos_z` float(20,5) NOT NULL DEFAULT '0.00000',
  `SPos_r` float(20,5) NOT NULL DEFAULT '0.00000',
  `BanAppealer` int(11) NOT NULL DEFAULT '0',
  `PR` int(11) NOT NULL DEFAULT '0',
  `HR` int(11) NOT NULL DEFAULT '0',
  `AP` int(11) NOT NULL DEFAULT '1',
  `Security` int(11) NOT NULL DEFAULT '0',
  `ShopTech` int(11) NOT NULL DEFAULT '0',
  `FactionModerator` int(11) NOT NULL DEFAULT '0',
  `GangModerator` int(11) NOT NULL DEFAULT '0',
  `Undercover` int(11) NOT NULL DEFAULT '0',
  `TogReports` int(11) NOT NULL DEFAULT '0',
  `Radio` int(11) NOT NULL DEFAULT '0',
  `RadioFreq` int(11) NOT NULL DEFAULT '0',
  `UpgradePoints` int(11) NOT NULL DEFAULT '0',
  `Origin` int(11) NOT NULL DEFAULT '0',
  `Muted` int(11) NOT NULL DEFAULT '0',
  `Crimes` int(11) NOT NULL DEFAULT '0',
  `Accent` int(11) NOT NULL DEFAULT '0',
  `CHits` int(11) NOT NULL DEFAULT '0',
  `FHits` int(11) NOT NULL DEFAULT '0',
  `Arrested` int(11) NOT NULL DEFAULT '0',
  `Phonebook` int(11) NOT NULL DEFAULT '0',
  `LottoNr` int(11) NOT NULL DEFAULT '0',
  `Fishes` int(11) NOT NULL DEFAULT '0',
  `BiggestFish` int(11) NOT NULL DEFAULT '0',
  `Job` int(11) NOT NULL DEFAULT '0',
  `Job2` int(11) NOT NULL DEFAULT '0',
  `Paycheck` int(11) NOT NULL DEFAULT '0',
  `HeadValue` int(11) NOT NULL DEFAULT '0',
  `Jailed` int(11) NOT NULL DEFAULT '0',
  `JailTime` int(11) NOT NULL DEFAULT '0',
  `WRestricted` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Crates` int(11) NOT NULL DEFAULT '0',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Nation` int(1) NOT NULL DEFAULT '0',
  `Leader` int(11) NOT NULL DEFAULT '-1',
  `Member` int(11) NOT NULL DEFAULT '-1',
  `Division` int(11) NOT NULL DEFAULT '-1',
  `FMember` int(11) NOT NULL DEFAULT '255',
  `Rank` int(11) NOT NULL DEFAULT '-1',
  `DetSkill` int(11) NOT NULL DEFAULT '0',
  `SexSkill` int(11) NOT NULL DEFAULT '0',
  `BoxSkill` int(11) NOT NULL DEFAULT '0',
  `LawSkill` int(11) NOT NULL DEFAULT '0',
  `MechSkill` int(11) NOT NULL DEFAULT '0',
  `TruckSkill` int(11) NOT NULL DEFAULT '0',
  `DrugsSkill` int(11) NOT NULL DEFAULT '0',
  `ArmsSkill` int(11) NOT NULL DEFAULT '0',
  `SmugglerSkill` int(11) NOT NULL DEFAULT '0',
  `FishSkill` int(11) NOT NULL DEFAULT '0',
  `FightingStyle` int(11) NOT NULL DEFAULT '0',
  `PhoneNr` int(11) NOT NULL DEFAULT '0',
  `Apartment` int(11) NOT NULL DEFAULT '-1',
  `Apartment2` int(11) NOT NULL DEFAULT '-1',
  `Renting` int(11) NOT NULL DEFAULT '-1',
  `CarLic` int(11) NOT NULL DEFAULT '1',
  `FlyLic` int(11) NOT NULL DEFAULT '0',
  `BoatLic` int(11) NOT NULL DEFAULT '1',
  `FishLic` int(11) NOT NULL DEFAULT '1',
  `CheckCash` int(11) NOT NULL DEFAULT '0',
  `Checks` int(11) NOT NULL DEFAULT '0',
  `GunLic` int(11) NOT NULL DEFAULT '1',
  `Gun0` int(11) NOT NULL DEFAULT '0',
  `Gun1` int(11) NOT NULL DEFAULT '0',
  `Gun2` int(11) NOT NULL DEFAULT '0',
  `Gun3` int(11) NOT NULL DEFAULT '0',
  `Gun4` int(11) NOT NULL DEFAULT '0',
  `Gun5` int(11) NOT NULL DEFAULT '0',
  `Gun6` int(11) NOT NULL DEFAULT '0',
  `Gun7` int(11) NOT NULL DEFAULT '0',
  `Gun8` int(11) NOT NULL DEFAULT '0',
  `Gun9` int(11) NOT NULL DEFAULT '0',
  `Gun10` int(11) NOT NULL DEFAULT '0',
  `Gun11` int(11) NOT NULL DEFAULT '0',
  `DrugsTime` int(11) NOT NULL DEFAULT '0',
  `LawyerTime` int(11) NOT NULL DEFAULT '0',
  `LawyerFreeTime` int(11) NOT NULL DEFAULT '0',
  `MechTime` int(11) NOT NULL DEFAULT '0',
  `SexTime` int(11) NOT NULL DEFAULT '0',
  `PayDay` int(11) NOT NULL DEFAULT '0',
  `PayDayHad` int(11) NOT NULL DEFAULT '0',
  `CDPlayer` int(11) NOT NULL DEFAULT '0',
  `Dice` int(11) NOT NULL DEFAULT '0',
  `Spraycan` int(11) NOT NULL DEFAULT '0',
  `Rope` int(11) NOT NULL DEFAULT '0',
  `Cigars` int(11) NOT NULL DEFAULT '0',
  `Sprunk` int(11) NOT NULL DEFAULT '0',
  `Bombs` int(11) NOT NULL DEFAULT '0',
  `Wins` int(11) NOT NULL DEFAULT '0',
  `Loses` int(11) NOT NULL DEFAULT '0',
  `Tutorial` int(11) NOT NULL DEFAULT '0',
  `OnDuty` int(11) NOT NULL DEFAULT '0',
  `Hospital` int(11) NOT NULL DEFAULT '0',
  `Married` int(11) NOT NULL DEFAULT '0',
  `MarriedID` int(11) NOT NULL DEFAULT '-1',
  `MarriedTo` varchar(32) NOT NULL DEFAULT 'Nobody',
  `ContractBy` varchar(32) NOT NULL DEFAULT 'Nobody',
  `ContractDetail` varchar(64) NOT NULL DEFAULT 'None',
  `WantedLevel` int(11) NOT NULL DEFAULT '0',
  `Insurance` int(11) NOT NULL DEFAULT '0',
  `NewMuted` int(11) NOT NULL DEFAULT '0',
  `NewMutedTotal` int(11) NOT NULL DEFAULT '0',
  `AdMuted` int(11) NOT NULL DEFAULT '0',
  `AdMutedTotal` int(11) NOT NULL DEFAULT '0',
  `HelpMute` int(11) NOT NULL DEFAULT '0',
  `Helper` int(11) NOT NULL DEFAULT '0',
  `ReportMuted` int(11) NOT NULL DEFAULT '0',
  `ReportMutedTotal` int(11) NOT NULL DEFAULT '0',
  `ReportMutedTime` int(11) NOT NULL DEFAULT '0',
  `VIPMuted` int(11) NOT NULL DEFAULT '0',
  `VIPMutedTime` int(11) NOT NULL DEFAULT '0',
  `GiftTime` int(11) NOT NULL DEFAULT '0',
  `AdvisorDutyHours` int(11) NOT NULL DEFAULT '0',
  `AcceptedHelp` int(11) NOT NULL DEFAULT '0',
  `AcceptReport` int(11) NOT NULL DEFAULT '0',
  `ShopTechOrders` int(11) NOT NULL DEFAULT '0',
  `TrashReport` int(11) NOT NULL DEFAULT '0',
  `GangWarn` int(11) NOT NULL DEFAULT '0',
  `FactionBanned` int(11) NOT NULL DEFAULT '0',
  `CSFBanned` int(11) NOT NULL DEFAULT '0',
  `VIPInviteDay` int(11) NOT NULL DEFAULT '0',
  `TempVIP` int(11) NOT NULL DEFAULT '0',
  `BuddyInvite` int(11) NOT NULL DEFAULT '0',
  `Tokens` int(11) NOT NULL DEFAULT '0',
  `PTokens` int(11) NOT NULL DEFAULT '0',
  `TriageTime` int(11) NOT NULL DEFAULT '0',
  `PrisonedBy` varchar(32) NOT NULL DEFAULT 'Nobody',
  `PrisonReason` varchar(128) NOT NULL DEFAULT 'None',
  `Flag` varchar(128) NOT NULL DEFAULT '',
  `TaxiLicense` int(11) NOT NULL DEFAULT '0',
  `TicketTime` int(11) NOT NULL DEFAULT '0',
  `Screwdriver` int(11) NOT NULL DEFAULT '0',
  `Smslog` int(11) NOT NULL DEFAULT '0',
  `Wristwatch` int(11) NOT NULL DEFAULT '0',
  `Surveillance` int(11) NOT NULL DEFAULT '0',
  `Tire` int(11) NOT NULL DEFAULT '0',
  `Firstaid` int(11) NOT NULL DEFAULT '0',
  `Rccam` int(11) NOT NULL DEFAULT '0',
  `Receiver` int(11) NOT NULL DEFAULT '0',
  `GPS` int(11) NOT NULL DEFAULT '0',
  `Sweep` int(11) NOT NULL DEFAULT '0',
  `SweepLeft` int(11) NOT NULL DEFAULT '0',
  `Bugged` int(11) NOT NULL DEFAULT '0',
  `pWExists` int(11) NOT NULL DEFAULT '0',
  `pWX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pWY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pWZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pWVW` int(11) NOT NULL DEFAULT '0',
  `pWInt` int(11) NOT NULL DEFAULT '0',
  `pWValue` int(11) NOT NULL DEFAULT '-1',
  `pWSeeds` int(11) NOT NULL DEFAULT '0',
  `Warrants` varchar(128) NOT NULL DEFAULT '',
  `JudgeJailTime` int(11) NOT NULL DEFAULT '0',
  `JudgeJailType` int(11) NOT NULL DEFAULT '0',
  `BeingSentenced` int(11) NOT NULL DEFAULT '0',
  `ProbationTime` int(11) NOT NULL DEFAULT '0',
  `DMKills` int(11) NOT NULL DEFAULT '0',
  `Order` varchar(63) NOT NULL DEFAULT '',
  `OrderConfirmed` int(11) NOT NULL DEFAULT '0',
  `CallsAccepted` int(11) NOT NULL DEFAULT '0',
  `PatientsDelivered` int(11) NOT NULL DEFAULT '0',
  `LiveBanned` int(11) NOT NULL DEFAULT '0',
  `FreezeBank` int(11) NOT NULL DEFAULT '0',
  `FreezeHouse` int(11) NOT NULL DEFAULT '0',
  `FreezeCar` int(11) NOT NULL DEFAULT '0',
  `Hydration` int(11) NOT NULL DEFAULT '0',
  `DoubleEXP` int(11) NOT NULL DEFAULT '0',
  `EXPToken` int(11) NOT NULL DEFAULT '0',
  `RacePlayerLaps` int(11) NOT NULL DEFAULT '0',
  `Ringtone` int(11) NOT NULL DEFAULT '0',
  `VIPM` int(11) NOT NULL DEFAULT '0',
  `VIPMO` int(11) NOT NULL DEFAULT '0',
  `VIPExpire` int(11) NOT NULL DEFAULT '0',
  `VIPSold` int(11) NOT NULL DEFAULT '0',
  `GVip` int(11) NOT NULL DEFAULT '0',
  `Speedo` int(11) NOT NULL DEFAULT '0',
  `Firework` int(11) NOT NULL DEFAULT '0',
  `Boombox` int(11) NOT NULL DEFAULT '0',
  `DrawChance` int(11) NOT NULL DEFAULT '0',
  `GoldBoxTokens` int(11) NOT NULL DEFAULT '0',
  `RewardHours` float(10,5) NOT NULL DEFAULT '0.00000',
  `DMRMuted` int(11) unsigned NOT NULL DEFAULT '0',
  `Watchdog` int(11) unsigned NOT NULL DEFAULT '0',
  `CarsRestricted` tinyint(2) NOT NULL DEFAULT '0',
  `Flagged` tinyint(2) NOT NULL DEFAULT '0',
  `LepPoints` int(11) unsigned NOT NULL DEFAULT '0',
  `LepSafePoints` int(11) NOT NULL DEFAULT '0',
  `LastCarWarning` int(11) NOT NULL DEFAULT '0',
  `CarWarns` int(11) NOT NULL DEFAULT '0',
  `Scripter` int(11) NOT NULL DEFAULT '0',
  `Hours` int(11) NOT NULL DEFAULT '0',
  `Paper` int(11) NOT NULL DEFAULT '0',
  `MailEnabled` int(11) NOT NULL DEFAULT '1',
  `Mailbox` int(11) NOT NULL DEFAULT '0',
  `UnreadMails` int(11) NOT NULL DEFAULT '0',
  `TreasureSkill` int(5) NOT NULL DEFAULT '0',
  `MetalDetector` int(5) NOT NULL DEFAULT '0',
  `HelpedBefore` int(11) NOT NULL DEFAULT '0',
  `Business` int(11) NOT NULL DEFAULT '-1',
  `BusinessRank` int(11) NOT NULL DEFAULT '-1',
  `Trickortreat` int(11) NOT NULL DEFAULT '0',
  `RHMutes` int(1) NOT NULL DEFAULT '0',
  `RHMuteTime` int(11) NOT NULL DEFAULT '0',
  `GiftCode` int(11) NOT NULL DEFAULT '0',
  `Table` int(11) NOT NULL DEFAULT '0',
  `OpiumSeeds` int(11) NOT NULL DEFAULT '0',
  `RawOpium` int(11) NOT NULL DEFAULT '0',
  `Heroin` int(11) NOT NULL DEFAULT '0',
  `Syringe` int(11) NOT NULL DEFAULT '0',
  `Skins` int(2) NOT NULL DEFAULT '0',
  `Hunger` int(11) NOT NULL DEFAULT '50',
  `HungerTimer` int(11) NOT NULL DEFAULT '0',
  `HungerDeathTimer` int(11) NOT NULL DEFAULT '0',
  `Fitness` int(11) NOT NULL DEFAULT '0',
  `Credits` int(11) NOT NULL DEFAULT '0',
  `LastCharmReceived` int(11) NOT NULL DEFAULT '0',
  `HealthCare` int(11) NOT NULL DEFAULT '0',
  `TotalCredits` int(11) NOT NULL DEFAULT '0',
  `911Muted` int(11) NOT NULL DEFAULT '0',
  `ForcePasswordChange` int(11) NOT NULL DEFAULT '0',
  `ReceivedCredits` int(11) NOT NULL DEFAULT '0',
  `Pin` varchar(256) NOT NULL DEFAULT '',
  `RimMod` int(11) NOT NULL DEFAULT '0',
  `Tazer` int(11) NOT NULL DEFAULT '0',
  `Cuff` int(11) NOT NULL DEFAULT '0',
  `CarVoucher` int(11) NOT NULL DEFAULT '0',
  `ReferredBy` varchar(32) NOT NULL DEFAULT 'Nobody',
  `PendingRefReward` int(11) NOT NULL DEFAULT '0',
  `Refers` int(11) NOT NULL DEFAULT '0',
  `Developer` int(11) NOT NULL DEFAULT '0',
  `Famed` int(11) NOT NULL DEFAULT '0',
  `FamedMuted` int(11) NOT NULL DEFAULT '0',
  `DefendTime` int(11) NOT NULL DEFAULT '0',
  `VehicleSlot` int(11) NOT NULL DEFAULT '0',
  `PVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `ToySlot` int(11) NOT NULL DEFAULT '0',
  `RFLTeam` int(11) NOT NULL DEFAULT '-1',
  `RFLTeamL` int(11) NOT NULL DEFAULT '-1',
  `VehVoucher` int(11) NOT NULL DEFAULT '0',
  `SVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `GVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `GiftVoucher` int(11) NOT NULL DEFAULT '0',
  `FallIntoFun` int(11) NOT NULL DEFAULT '0',
  `ContactSlot` int(11) NOT NULL DEFAULT '0',
  `HungerVoucher` int(11) NOT NULL DEFAULT '0',
  `Vials` int(11) NOT NULL DEFAULT '0',
  `BoughtCure` int(11) NOT NULL DEFAULT '0',
  `AdvertVoucher` int(11) NOT NULL DEFAULT '0',
  `ShopCounter` int(11) NOT NULL DEFAULT '0',
  `ShopNotice` int(11) NOT NULL DEFAULT '0',
  `SVIPExVoucher` int(11) NOT NULL DEFAULT '0',
  `GVIPExVoucher` int(11) NOT NULL DEFAULT '0',
  `VIPSellable` int(11) NOT NULL DEFAULT '0',
  `ReceivedPrize` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`Username`),
  KEY `Username` (`Username`(5))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accounts
-- ----------------------------

-- ----------------------------
-- Table structure for `arrestpoints`
-- ----------------------------
DROP TABLE IF EXISTS `arrestpoints`;
CREATE TABLE `arrestpoints` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(5) NOT NULL DEFAULT '0',
  `Int` int(5) NOT NULL DEFAULT '0',
  `Type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arrestpoints
-- ----------------------------

-- ----------------------------
-- Table structure for `arrestreports`
-- ----------------------------
DROP TABLE IF EXISTS `arrestreports`;
CREATE TABLE `arrestreports` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `copid` int(12) NOT NULL DEFAULT '0',
  `suspectid` int(12) NOT NULL DEFAULT '0',
  `shortreport` varchar(512) NOT NULL DEFAULT '',
  `longreport` varchar(2024) NOT NULL DEFAULT '',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arrestreports
-- ----------------------------

-- ----------------------------
-- Table structure for `auctions`
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions` (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT '0',
  `Bid` int(11) NOT NULL DEFAULT '0',
  `Bidder` int(11) NOT NULL DEFAULT '0',
  `Expires` int(11) NOT NULL DEFAULT '0',
  `Wining` varchar(24) NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auctions
-- ----------------------------

-- ----------------------------
-- Table structure for `bans`
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `reason` varchar(156) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_unban` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `link` varchar(156) DEFAULT NULL,
  `admin` varchar(156) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6651 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bans
-- ----------------------------

-- ----------------------------
-- Table structure for `businesses`
-- ----------------------------
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE `businesses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL DEFAULT 'Unnamed Business',
  `Type` int(11) NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `OwnerName` varchar(40) NOT NULL DEFAULT 'None',
  `Months` int(11) NOT NULL DEFAULT '0',
  `SafeBalance` int(11) NOT NULL DEFAULT '0',
  `Inventory` int(11) NOT NULL DEFAULT '0',
  `InventoryCapacity` int(11) NOT NULL DEFAULT '1000',
  `Status` int(11) NOT NULL DEFAULT '1',
  `Level` tinyint(4) NOT NULL DEFAULT '1',
  `LevelProgress` int(11) NOT NULL DEFAULT '0',
  `AutoSale` tinyint(4) NOT NULL DEFAULT '1',
  `OrderDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OrderAmount` int(11) NOT NULL DEFAULT '0',
  `OrderBy` varchar(24) NOT NULL DEFAULT '',
  `OrderState` int(11) NOT NULL DEFAULT '0',
  `TotalSales` int(11) NOT NULL DEFAULT '0',
  `Bargain` tinyint(4) NOT NULL DEFAULT '0',
  `ExteriorX` float NOT NULL DEFAULT '0',
  `ExteriorY` float NOT NULL DEFAULT '0',
  `ExteriorZ` float NOT NULL DEFAULT '0',
  `ExteriorA` float NOT NULL DEFAULT '0',
  `InteriorX` float NOT NULL DEFAULT '0',
  `InteriorY` float NOT NULL DEFAULT '0',
  `InteriorZ` float NOT NULL DEFAULT '0',
  `InteriorA` float NOT NULL DEFAULT '0',
  `Interior` tinyint(4) NOT NULL DEFAULT '0',
  `CustomExterior` int(11) NOT NULL DEFAULT '0',
  `CustomInterior` int(11) NOT NULL DEFAULT '0',
  `SupplyPointX` float NOT NULL DEFAULT '0',
  `SupplyPointY` float NOT NULL DEFAULT '0',
  `SupplyPointZ` float NOT NULL DEFAULT '0',
  `Item1Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item2Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item3Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item4Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item5Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item6Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item7Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item8Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item9Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item10Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item11Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item12Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item13Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item14Price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Item15Price` mediumint(8) NOT NULL DEFAULT '0',
  `Item16Price` mediumint(8) NOT NULL DEFAULT '0',
  `Item17Price` mediumint(8) NOT NULL DEFAULT '0',
  `Item18Price` mediumint(8) NOT NULL DEFAULT '0',
  `Rank0Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank1Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank2Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank3Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank4Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank5Pay` mediumint(8) unsigned NOT NULL DEFAULT '9',
  `Pay` tinyint(4) NOT NULL DEFAULT '0',
  `GasPrice` float unsigned NOT NULL DEFAULT '0',
  `MinInviteRank` tinyint(4) NOT NULL DEFAULT '4',
  `MinSupplyRank` tinyint(4) NOT NULL DEFAULT '5',
  `MinGiveRankRank` tinyint(4) NOT NULL DEFAULT '5',
  `MinSafeRank` tinyint(4) NOT NULL DEFAULT '5',
  `GasPump1PosX` float NOT NULL DEFAULT '0',
  `GasPump1PosY` float NOT NULL DEFAULT '0',
  `GasPump1PosZ` float NOT NULL DEFAULT '0',
  `GasPump1Angle` float NOT NULL DEFAULT '0',
  `GasPump1Model` float NOT NULL DEFAULT '0',
  `GasPump1Capacity` float NOT NULL DEFAULT '0',
  `GasPump1Gas` float NOT NULL DEFAULT '0',
  `GasPump2PosX` float NOT NULL DEFAULT '0',
  `GasPump2PosY` float NOT NULL DEFAULT '0',
  `GasPump2PosZ` float NOT NULL DEFAULT '0',
  `GasPump2Angle` float NOT NULL DEFAULT '0',
  `GasPump2Model` float NOT NULL DEFAULT '0',
  `GasPump2Capacity` float NOT NULL DEFAULT '0',
  `GasPump2Gas` float NOT NULL DEFAULT '0',
  `Car0PosX` float NOT NULL DEFAULT '0',
  `Car0PosY` float NOT NULL DEFAULT '0',
  `Car0PosZ` float NOT NULL DEFAULT '0',
  `Car0PosAngle` float NOT NULL DEFAULT '0',
  `Car0ModelId` int(11) NOT NULL DEFAULT '0',
  `Car0Price` int(11) NOT NULL DEFAULT '0',
  `Car1PosX` float NOT NULL DEFAULT '0',
  `Car1PosY` float NOT NULL DEFAULT '0',
  `Car1PosZ` float NOT NULL DEFAULT '0',
  `Car1PosAngle` float NOT NULL DEFAULT '0',
  `Car1ModelId` int(11) NOT NULL DEFAULT '0',
  `Car1Price` int(11) NOT NULL DEFAULT '0',
  `Car2PosX` float NOT NULL DEFAULT '0',
  `Car2PosY` float NOT NULL DEFAULT '0',
  `Car2PosZ` float NOT NULL DEFAULT '0',
  `Car2PosAngle` float NOT NULL DEFAULT '0',
  `Car2ModelId` int(11) NOT NULL DEFAULT '0',
  `Car2Price` int(11) NOT NULL DEFAULT '0',
  `Car3PosX` float NOT NULL DEFAULT '0',
  `Car3PosY` float NOT NULL DEFAULT '0',
  `Car3PosZ` float NOT NULL DEFAULT '0',
  `Car3PosAngle` float NOT NULL DEFAULT '0',
  `Car3ModelId` int(11) NOT NULL DEFAULT '0',
  `Car3Price` int(11) NOT NULL DEFAULT '0',
  `Car1Stock` int(11) NOT NULL DEFAULT '0',
  `Car2Stock` int(11) NOT NULL DEFAULT '0',
  `Car3Stock` int(11) NOT NULL DEFAULT '0',
  `Car1Order` int(11) NOT NULL DEFAULT '0',
  `Car2Order` int(11) NOT NULL DEFAULT '0',
  `Car3Order` int(11) NOT NULL DEFAULT '0',
  `Car4PosX` float NOT NULL DEFAULT '0',
  `Car4PosY` float NOT NULL DEFAULT '0',
  `Car4PosZ` float NOT NULL DEFAULT '0',
  `Car4PosAngle` float NOT NULL DEFAULT '0',
  `Car4ModelId` int(11) NOT NULL DEFAULT '0',
  `Car4Price` int(11) NOT NULL DEFAULT '0',
  `Car5PosX` int(11) NOT NULL DEFAULT '0',
  `Car5PosY` float NOT NULL DEFAULT '0',
  `Car5PosZ` float NOT NULL DEFAULT '0',
  `Car5PosAngle` float NOT NULL DEFAULT '0',
  `Car5ModelId` int(11) NOT NULL DEFAULT '0',
  `Car5Price` int(11) NOT NULL DEFAULT '0',
  `Car6PosX` float NOT NULL DEFAULT '0',
  `Car6PosY` float NOT NULL DEFAULT '0',
  `Car6PosZ` float NOT NULL DEFAULT '0',
  `Car6PosAngle` float NOT NULL DEFAULT '0',
  `Car6ModelId` int(11) NOT NULL DEFAULT '0',
  `Car6Price` int(11) NOT NULL DEFAULT '0',
  `Car7PosX` float NOT NULL DEFAULT '0',
  `Car7PosY` float NOT NULL DEFAULT '0',
  `Car7PosZ` float NOT NULL DEFAULT '0',
  `Car7PosAngle` float NOT NULL DEFAULT '0',
  `Car7ModelId` int(11) NOT NULL DEFAULT '0',
  `Car7Price` int(11) NOT NULL DEFAULT '0',
  `Car8PosX` float NOT NULL DEFAULT '0',
  `Car8PosY` float NOT NULL DEFAULT '0',
  `Car8PosZ` float NOT NULL DEFAULT '0',
  `Car8PosAngle` float NOT NULL DEFAULT '0',
  `Car8ModelId` int(11) NOT NULL DEFAULT '0',
  `Car8Price` int(11) NOT NULL DEFAULT '0',
  `Car9PosX` float NOT NULL DEFAULT '0',
  `Car9PosY` float NOT NULL DEFAULT '0',
  `Car9PosZ` float NOT NULL DEFAULT '0',
  `Car9PosAngle` float NOT NULL DEFAULT '0',
  `Car9ModelId` int(11) NOT NULL DEFAULT '0',
  `Car9Price` int(11) NOT NULL DEFAULT '0',
  `PurchaseX` float NOT NULL DEFAULT '0',
  `PurchaseY` float NOT NULL DEFAULT '0',
  `PurchaseZ` float NOT NULL DEFAULT '0',
  `PurchaseAngle` float NOT NULL DEFAULT '0',
  `TotalProfits` int(11) NOT NULL DEFAULT '0',
  `GymEntryFee` int(11) NOT NULL DEFAULT '0',
  `GymType` int(11) NOT NULL DEFAULT '0',
  `CustomVW` int(11) NOT NULL DEFAULT '0',
  `Grade` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of businesses
-- ----------------------------

-- ----------------------------
-- Table structure for `businesssales`
-- ----------------------------
DROP TABLE IF EXISTS `businesssales`;
CREATE TABLE `businesssales` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BusinessID` int(11) unsigned NOT NULL DEFAULT '0',
  `Text` varchar(128) DEFAULT '0',
  `Price` int(11) DEFAULT '0',
  `Available` int(11) NOT NULL DEFAULT '0',
  `Purchased` int(11) DEFAULT '0',
  `Type` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of businesssales
-- ----------------------------


-- ----------------------------
-- Table structure for `contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlID` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_access`
-- ----------------------------
DROP TABLE IF EXISTS `cp_access`;
CREATE TABLE `cp_access` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `punish` int(1) DEFAULT '0',
  `refund` int(1) DEFAULT '0',
  `ban` int(1) DEFAULT '0',
  `cplgeneral` int(1) DEFAULT '0',
  `cplstaff` int(1) DEFAULT NULL,
  `cplfaction` int(1) DEFAULT NULL,
  `cplfamily` int(1) DEFAULT NULL,
  `cplcr` int(1) DEFAULT '0',
  `gladmin` int(1) DEFAULT '0',
  `gladmingive` int(1) DEFAULT NULL,
  `gladminpay` int(1) DEFAULT NULL,
  `glban` int(1) DEFAULT NULL,
  `glcontracts` int(1) DEFAULT NULL,
  `glddedit` int(1) DEFAULT NULL,
  `gldmpedit` int(1) DEFAULT NULL,
  `glfaction` int(1) DEFAULT NULL,
  `glfamily` int(1) DEFAULT NULL,
  `glfmembercount` int(1) DEFAULT NULL,
  `glgedit` int(1) DEFAULT NULL,
  `glgifts` int(1) DEFAULT NULL,
  `glhack` int(1) DEFAULT NULL,
  `glhedit` int(1) DEFAULT NULL,
  `glhouse` int(1) DEFAULT NULL,
  `glkick` int(1) DEFAULT NULL,
  `gllicenses` int(1) DEFAULT NULL,
  `glmoderator` int(1) DEFAULT NULL,
  `glmute` int(1) DEFAULT NULL,
  `glpads` int(1) DEFAULT NULL,
  `glpassword` int(1) DEFAULT NULL,
  `glpay` int(1) DEFAULT NULL,
  `glplayervehicle` int(1) DEFAULT NULL,
  `glrpspecial` int(1) DEFAULT NULL,
  `glsecurity` int(1) DEFAULT NULL,
  `glsetvip` int(1) DEFAULT NULL,
  `glshopconfirmedorders` int(1) DEFAULT NULL,
  `glshoplog` int(1) DEFAULT NULL,
  `glshoporders` int(1) DEFAULT NULL,
  `glstats` int(1) DEFAULT NULL,
  `glundercover` int(1) DEFAULT NULL,
  `glvipnamechanges` int(1) DEFAULT NULL,
  `glvipremove` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_access
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_admin_notes`
-- ----------------------------
DROP TABLE IF EXISTS `cp_admin_notes`;
CREATE TABLE `cp_admin_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `invoke_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_admin_notes
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_cache_email`
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_email`;
CREATE TABLE `cp_cache_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `token` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_cache_email
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_cache_passreset`
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_passreset`;
CREATE TABLE `cp_cache_passreset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cp_cache_passreset
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_cache_sec_questions`
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_sec_questions`;
CREATE TABLE `cp_cache_sec_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cp_cache_sec_questions
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_faction`
-- ----------------------------
DROP TABLE IF EXISTS `cp_faction`;
CREATE TABLE `cp_faction` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `rank_0` varchar(64) DEFAULT NULL,
  `rank_1` varchar(64) DEFAULT NULL,
  `rank_2` varchar(64) DEFAULT NULL,
  `rank_3` varchar(64) DEFAULT NULL,
  `rank_4` varchar(64) DEFAULT NULL,
  `rank_5` varchar(64) DEFAULT NULL,
  `rank_6` varchar(64) DEFAULT NULL,
  `div_0` varchar(64) DEFAULT NULL,
  `div_1` varchar(64) DEFAULT NULL,
  `div_2` varchar(64) DEFAULT NULL,
  `div_3` varchar(64) DEFAULT NULL,
  `div_4` varchar(64) DEFAULT NULL,
  `div_5` varchar(64) DEFAULT NULL,
  `div_6` varchar(64) DEFAULT NULL,
  `div_7` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_faction
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_family`
-- ----------------------------
DROP TABLE IF EXISTS `cp_family`;
CREATE TABLE `cp_family` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `leader` int(11) DEFAULT NULL,
  `rank_1` varchar(64) DEFAULT NULL,
  `rank_2` varchar(64) DEFAULT NULL,
  `rank_3` varchar(64) DEFAULT NULL,
  `rank_4` varchar(64) DEFAULT NULL,
  `rank_5` varchar(64) DEFAULT NULL,
  `rank_6` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_family
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_leave`
-- ----------------------------
DROP TABLE IF EXISTS `cp_leave`;
CREATE TABLE `cp_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date_leave` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  `reason` varchar(1024) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `acceptedby_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_leave
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_log_cr`
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_cr`;
CREATE TABLE `cp_log_cr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_log_cr
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_log_faction`
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_faction`;
CREATE TABLE `cp_log_faction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_log_faction
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_log_family`
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_family`;
CREATE TABLE `cp_log_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_log_family
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_log_general`
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_general`;
CREATE TABLE `cp_log_general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_log_general
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_log_staff`
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_staff`;
CREATE TABLE `cp_log_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_log_staff
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_punishment`
-- ----------------------------
DROP TABLE IF EXISTS `cp_punishment`;
CREATE TABLE `cp_punishment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `addedby_id` int(11) DEFAULT NULL,
  `reason` varchar(1024) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `prison` int(11) DEFAULT NULL,
  `warn` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `ban` int(1) DEFAULT NULL,
  `wep_restrict` int(11) DEFAULT NULL,
  `other_punish` varchar(1024) DEFAULT NULL,
  `link` varchar(1024) DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `issuedby_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_punishment
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_refund`
-- ----------------------------
DROP TABLE IF EXISTS `cp_refund`;
CREATE TABLE `cp_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `money` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `boombox` int(10) DEFAULT '0',
  `viptoken` int(10) DEFAULT '0',
  `refund` varchar(512) DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `auth` varchar(256) DEFAULT NULL,
  `addedby_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `issuedby_id` int(1) DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_refund
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_shift_blocks`
-- ----------------------------
DROP TABLE IF EXISTS `cp_shift_blocks`;
CREATE TABLE `cp_shift_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shift` varchar(3) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `needs_sunday` int(11) DEFAULT '1',
  `needs_monday` int(11) DEFAULT '1',
  `needs_tuesday` int(11) DEFAULT '1',
  `needs_wednesday` int(11) DEFAULT '1',
  `needs_thursday` int(11) DEFAULT '1',
  `needs_friday` int(11) DEFAULT '1',
  `needs_saturday` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_shift_blocks
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_shift_leader`
-- ----------------------------
DROP TABLE IF EXISTS `cp_shift_leader`;
CREATE TABLE `cp_shift_leader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_shift_leader
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_shifts`
-- ----------------------------
DROP TABLE IF EXISTS `cp_shifts`;
CREATE TABLE `cp_shifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `sign_up` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `bonus` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_shifts
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_stat`
-- ----------------------------
DROP TABLE IF EXISTS `cp_stat`;
CREATE TABLE `cp_stat` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `gtalk` varchar(124) DEFAULT 'N/A',
  `paypal` varchar(128) NOT NULL,
  `points` int(11) DEFAULT '0',
  `shift` int(11) DEFAULT '0',
  `shift_complete` int(11) DEFAULT '0',
  `shift_partcomplete` int(11) DEFAULT '0',
  `shift_missed` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_stat
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_weekly_reports`
-- ----------------------------
DROP TABLE IF EXISTS `cp_weekly_reports`;
CREATE TABLE `cp_weekly_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `q1` varchar(512) DEFAULT NULL,
  `q2` varchar(512) DEFAULT NULL,
  `q3` varchar(512) DEFAULT NULL,
  `q4` varchar(512) DEFAULT NULL,
  `q5` varchar(512) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cp_weekly_reports
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_whitelist`
-- ----------------------------
DROP TABLE IF EXISTS `cp_whitelist`;
CREATE TABLE `cp_whitelist` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `key` varchar(128) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cp_whitelist
-- ----------------------------

-- ----------------------------
-- Table structure for `crates`
-- ----------------------------
DROP TABLE IF EXISTS `crates`;
CREATE TABLE `crates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Active` int(11) NOT NULL DEFAULT '0',
  `CrateX` float NOT NULL DEFAULT '0',
  `CrateY` float NOT NULL DEFAULT '0',
  `CrateZ` float NOT NULL DEFAULT '0',
  `GunQuantity` int(11) NOT NULL DEFAULT '50',
  `InVehicle` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crates
-- ----------------------------


-- ----------------------------
-- Table structure for `ddoors`
-- ----------------------------
DROP TABLE IF EXISTS `ddoors`;
CREATE TABLE `ddoors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(128) NOT NULL DEFAULT 'None',
  `Owner` int(11) NOT NULL DEFAULT '-1',
  `OwnerName` varchar(24) NOT NULL DEFAULT 'Nobody',
  `CustomInterior` int(11) NOT NULL DEFAULT '0',
  `ExteriorVW` int(11) NOT NULL DEFAULT '0',
  `ExteriorInt` int(11) NOT NULL DEFAULT '0',
  `InteriorVW` int(11) NOT NULL DEFAULT '0',
  `InteriorInt` int(11) NOT NULL DEFAULT '0',
  `ExteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `CustomExterior` int(11) NOT NULL DEFAULT '0',
  `Type` int(1) NOT NULL DEFAULT '0',
  `Rank` int(1) NOT NULL DEFAULT '-1',
  `VIP` int(11) NOT NULL DEFAULT '0',
  `DPC` int(11) NOT NULL DEFAULT '0',
  `Allegiance` int(11) NOT NULL DEFAULT '0',
  `GroupType` int(11) NOT NULL DEFAULT '0',
  `Family` int(11) NOT NULL DEFAULT '0',
  `Faction` int(11) NOT NULL DEFAULT '-1',
  `Admin` int(11) NOT NULL DEFAULT '0',
  `Wanted` int(11) NOT NULL DEFAULT '0',
  `VehicleAble` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `PickupModel` int(11) NOT NULL DEFAULT '0',
  `Pass` varchar(24) NOT NULL DEFAULT 'pass',
  `Locked` int(11) NOT NULL DEFAULT '0',
  `Famed` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ddoors
-- ----------------------------

-- ----------------------------
-- Table structure for `dedi_april`
-- ----------------------------
DROP TABLE IF EXISTS `dedi_april`;
CREATE TABLE `dedi_april` (
  `id` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(255) DEFAULT NULL,
  `RewardHours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dedi_april
-- ----------------------------

-- ----------------------------
-- Table structure for `dm_watchdog`
-- ----------------------------
DROP TABLE IF EXISTS `dm_watchdog`;
CREATE TABLE `dm_watchdog` (
  `id` int(11) NOT NULL DEFAULT '0',
  `reporter` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `superwatch` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dm_watchdog
-- ----------------------------

-- ----------------------------
-- Table structure for `dmapicons`
-- ----------------------------
DROP TABLE IF EXISTS `dmapicons`;
CREATE TABLE `dmapicons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MarkerType` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmapicons
-- ----------------------------

-- ----------------------------
-- Table structure for `families`
-- ----------------------------
DROP TABLE IF EXISTS `families`;
CREATE TABLE `families` (
  `ID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `Taken` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(40) NOT NULL DEFAULT 'None',
  `MOTD` varchar(64) NOT NULL DEFAULT 'None',
  `Leader` varchar(24) NOT NULL DEFAULT 'None',
  `Bank` int(11) NOT NULL DEFAULT '0',
  `Cash` int(11) NOT NULL DEFAULT '0',
  `FamilyUSafe` int(11) NOT NULL DEFAULT '0',
  `FamilySafeX` float(11,5) NOT NULL DEFAULT '0.00000',
  `FamilySafeY` float(11,5) NOT NULL DEFAULT '0.00000',
  `FamilySafeZ` float(11,5) NOT NULL DEFAULT '0.00000',
  `FamilySafeVW` int(11) NOT NULL DEFAULT '-1',
  `FamilySafeInt` int(11) NOT NULL DEFAULT '-1',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Mats` int(11) NOT NULL DEFAULT '0',
  `Rank0` varchar(30) NOT NULL DEFAULT 'Newb',
  `Rank1` varchar(30) NOT NULL DEFAULT 'Outsider',
  `Rank2` varchar(30) NOT NULL DEFAULT 'Associate',
  `Rank3` varchar(30) NOT NULL DEFAULT 'Soldier',
  `Rank4` varchar(30) NOT NULL DEFAULT 'Capo',
  `Rank5` varchar(30) NOT NULL DEFAULT 'Underboss',
  `Rank6` varchar(30) NOT NULL DEFAULT 'Godfather',
  `Members` smallint(6) NOT NULL DEFAULT '0',
  `MaxSkins` tinyint(4) NOT NULL DEFAULT '0',
  `Skin1` int(11) NOT NULL DEFAULT '0',
  `Skin2` int(11) NOT NULL DEFAULT '0',
  `Skin3` int(11) NOT NULL DEFAULT '0',
  `Skin4` int(11) NOT NULL DEFAULT '0',
  `Skin5` int(11) NOT NULL DEFAULT '0',
  `Skin6` int(11) NOT NULL DEFAULT '0',
  `Skin7` int(11) NOT NULL DEFAULT '0',
  `Skin8` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `TurfTokens` int(11) NOT NULL DEFAULT '0',
  `Gun1` tinyint(4) NOT NULL DEFAULT '0',
  `Gun2` tinyint(4) NOT NULL DEFAULT '0',
  `Gun3` tinyint(4) NOT NULL DEFAULT '0',
  `Gun4` tinyint(4) NOT NULL DEFAULT '0',
  `Gun5` tinyint(4) NOT NULL DEFAULT '0',
  `Gun6` tinyint(4) NOT NULL DEFAULT '0',
  `Gun7` tinyint(4) NOT NULL DEFAULT '0',
  `Gun8` tinyint(4) NOT NULL DEFAULT '0',
  `Gun9` tinyint(4) NOT NULL DEFAULT '0',
  `Gun10` tinyint(4) NOT NULL DEFAULT '0',
  `ExteriorX` float(11,5) NOT NULL DEFAULT '0.00000',
  `ExteriorY` float(11,5) NOT NULL DEFAULT '0.00000',
  `ExteriorZ` float(11,5) NOT NULL DEFAULT '0.00000',
  `ExteriorA` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorX` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorY` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorZ` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorA` float(11,5) NOT NULL DEFAULT '0.00000',
  `VW` int(11) NOT NULL DEFAULT '0',
  `INT` int(11) NOT NULL DEFAULT '0',
  `CustomInterior` int(11) NOT NULL DEFAULT '0',
  `Division0` varchar(16) NOT NULL DEFAULT 'none',
  `Division1` varchar(16) NOT NULL DEFAULT 'none',
  `Division2` varchar(16) NOT NULL DEFAULT 'none',
  `Division3` varchar(16) NOT NULL DEFAULT 'none',
  `Division4` varchar(16) NOT NULL DEFAULT 'none',
  `Heroin` int(16) NOT NULL DEFAULT '0',
  `GtObject` int(11) NOT NULL DEFAULT '1490',
  `MOTD1` varchar(128) NOT NULL DEFAULT 'None',
  `MOTD2` varchar(128) NOT NULL DEFAULT 'None',
  `MOTD3` varchar(128) NOT NULL DEFAULT 'None',
  `fontface` varchar(32) NOT NULL DEFAULT 'Arial',
  `fontsize` int(11) NOT NULL DEFAULT '24',
  `bold` int(11) NOT NULL DEFAULT '0',
  `fontcolor` int(32) NOT NULL DEFAULT '-1',
  `backcolor` int(32) NOT NULL DEFAULT '0',
  `text` varchar(32) NOT NULL DEFAULT 'Preview',
  `gtUsed` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of families
-- ----------------------------

-- ----------------------------
-- Table structure for `flags`
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) NOT NULL,
  `flag` varchar(128) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=22042 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of flags
-- ----------------------------

-- ----------------------------
-- Table structure for `gangtags`
-- ----------------------------
DROP TABLE IF EXISTS `gangtags`;
CREATE TABLE `gangtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posx` float(11,4) NOT NULL DEFAULT '0.0000',
  `posy` float(11,4) NOT NULL DEFAULT '0.0000',
  `posz` float(11,4) NOT NULL DEFAULT '0.0000',
  `posrx` float(11,4) NOT NULL DEFAULT '0.0000',
  `posry` float(11,4) NOT NULL DEFAULT '0.0000',
  `posrz` float(11,4) NOT NULL DEFAULT '0.0000',
  `objectid` int(11) NOT NULL DEFAULT '1490',
  `vw` int(11) NOT NULL DEFAULT '0',
  `interior` int(11) NOT NULL DEFAULT '0',
  `family` int(11) NOT NULL DEFAULT '255',
  `used` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gangtags
-- ----------------------------

-- ----------------------------
-- Table structure for `gates`
-- ----------------------------
DROP TABLE IF EXISTS `gates`;
CREATE TABLE `gates` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HID` int(11) NOT NULL DEFAULT '-1',
  `Speed` float NOT NULL DEFAULT '10',
  `Range` float NOT NULL DEFAULT '10',
  `Model` int(11) NOT NULL DEFAULT '18631',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Pass` varchar(24) NOT NULL DEFAULT '',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `RotX` float NOT NULL DEFAULT '0',
  `RotY` float NOT NULL DEFAULT '0',
  `RotZ` float NOT NULL DEFAULT '0',
  `PosXM` float NOT NULL DEFAULT '0',
  `PosYM` float NOT NULL DEFAULT '0',
  `PosZM` float NOT NULL DEFAULT '0',
  `RotXM` float NOT NULL DEFAULT '0',
  `RotYM` float NOT NULL DEFAULT '0',
  `RotZM` float NOT NULL DEFAULT '0',
  `Allegiance` int(11) NOT NULL DEFAULT '0',
  `GroupType` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(2) NOT NULL DEFAULT '-1',
  `FamilyID` int(2) NOT NULL DEFAULT '-1',
  `RenderHQ` int(11) NOT NULL DEFAULT '1',
  `Timer` int(1) NOT NULL DEFAULT '0',
  `Automate` int(1) NOT NULL DEFAULT '0',
  `Locked` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gates
-- ----------------------------

-- ----------------------------
-- Table structure for `giftbox`
-- ----------------------------
DROP TABLE IF EXISTS `giftbox`;
CREATE TABLE `giftbox` (
  `dgMoney0` int(11) DEFAULT '0',
  `dgFirework0` int(11) DEFAULT '0',
  `dgGVIP0` int(11) DEFAULT '0',
  `dgSVIP0` int(11) DEFAULT '0',
  `dgGVIPEx0` int(11) DEFAULT '0',
  `dgSVIPEx0` int(11) DEFAULT '0',
  `dgCarSlot0` int(11) DEFAULT '0',
  `dgToySlot0` int(11) DEFAULT '0',
  `dgArmor0` int(11) DEFAULT '0',
  `dgFirstaid0` int(11) DEFAULT '0',
  `dgRimKit0` int(11) DEFAULT '0',
  `dgDDFlag0` int(11) DEFAULT '0',
  `dgGateFlag0` int(11) DEFAULT '0',
  `dgCredits0` int(11) DEFAULT '0',
  `dgPriorityAd0` int(11) DEFAULT '0',
  `dgHealthNArmor0` int(11) DEFAULT '0',
  `dgGiftReset0` int(11) DEFAULT '0',
  `dgMaterial0` int(11) DEFAULT '0',
  `dgWarning0` int(11) DEFAULT '0',
  `dgPot0` int(11) DEFAULT '0',
  `dgCrack0` int(11) DEFAULT '0',
  `dgPaintballToken0` int(11) DEFAULT '0',
  `dgVIPToken0` int(11) DEFAULT '0',
  `dgRespectPoint0` int(11) DEFAULT '0',
  `dgCarVoucher0` int(11) DEFAULT '0',
  `dgBuddyInvite0` int(11) DEFAULT '0',
  `dgLaser0` int(11) DEFAULT '0',
  `dgCustomToy0` int(11) DEFAULT '0',
  `dgAdmuteReset0` int(11) DEFAULT '0',
  `dgNewbieMuteReset0` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher0` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher0` int(11) DEFAULT '0',
  `dgMoney1` int(11) DEFAULT '0',
  `dgFirework1` int(11) DEFAULT '0',
  `dgGVIP1` int(11) DEFAULT '0',
  `dgSVIP1` int(11) DEFAULT '0',
  `dgGVIPEx1` int(11) DEFAULT '0',
  `dgSVIPEx1` int(11) DEFAULT '0',
  `dgCarSlot1` int(11) DEFAULT '0',
  `dgToySlot1` int(11) DEFAULT '0',
  `dgArmor1` int(11) DEFAULT '0',
  `dgFirstaid1` int(11) DEFAULT '0',
  `dgRimKit1` int(11) DEFAULT '0',
  `dgDDFlag1` int(11) DEFAULT '0',
  `dgGateFlag1` int(11) DEFAULT '0',
  `dgCredits1` int(11) DEFAULT '0',
  `dgPriorityAd1` int(11) DEFAULT '0',
  `dgHealthNArmor1` int(11) DEFAULT '0',
  `dgGiftReset1` int(11) DEFAULT '0',
  `dgMaterial1` int(11) DEFAULT '0',
  `dgWarning1` int(11) DEFAULT '0',
  `dgPot1` int(11) DEFAULT '0',
  `dgCrack1` int(11) DEFAULT '0',
  `dgPaintballToken1` int(11) DEFAULT '0',
  `dgVIPToken1` int(11) DEFAULT '0',
  `dgRespectPoint1` int(11) DEFAULT '0',
  `dgCarVoucher1` int(11) DEFAULT '0',
  `dgBuddyInvite1` int(11) DEFAULT '0',
  `dgLaser1` int(11) DEFAULT '0',
  `dgCustomToy1` int(11) DEFAULT '0',
  `dgAdmuteReset1` int(11) DEFAULT '0',
  `dgNewbieMuteReset1` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher1` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher1` int(11) DEFAULT '0',
  `dgMoney2` int(11) DEFAULT '0',
  `dgFirework2` int(11) DEFAULT '0',
  `dgGVIP2` int(11) DEFAULT '0',
  `dgSVIP2` int(11) DEFAULT '0',
  `dgGVIPEx2` int(11) DEFAULT '0',
  `dgSVIPEx2` int(11) DEFAULT '0',
  `dgCarSlot2` int(11) DEFAULT '0',
  `dgToySlot2` int(11) DEFAULT '0',
  `dgArmor2` int(11) DEFAULT '0',
  `dgFirstaid2` int(11) DEFAULT '0',
  `dgRimKit2` int(11) DEFAULT '0',
  `dgDDFlag2` int(11) DEFAULT '0',
  `dgGateFlag2` int(11) DEFAULT '0',
  `dgCredits2` int(11) DEFAULT '0',
  `dgPriorityAd2` int(11) DEFAULT '0',
  `dgHealthNArmor2` int(11) DEFAULT '0',
  `dgGiftReset2` int(11) DEFAULT '0',
  `dgMaterial2` int(11) DEFAULT '0',
  `dgWarning2` int(11) DEFAULT '0',
  `dgPot2` int(11) DEFAULT '0',
  `dgCrack2` int(11) DEFAULT '0',
  `dgPaintballToken2` int(11) DEFAULT '0',
  `dgVIPToken2` int(11) DEFAULT '0',
  `dgRespectPoint2` int(11) DEFAULT '0',
  `dgCarVoucher2` int(11) DEFAULT '0',
  `dgBuddyInvite2` int(11) DEFAULT '0',
  `dgLaser2` int(11) DEFAULT '0',
  `dgCustomToy2` int(11) DEFAULT '0',
  `dgAdmuteReset2` int(11) DEFAULT '0',
  `dgNewbieMuteReset2` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher2` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher2` int(11) DEFAULT '0',
  `dgMoney3` int(11) DEFAULT '0',
  `dgRimKit3` int(11) DEFAULT '0',
  `dgFirework3` int(11) DEFAULT '0',
  `dgGVIP3` int(11) DEFAULT '0',
  `dgGVIPEx3` int(11) DEFAULT '0',
  `dgSVIP3` int(11) DEFAULT '0',
  `dgSVIPEx3` int(11) DEFAULT '0',
  `dgCarSlot3` int(11) DEFAULT '0',
  `dgToySlot3` int(11) DEFAULT '0',
  `dgArmor3` int(11) DEFAULT '0',
  `dgFirstaid3` int(11) DEFAULT '0',
  `dgDDFlag3` int(11) DEFAULT '0',
  `dgGateFlag3` int(11) DEFAULT '0',
  `dgCredits3` int(11) DEFAULT '0',
  `dgPriorityAd3` int(11) DEFAULT '0',
  `dgHealthNArmor3` int(11) DEFAULT '0',
  `dgGiftReset3` int(11) DEFAULT '0',
  `dgMaterial3` int(11) DEFAULT '0',
  `dgWarning3` int(11) DEFAULT '0',
  `dgPot3` int(11) DEFAULT '0',
  `dgCrack3` int(11) DEFAULT '0',
  `dgPaintballToken3` int(11) DEFAULT '0',
  `dgVIPToken3` int(11) DEFAULT '0',
  `dgRespectPoint3` int(11) DEFAULT '0',
  `dgCarVoucher3` int(11) DEFAULT '0',
  `dgBuddyInvite3` int(11) DEFAULT '0',
  `dgLaser3` int(11) DEFAULT '0',
  `dgCustomToy3` int(11) DEFAULT '0',
  `dgAdmuteReset3` int(11) DEFAULT '0',
  `dgNewbieMuteReset3` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher3` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher3` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of giftbox
-- ----------------------------

-- ----------------------------
-- Table structure for `groupbans`
-- ----------------------------
DROP TABLE IF EXISTS `groupbans`;
CREATE TABLE `groupbans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TypeBan` int(11) NOT NULL DEFAULT '-1',
  `PlayerID` int(11) NOT NULL DEFAULT '-1',
  `BanDate` datetime NOT NULL DEFAULT '2001-01-12 00:00:00',
  `GroupBan` int(11) NOT NULL DEFAULT '-1',
  `BannedBy` varchar(24) NOT NULL DEFAULT '',
  `BanReason` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupbans
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) NOT NULL DEFAULT '0',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `MOTD` varchar(128) NOT NULL DEFAULT '',
  `Allegiance` tinyint(4) NOT NULL DEFAULT '0',
  `Bug` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `Radio` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `DeptRadio` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `GovAnnouncement` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `SpikeStrips` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `Barricades` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `Cones` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `Flares` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `Barrels` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `FreeNameChange` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `CrateIslandAccess` tinyint(4) unsigned NOT NULL DEFAULT '255',
  `DutyColour` mediumint(8) unsigned NOT NULL DEFAULT '16777215',
  `RadioColour` mediumint(8) unsigned NOT NULL DEFAULT '16777215',
  `Budget` int(11) NOT NULL DEFAULT '0',
  `BudgetPayment` int(11) NOT NULL DEFAULT '0',
  `Stock` int(11) NOT NULL DEFAULT '0',
  `LockerCostType` int(11) NOT NULL,
  `CrateX` float NOT NULL DEFAULT '0',
  `CrateY` float NOT NULL DEFAULT '0',
  `CrateZ` float NOT NULL DEFAULT '0',
  `Rank0` varchar(30) NOT NULL DEFAULT '',
  `Rank1` varchar(30) NOT NULL DEFAULT '',
  `Rank2` varchar(30) NOT NULL DEFAULT '',
  `Rank3` varchar(30) NOT NULL DEFAULT '',
  `Rank4` varchar(30) NOT NULL DEFAULT '',
  `Rank5` varchar(30) NOT NULL DEFAULT '',
  `Rank6` varchar(30) NOT NULL DEFAULT '',
  `Rank7` varchar(30) NOT NULL DEFAULT '',
  `Rank8` varchar(30) NOT NULL DEFAULT '',
  `Rank9` varchar(30) NOT NULL DEFAULT '',
  `Rank0Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank1Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank2Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank3Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank4Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank5Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank6Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank7Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank8Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Rank9Pay` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Div0` varchar(30) NOT NULL,
  `Div1` varchar(16) NOT NULL DEFAULT '',
  `Div2` varchar(16) NOT NULL DEFAULT '',
  `Div3` varchar(16) NOT NULL DEFAULT '',
  `Div4` varchar(16) NOT NULL DEFAULT '',
  `Div5` varchar(16) NOT NULL DEFAULT '',
  `Div6` varchar(16) NOT NULL DEFAULT '',
  `Div7` varchar(16) NOT NULL DEFAULT '',
  `Div8` varchar(16) NOT NULL DEFAULT '',
  `Div9` varchar(16) NOT NULL DEFAULT '',
  `Div10` varchar(16) NOT NULL DEFAULT '',
  `Gun0` tinyint(4) NOT NULL,
  `Cost0` int(11) NOT NULL,
  `Gun1` tinyint(4) NOT NULL DEFAULT '0',
  `Cost1` int(11) NOT NULL DEFAULT '0',
  `Gun2` tinyint(4) NOT NULL DEFAULT '0',
  `Cost2` int(11) NOT NULL DEFAULT '0',
  `Gun3` tinyint(4) NOT NULL DEFAULT '0',
  `Cost3` int(11) NOT NULL DEFAULT '0',
  `Gun4` tinyint(4) NOT NULL DEFAULT '0',
  `Cost4` int(11) NOT NULL DEFAULT '0',
  `Gun5` tinyint(4) NOT NULL DEFAULT '0',
  `Cost5` int(11) NOT NULL DEFAULT '0',
  `Gun6` tinyint(4) NOT NULL DEFAULT '0',
  `Cost6` int(11) NOT NULL DEFAULT '0',
  `Gun7` tinyint(4) NOT NULL DEFAULT '0',
  `Cost7` int(11) NOT NULL DEFAULT '0',
  `Gun8` tinyint(4) NOT NULL DEFAULT '0',
  `Cost8` int(11) NOT NULL DEFAULT '0',
  `Gun9` tinyint(4) NOT NULL DEFAULT '0',
  `Cost9` int(11) NOT NULL DEFAULT '0',
  `Gun10` tinyint(4) NOT NULL DEFAULT '0',
  `Cost10` int(11) NOT NULL DEFAULT '0',
  `Gun11` tinyint(4) NOT NULL DEFAULT '0',
  `Cost11` int(11) NOT NULL DEFAULT '0',
  `Gun12` tinyint(4) NOT NULL DEFAULT '0',
  `Cost12` int(11) NOT NULL DEFAULT '0',
  `Gun13` tinyint(4) NOT NULL DEFAULT '0',
  `Cost13` int(11) NOT NULL DEFAULT '0',
  `Gun14` tinyint(4) NOT NULL DEFAULT '0',
  `Cost14` int(11) NOT NULL DEFAULT '0',
  `Gun15` tinyint(4) NOT NULL DEFAULT '0',
  `Cost15` int(11) NOT NULL DEFAULT '0',
  `Gun16` int(11) NOT NULL DEFAULT '0',
  `Cost16` int(11) NOT NULL DEFAULT '0',
  `CratesOrder` int(11) NOT NULL DEFAULT '0',
  `CrateIsland` int(4) NOT NULL DEFAULT '255',
  `IntRadio` int(11) NOT NULL DEFAULT '255',
  `GarageX` float(11,0) NOT NULL DEFAULT '0',
  `GarageY` float(11,0) NOT NULL DEFAULT '0',
  `GarageZ` float(11,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `groupvehs`
-- ----------------------------
DROP TABLE IF EXISTS `groupvehs`;
CREATE TABLE `groupvehs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SpawnedID` int(11) NOT NULL DEFAULT '65535',
  `vDisabled` tinyint(4) NOT NULL DEFAULT '0',
  `gID` int(11) NOT NULL DEFAULT '-1',
  `gDivID` int(11) NOT NULL DEFAULT '0',
  `vModel` int(11) NOT NULL DEFAULT '0',
  `vPlate` varchar(32) NOT NULL,
  `vMaxHealth` float NOT NULL DEFAULT '1000',
  `vFuel` int(11) NOT NULL DEFAULT '100',
  `vType` int(11) NOT NULL DEFAULT '0',
  `vLoadMax` int(11) NOT NULL DEFAULT '2',
  `vCol1` int(11) NOT NULL DEFAULT '0',
  `vCol2` int(11) NOT NULL DEFAULT '0',
  `vX` float NOT NULL DEFAULT '0',
  `vY` float NOT NULL DEFAULT '0',
  `vZ` float NOT NULL DEFAULT '0',
  `vRotZ` float NOT NULL DEFAULT '0',
  `vUpkeep` int(11) NOT NULL DEFAULT '0',
  `vMod0` int(11) NOT NULL DEFAULT '0',
  `vMod1` int(11) NOT NULL DEFAULT '0',
  `vMod2` int(11) NOT NULL DEFAULT '0',
  `vMod3` int(11) NOT NULL DEFAULT '0',
  `vMod4` int(11) NOT NULL DEFAULT '0',
  `vMod5` int(11) NOT NULL DEFAULT '0',
  `vMod6` int(11) NOT NULL DEFAULT '0',
  `vMod7` int(11) NOT NULL DEFAULT '0',
  `vMod8` int(11) NOT NULL DEFAULT '0',
  `vMod9` int(11) NOT NULL DEFAULT '0',
  `vMod10` int(11) NOT NULL DEFAULT '0',
  `vMod11` int(11) NOT NULL DEFAULT '0',
  `vMod12` int(11) NOT NULL DEFAULT '0',
  `vMod13` int(11) NOT NULL DEFAULT '0',
  `vMod14` int(11) NOT NULL DEFAULT '0',
  `vAttachedObjectModel1` int(11) NOT NULL DEFAULT '65535',
  `vObjectX1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectY1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectZ1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRX1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRY1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRZ1` float(11,2) NOT NULL DEFAULT '0.00',
  `vAttachedObjectModel2` int(11) NOT NULL DEFAULT '65535',
  `vObjectX2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectY2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectZ2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRX2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRY2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRZ2` float(11,2) NOT NULL DEFAULT '0.00',
  `vVW` int(11) NOT NULL DEFAULT '0',
  `vInt` int(11) NOT NULL DEFAULT '0',
  `rID` int(11) NOT NULL DEFAULT '0',
  `fID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=700 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of groupvehs
-- ----------------------------

-- ----------------------------
-- Table structure for `help`
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `subtype` int(11) NOT NULL DEFAULT '0',
  `perms` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help
-- ----------------------------

-- ----------------------------
-- Table structure for `hgbackpacks`
-- ----------------------------
DROP TABLE IF EXISTS `hgbackpacks`;
CREATE TABLE `hgbackpacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `posx` float(20,0) NOT NULL,
  `posy` float(20,0) NOT NULL,
  `posz` float(20,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hgbackpacks
-- ----------------------------

-- ----------------------------
-- Table structure for `house_closet`
-- ----------------------------
DROP TABLE IF EXISTS `house_closet`;
CREATE TABLE `house_closet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `skinid` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house_closet
-- ----------------------------

-- ----------------------------
-- Table structure for `houses`
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owned` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '999',
  `Description` varchar(16) NOT NULL DEFAULT 'High',
  `OwnerID` int(11) NOT NULL DEFAULT '-1',
  `OwnerName` varchar(24) NOT NULL DEFAULT 'Nobody',
  `Owner` varchar(24) NOT NULL DEFAULT 'No-Owner',
  `ExteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorR` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorR` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExtIW` int(11) NOT NULL DEFAULT '0',
  `ExtVW` int(11) NOT NULL DEFAULT '0',
  `IntIW` int(11) NOT NULL DEFAULT '9',
  `IntVW` int(11) NOT NULL DEFAULT '0',
  `Lock` int(11) NOT NULL DEFAULT '0',
  `Rentable` int(11) NOT NULL DEFAULT '0',
  `RentFee` int(11) NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `SafeMoney` int(11) NOT NULL DEFAULT '0',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Weapons0` int(11) NOT NULL DEFAULT '0',
  `Weapons1` int(11) NOT NULL DEFAULT '0',
  `Weapons2` int(11) NOT NULL DEFAULT '0',
  `Weapons3` int(11) NOT NULL DEFAULT '0',
  `Weapons4` int(11) NOT NULL DEFAULT '0',
  `GLUpgrade` int(11) NOT NULL DEFAULT '0',
  `PickupID` int(11) NOT NULL DEFAULT '0',
  `CustomInterior` int(11) NOT NULL DEFAULT '0',
  `CustomExterior` int(11) NOT NULL DEFAULT '0',
  `ExteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailX` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailY` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailA` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailType` tinyint(4) NOT NULL DEFAULT '0',
  `Heroin` int(11) NOT NULL DEFAULT '0',
  `ClosetX` float(10,5) NOT NULL DEFAULT '0.00000',
  `ClosetY` float(10,5) NOT NULL DEFAULT '0.00000',
  `ClosetZ` float(10,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houses
-- ----------------------------

-- ----------------------------
-- Table structure for `humankills`
-- ----------------------------
DROP TABLE IF EXISTS `humankills`;
CREATE TABLE `humankills` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of humankills
-- ----------------------------

-- ----------------------------
-- Table structure for `impoundpoints`
-- ----------------------------
DROP TABLE IF EXISTS `impoundpoints`;
CREATE TABLE `impoundpoints` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(5) NOT NULL DEFAULT '0',
  `Int` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of impoundpoints
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_bans`
-- ----------------------------
DROP TABLE IF EXISTS `ip_bans`;
CREATE TABLE `ip_bans` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) NOT NULL,
  `date` datetime NOT NULL,
  `reason` varchar(128) NOT NULL,
  `admin` varchar(32) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=41229 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ip_bans
-- ----------------------------

-- ----------------------------
-- Table structure for `jobstuff`
-- ----------------------------
DROP TABLE IF EXISTS `jobstuff`;
CREATE TABLE `jobstuff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pId` int(11) NOT NULL,
  `junkmetal` int(11) NOT NULL DEFAULT '0',
  `newcoin` int(11) NOT NULL DEFAULT '0',
  `oldcoin` int(11) NOT NULL DEFAULT '0',
  `brokenwatch` int(11) NOT NULL DEFAULT '0',
  `oldkey` int(11) NOT NULL DEFAULT '0',
  `treasure` int(11) NOT NULL DEFAULT '0',
  `goldwatch` int(11) NOT NULL DEFAULT '0',
  `silvernugget` int(11) NOT NULL DEFAULT '0',
  `goldnugget` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71603 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jobstuff
-- ----------------------------

-- ----------------------------
-- Table structure for `jurisdictions`
-- ----------------------------
DROP TABLE IF EXISTS `jurisdictions`;
CREATE TABLE `jurisdictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `AreaName` varchar(64) DEFAULT NULL,
  `JurisdictionID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jurisdictions
-- ----------------------------

-- ----------------------------
-- Table structure for `kills`
-- ----------------------------
DROP TABLE IF EXISTS `kills`;
CREATE TABLE `kills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `killerid` int(11) NOT NULL DEFAULT '-1',
  `killedid` int(11) NOT NULL DEFAULT '-1',
  `date` datetime DEFAULT NULL,
  `weapon` varchar(56) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1838005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kills
-- ----------------------------
-- ----------------------------
-- Table structure for `leaderboards`
-- ----------------------------
DROP TABLE IF EXISTS `leaderboards`;
CREATE TABLE `leaderboards` (
  `Username` varchar(36) NOT NULL DEFAULT 'None',
  `seconds` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaderboards
-- ----------------------------

-- ----------------------------
-- Table structure for `letters`
-- ----------------------------
DROP TABLE IF EXISTS `letters`;
CREATE TABLE `letters` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sender_Id` int(11) DEFAULT NULL,
  `Receiver_Id` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  `Notify` varchar(1) DEFAULT NULL,
  `Delivery_Min` int(11) DEFAULT NULL,
  `Read` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2266 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of letters
-- ----------------------------

-- ----------------------------
-- Table structure for `lockers`
-- ----------------------------
DROP TABLE IF EXISTS `lockers`;
CREATE TABLE `lockers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Group_ID` int(11) NOT NULL DEFAULT '-1',
  `Locker_ID` int(11) NOT NULL,
  `LockerX` float NOT NULL DEFAULT '0',
  `LockerY` float NOT NULL DEFAULT '0',
  `LockerZ` float NOT NULL DEFAULT '0',
  `LockerVW` int(11) NOT NULL DEFAULT '0',
  `LockerShare` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lockers
-- ----------------------------

-- ----------------------------
-- Table structure for `login_strikes`
-- ----------------------------
DROP TABLE IF EXISTS `login_strikes`;
CREATE TABLE `login_strikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_strikes
-- ----------------------------

-- ----------------------------
-- Table structure for `lotto`
-- ----------------------------
DROP TABLE IF EXISTS `lotto`;
CREATE TABLE `lotto` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=140854 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lotto
-- ----------------------------

-- ----------------------------
-- Table structure for `mailboxes`
-- ----------------------------
DROP TABLE IF EXISTS `mailboxes`;
CREATE TABLE `mailboxes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Model` int(11) NOT NULL DEFAULT '3407',
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `Angle` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mailboxes
-- ----------------------------

-- ----------------------------
-- Table structure for `mdc`
-- ----------------------------
DROP TABLE IF EXISTS `mdc`;
CREATE TABLE `mdc` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) NOT NULL,
  `crime` varchar(128) NOT NULL,
  `active` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=154287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mdc
-- ----------------------------

-- ----------------------------
-- Table structure for `misc`
-- ----------------------------
DROP TABLE IF EXISTS `misc`;
CREATE TABLE `misc` (
  `gMOTD` varchar(256) NOT NULL,
  `aMOTD` varchar(256) NOT NULL,
  `vMOTD` varchar(256) NOT NULL,
  `cMOTD` varchar(256) NOT NULL,
  `pMOTD` varchar(256) NOT NULL,
  `ShopTechPay` float(11,1) NOT NULL DEFAULT '0.5',
  `Safe` int(11) NOT NULL DEFAULT '0',
  `TicketsSold` int(11) NOT NULL DEFAULT '0',
  `GiftCode` varchar(32) NOT NULL DEFAULT 'off',
  `GiftCodeBypass` int(11) NOT NULL DEFAULT '0',
  `TotalCitizens` int(11) NOT NULL DEFAULT '0',
  `TRCitizens` int(11) NOT NULL DEFAULT '0',
  `SecurityCode` varchar(128) NOT NULL,
  `ShopClosed` int(11) NOT NULL DEFAULT '0',
  `RimMod` int(11) NOT NULL DEFAULT '0',
  `CarVoucher` int(11) NOT NULL DEFAULT '0',
  `PVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `PVIPAmount` int(11) NOT NULL DEFAULT '0',
  `GarageVW` int(11) NOT NULL DEFAULT '0',
  `PumpkinStock` int(11) NOT NULL DEFAULT '0',
  `HalloweenShop` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of misc
-- ----------------------------

-- ----------------------------
-- Table structure for `nation_queue`
-- ----------------------------
DROP TABLE IF EXISTS `nation_queue`;
CREATE TABLE `nation_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `date` datetime NOT NULL,
  `nation` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nation_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `paynsprays`
-- ----------------------------
DROP TABLE IF EXISTS `paynsprays`;
CREATE TABLE `paynsprays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Status` int(1) NOT NULL DEFAULT '0',
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `GroupCost` int(11) NOT NULL DEFAULT '0',
  `RegCost` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paynsprays
-- ----------------------------

-- ----------------------------
-- Table structure for `plants`
-- ----------------------------
DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants` (
  `plantID` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` int(11) NOT NULL DEFAULT '0',
  `Object` int(11) NOT NULL DEFAULT '0',
  `PlantType` int(11) NOT NULL DEFAULT '0',
  `PositionX` float NOT NULL DEFAULT '0',
  `PositionY` float NOT NULL DEFAULT '0',
  `PositionZ` float NOT NULL DEFAULT '0',
  `Virtual` int(11) NOT NULL DEFAULT '0',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `Growth` int(11) NOT NULL DEFAULT '0',
  `Expires` int(11) NOT NULL DEFAULT '0',
  `DrugsSkill` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`plantID`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plants
-- ----------------------------

-- ----------------------------
-- Table structure for `playerbusinesscars`
-- ----------------------------
DROP TABLE IF EXISTS `playerbusinesscars`;
CREATE TABLE `playerbusinesscars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(11) NOT NULL DEFAULT '0',
  `Business` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) unsigned NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `Color2` int(11) NOT NULL DEFAULT '0',
  `PositionX` float NOT NULL DEFAULT '0',
  `PositionY` float NOT NULL DEFAULT '0',
  `PositionZ` float NOT NULL DEFAULT '0',
  `PositionA` float NOT NULL DEFAULT '0',
  `Text` varchar(128) NOT NULL DEFAULT 'None',
  `Mod0` int(11) NOT NULL DEFAULT '0',
  `Mod1` int(11) NOT NULL DEFAULT '0',
  `Mod2` int(11) NOT NULL DEFAULT '0',
  `Mod3` int(11) NOT NULL DEFAULT '0',
  `Mod4` int(11) NOT NULL DEFAULT '0',
  `Mod5` int(11) NOT NULL DEFAULT '0',
  `Mod6` int(11) NOT NULL DEFAULT '0',
  `Mod7` int(11) NOT NULL DEFAULT '0',
  `Mod8` int(11) NOT NULL DEFAULT '0',
  `Mod9` int(11) NOT NULL DEFAULT '0',
  `Mod10` int(11) NOT NULL DEFAULT '0',
  `Mod11` int(11) NOT NULL DEFAULT '0',
  `Mod12` int(11) NOT NULL DEFAULT '0',
  `Mod13` int(11) NOT NULL DEFAULT '0',
  `Mod14` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerbusinesscars
-- ----------------------------

-- ----------------------------
-- Table structure for `playerbusinesses`
-- ----------------------------
DROP TABLE IF EXISTS `playerbusinesses`;
CREATE TABLE `playerbusinesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '0',
  `Nation` int(11) NOT NULL DEFAULT '0',
  `EntranceX` float NOT NULL DEFAULT '0',
  `EntranceY` float NOT NULL DEFAULT '0',
  `EntranceZ` float NOT NULL DEFAULT '0',
  `EntranceA` float NOT NULL DEFAULT '0',
  `ExitX` float NOT NULL DEFAULT '0',
  `ExitY` float NOT NULL DEFAULT '0',
  `ExitZ` float NOT NULL DEFAULT '0',
  `ExitA` float NOT NULL DEFAULT '0',
  `InteriorExt` int(11) NOT NULL DEFAULT '0',
  `InteriorInt` int(11) NOT NULL DEFAULT '0',
  `WorldExt` int(11) NOT NULL DEFAULT '0',
  `WorldInt` int(11) NOT NULL DEFAULT '0',
  `Price0` int(11) NOT NULL DEFAULT '0',
  `Price1` int(11) NOT NULL DEFAULT '0',
  `Price2` int(11) NOT NULL DEFAULT '0',
  `Price3` int(11) NOT NULL DEFAULT '0',
  `Price4` int(11) NOT NULL DEFAULT '0',
  `Price5` int(11) NOT NULL DEFAULT '0',
  `Price6` int(11) NOT NULL DEFAULT '0',
  `Price7` int(11) NOT NULL DEFAULT '0',
  `Price8` int(11) NOT NULL DEFAULT '0',
  `Price9` int(11) NOT NULL DEFAULT '0',
  `Price10` int(11) NOT NULL DEFAULT '0',
  `Price11` int(11) NOT NULL DEFAULT '0',
  `Price12` int(11) NOT NULL DEFAULT '0',
  `Price13` int(11) NOT NULL DEFAULT '0',
  `Price14` int(11) NOT NULL DEFAULT '0',
  `Price15` int(11) NOT NULL DEFAULT '0',
  `Price16` int(11) NOT NULL DEFAULT '0',
  `Price17` int(11) NOT NULL DEFAULT '0',
  `Price18` int(10) NOT NULL DEFAULT '0',
  `Price19` int(11) NOT NULL DEFAULT '0',
  `Price20` int(11) NOT NULL DEFAULT '0',
  `CustomExt` int(11) NOT NULL DEFAULT '0',
  `CustomInt` int(11) NOT NULL DEFAULT '0',
  `Rank0` varchar(32) NOT NULL DEFAULT 'None',
  `Rank1` varchar(32) NOT NULL DEFAULT 'None',
  `Rank2` varchar(32) NOT NULL DEFAULT 'None',
  `Rank3` varchar(32) NOT NULL DEFAULT 'None',
  `Rank4` varchar(32) NOT NULL DEFAULT 'None',
  `Rank5` varchar(32) NOT NULL DEFAULT 'None',
  `Rank6` varchar(32) NOT NULL DEFAULT 'None',
  `Rank7` varchar(32) NOT NULL DEFAULT 'None',
  `Rank8` varchar(32) NOT NULL DEFAULT 'None',
  `Rank9` varchar(32) NOT NULL DEFAULT 'None',
  `Name` varchar(45) NOT NULL DEFAULT 'None',
  `Level` int(11) NOT NULL DEFAULT '1',
  `Inventory` int(11) NOT NULL DEFAULT '0',
  `Bank` int(11) NOT NULL DEFAULT '0',
  `Sold` int(11) NOT NULL DEFAULT '0',
  `Pay` int(11) NOT NULL DEFAULT '0',
  `OrderState` int(11) NOT NULL DEFAULT '0',
  `OrderAmount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerbusinesses
-- ----------------------------

-- ----------------------------
-- Table structure for `points`
-- ----------------------------
DROP TABLE IF EXISTS `points`;
CREATE TABLE `points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posx` float(20,5) NOT NULL DEFAULT '0.00000',
  `posy` float(20,5) NOT NULL DEFAULT '0.00000',
  `posz` float(20,5) NOT NULL DEFAULT '0.00000',
  `vw` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `vulnerable` int(11) NOT NULL DEFAULT '0',
  `matpoint` int(11) NOT NULL DEFAULT '0',
  `owner` varchar(128) DEFAULT NULL,
  `cappername` varchar(24) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `captime` int(11) NOT NULL DEFAULT '0',
  `capfam` int(11) NOT NULL DEFAULT '255',
  `capname` varchar(24) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of points
-- ----------------------------

-- ----------------------------
-- Table structure for `pvehpositions`
-- ----------------------------
DROP TABLE IF EXISTS `pvehpositions`;
CREATE TABLE `pvehpositions` (
  `id` int(11) NOT NULL DEFAULT '-1',
  `pv0ModelId` int(11) NOT NULL DEFAULT '0',
  `pv0PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv0PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv0PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv0PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1ModelId` int(11) NOT NULL DEFAULT '0',
  `pv1PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2ModelId` int(11) NOT NULL DEFAULT '0',
  `pv2PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3ModelId` int(11) NOT NULL DEFAULT '0',
  `pv3PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4ModelId` int(11) NOT NULL DEFAULT '0',
  `pv4PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5ModelId` int(11) NOT NULL DEFAULT '0',
  `pv5PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6ModelId` int(11) NOT NULL DEFAULT '0',
  `pv6PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7ModelId` int(11) NOT NULL DEFAULT '0',
  `pv7PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8ModelId` int(11) NOT NULL DEFAULT '0',
  `pv8PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9ModelId` int(11) NOT NULL DEFAULT '0',
  `pv9PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pvehpositions
-- ----------------------------

-- ----------------------------
-- Table structure for `rentedcars`
-- ----------------------------
DROP TABLE IF EXISTS `rentedcars`;
CREATE TABLE `rentedcars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlid` int(11) DEFAULT '0',
  `modelid` int(11) DEFAULT '0',
  `posx` float DEFAULT '0',
  `posy` float DEFAULT '0',
  `posz` float DEFAULT '0',
  `posa` float DEFAULT '0',
  `spawned` int(11) DEFAULT '0',
  `hours` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentedcars
-- ----------------------------

-- ----------------------------
-- Table structure for `resupplypoints`
-- ----------------------------
DROP TABLE IF EXISTS `resupplypoints`;
CREATE TABLE `resupplypoints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Business` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `EntranceX` float NOT NULL DEFAULT '0',
  `EntranceY` float NOT NULL DEFAULT '0',
  `EntranceZ` float NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resupplypoints
-- ----------------------------

-- ----------------------------
-- Table structure for `rewardcalc`
-- ----------------------------
DROP TABLE IF EXISTS `rewardcalc`;
CREATE TABLE `rewardcalc` (
  `pID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rewardcalc
-- ----------------------------

-- ----------------------------
-- Table structure for `rflteams`
-- ----------------------------
DROP TABLE IF EXISTS `rflteams`;
CREATE TABLE `rflteams` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT 'Not Used',
  `used` int(2) NOT NULL DEFAULT '0',
  `laps` int(5) NOT NULL DEFAULT '0',
  `leader` varchar(26) NOT NULL DEFAULT 'None',
  `members` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rflteams
-- ----------------------------

-- ----------------------------
-- Table structure for `sales`
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Month` datetime NOT NULL,
  `TotalSold0` int(11) NOT NULL DEFAULT '0',
  `AmountMade0` int(11) NOT NULL DEFAULT '0',
  `TotalSold1` int(11) NOT NULL DEFAULT '0',
  `AmountMade1` int(11) NOT NULL DEFAULT '0',
  `TotalSold2` int(11) NOT NULL DEFAULT '0',
  `AmountMade2` int(11) NOT NULL DEFAULT '0',
  `TotalSold3` int(11) NOT NULL DEFAULT '0',
  `AmountMade3` int(11) NOT NULL DEFAULT '0',
  `TotalSold4` int(11) NOT NULL DEFAULT '0',
  `AmountMade4` int(11) NOT NULL DEFAULT '0',
  `TotalSold5` int(11) NOT NULL DEFAULT '0',
  `AmountMade5` int(11) NOT NULL DEFAULT '0',
  `TotalSold6` int(11) NOT NULL DEFAULT '0',
  `AmountMade6` int(11) NOT NULL DEFAULT '0',
  `TotalSold7` int(11) NOT NULL DEFAULT '0',
  `AmountMade7` int(11) NOT NULL DEFAULT '0',
  `TotalSold8` int(11) NOT NULL DEFAULT '0',
  `AmountMade8` int(11) NOT NULL DEFAULT '0',
  `TotalSold9` int(11) NOT NULL DEFAULT '0',
  `AmountMade9` int(11) NOT NULL DEFAULT '0',
  `TotalSold10` int(11) NOT NULL DEFAULT '0',
  `AmountMade10` int(11) NOT NULL DEFAULT '0',
  `TotalSold11` int(11) NOT NULL DEFAULT '0',
  `AmountMade11` int(11) NOT NULL DEFAULT '0',
  `TotalSold12` int(11) NOT NULL DEFAULT '0',
  `AmountMade12` int(11) NOT NULL DEFAULT '0',
  `TotalSold13` int(11) NOT NULL DEFAULT '0',
  `AmountMade13` int(11) NOT NULL DEFAULT '0',
  `TotalSold14` int(11) NOT NULL DEFAULT '0',
  `AmountMade14` int(11) NOT NULL DEFAULT '0',
  `TotalSold15` int(11) NOT NULL DEFAULT '0',
  `AmountMade15` int(11) NOT NULL DEFAULT '0',
  `TotalSold16` int(11) NOT NULL DEFAULT '0',
  `AmountMade16` int(11) NOT NULL DEFAULT '0',
  `TotalSold17` int(11) NOT NULL DEFAULT '0',
  `AmountMade17` int(11) NOT NULL DEFAULT '0',
  `TotalSold18` int(11) NOT NULL DEFAULT '0',
  `AmountMade18` int(11) NOT NULL DEFAULT '0',
  `TotalSold19` int(11) NOT NULL DEFAULT '0',
  `AmountMade19` int(11) NOT NULL DEFAULT '0',
  `TotalSold20` int(11) NOT NULL DEFAULT '0',
  `AmountMade20` int(11) NOT NULL DEFAULT '0',
  `TotalSold21` int(11) NOT NULL DEFAULT '0',
  `AmountMade21` int(11) NOT NULL DEFAULT '0',
  `TotalSold22` int(11) NOT NULL DEFAULT '0',
  `AmountMade22` int(11) NOT NULL DEFAULT '0',
  `TotalSold23` int(11) NOT NULL DEFAULT '0',
  `AmountMade23` int(11) NOT NULL DEFAULT '0',
  `TotalSold24` int(11) NOT NULL DEFAULT '0',
  `AmountMade24` int(11) NOT NULL DEFAULT '0',
  `TotalSold25` int(11) NOT NULL DEFAULT '0',
  `AmountMade25` int(11) NOT NULL DEFAULT '0',
  `TotalSold26` int(11) NOT NULL DEFAULT '0',
  `AmountMade26` int(11) NOT NULL DEFAULT '0',
  `TotalSold27` int(11) NOT NULL DEFAULT '0',
  `AmountMade27` int(11) NOT NULL DEFAULT '0',
  `TotalSold28` int(11) NOT NULL DEFAULT '0',
  `AmountMade28` int(11) NOT NULL DEFAULT '0',
  `TotalSold29` int(11) NOT NULL DEFAULT '0',
  `AmountMade29` int(11) NOT NULL DEFAULT '0',
  `TotalSold30` int(11) NOT NULL DEFAULT '0',
  `AmountMade30` int(11) NOT NULL DEFAULT '0',
  `TotalSold31` int(11) NOT NULL DEFAULT '0',
  `AmountMade31` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales
-- ----------------------------

-- ----------------------------
-- Table structure for `sec_questions`
-- ----------------------------
DROP TABLE IF EXISTS `sec_questions`;
CREATE TABLE `sec_questions` (
  `userid` int(11) NOT NULL,
  `question` varchar(256) NOT NULL,
  `answer` varchar(256) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sec_questions
-- ----------------------------


-- ----------------------------
-- Table structure for `serverbusinesses`
-- ----------------------------
DROP TABLE IF EXISTS `serverbusinesses`;
CREATE TABLE `serverbusinesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` int(11) NOT NULL DEFAULT '0',
  `Nation` int(11) NOT NULL DEFAULT '0',
  `EntranceX` float NOT NULL DEFAULT '0',
  `EntranceY` float NOT NULL DEFAULT '0',
  `EntranceZ` float NOT NULL DEFAULT '0',
  `EntranceA` float NOT NULL DEFAULT '0',
  `ExitX` float NOT NULL DEFAULT '0',
  `ExitY` float NOT NULL DEFAULT '0',
  `ExitZ` float NOT NULL DEFAULT '0',
  `ExitA` float NOT NULL DEFAULT '0',
  `InteriorExt` int(11) NOT NULL DEFAULT '0',
  `InteriorInt` int(11) NOT NULL DEFAULT '0',
  `WorldExt` int(11) NOT NULL DEFAULT '0',
  `WorldInt` int(11) NOT NULL DEFAULT '0',
  `Price1` int(11) NOT NULL DEFAULT '0',
  `Price2` int(11) NOT NULL DEFAULT '0',
  `Price3` int(11) NOT NULL DEFAULT '0',
  `Price4` int(11) NOT NULL DEFAULT '0',
  `Price5` int(11) NOT NULL DEFAULT '0',
  `Price6` int(11) NOT NULL DEFAULT '0',
  `Price7` int(11) NOT NULL DEFAULT '0',
  `Price8` int(11) NOT NULL DEFAULT '0',
  `Price9` int(11) NOT NULL DEFAULT '0',
  `Price10` int(11) NOT NULL DEFAULT '0',
  `Price11` int(11) NOT NULL DEFAULT '0',
  `Price12` int(11) NOT NULL DEFAULT '0',
  `Price13` int(11) NOT NULL DEFAULT '0',
  `Price14` int(11) NOT NULL DEFAULT '0',
  `Price15` int(11) NOT NULL DEFAULT '0',
  `Price16` int(11) NOT NULL DEFAULT '0',
  `Price17` int(11) NOT NULL DEFAULT '0',
  `Price18` int(10) NOT NULL DEFAULT '0',
  `Price19` int(11) NOT NULL DEFAULT '0',
  `Price20` int(11) NOT NULL DEFAULT '0',
  `CustomExt` int(11) NOT NULL DEFAULT '0',
  `CustomInt` int(11) NOT NULL DEFAULT '0',
  `Price0` int(11) NOT NULL DEFAULT '0',
  `BuyX` float(11,0) NOT NULL DEFAULT '0',
  `BuyY` float(11,0) NOT NULL DEFAULT '0',
  `BuyZ` float(11,0) NOT NULL DEFAULT '0',
  `BuyA` float(11,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serverbusinesses
-- ----------------------------

-- ----------------------------
-- Table structure for `serverbusinessescar`
-- ----------------------------
DROP TABLE IF EXISTS `serverbusinessescar`;
CREATE TABLE `serverbusinessescar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(11) NOT NULL DEFAULT '0',
  `Business` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) unsigned NOT NULL DEFAULT '0',
  `Price` int(11) NOT NULL DEFAULT '0',
  `PositionX` float NOT NULL DEFAULT '0',
  `PositionY` float NOT NULL DEFAULT '0',
  `PositionZ` float NOT NULL DEFAULT '0',
  `PositionA` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serverbusinessescar
-- ----------------------------

-- ----------------------------
-- Table structure for `serverbusinessesgaspump`
-- ----------------------------
DROP TABLE IF EXISTS `serverbusinessesgaspump`;
CREATE TABLE `serverbusinessesgaspump` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Business` int(10) unsigned DEFAULT '0',
  `Object` int(10) unsigned DEFAULT '0',
  `PositionX` float DEFAULT '0',
  `PositionY` float DEFAULT '0',
  `PositionZ` float DEFAULT '0',
  `PositionA` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serverbusinessesgaspump
-- ----------------------------

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `quantity` int(4) NOT NULL DEFAULT '0',
  `delivered` tinyint(1) NOT NULL DEFAULT '0',
  `updatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deliveruser` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orders`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orders`;
CREATE TABLE `shop_orders` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) DEFAULT NULL,
  `GiftVoucher` int(12) DEFAULT NULL,
  `CarVoucher` int(12) DEFAULT NULL,
  `VehVoucher` int(12) DEFAULT NULL,
  `SVIPVoucher` int(12) DEFAULT NULL,
  `GVIPVoucher` int(12) DEFAULT NULL,
  `credits_spent` int(12) DEFAULT NULL,
  `PVIPVoucher` int(12) DEFAULT NULL,
  `status` int(12) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `shopprices`
-- ----------------------------
DROP TABLE IF EXISTS `shopprices`;
CREATE TABLE `shopprices` (
  `Price0` int(11) NOT NULL DEFAULT '0',
  `Price1` int(11) NOT NULL DEFAULT '0',
  `Price2` int(11) NOT NULL DEFAULT '0',
  `Price3` int(11) NOT NULL DEFAULT '0',
  `Price4` int(11) NOT NULL DEFAULT '0',
  `Price5` int(11) NOT NULL DEFAULT '0',
  `Price6` int(11) NOT NULL DEFAULT '0',
  `Price7` int(11) NOT NULL DEFAULT '0',
  `Price8` int(11) NOT NULL DEFAULT '0',
  `Price9` int(11) NOT NULL DEFAULT '0',
  `Price10` int(11) NOT NULL DEFAULT '0',
  `Price11` int(11) NOT NULL DEFAULT '0',
  `Price12` int(11) NOT NULL DEFAULT '0',
  `Price13` int(11) NOT NULL DEFAULT '0',
  `Price14` int(11) NOT NULL DEFAULT '0',
  `Price15` int(11) NOT NULL DEFAULT '0',
  `Price16` int(11) NOT NULL DEFAULT '0',
  `Price17` int(11) NOT NULL DEFAULT '0',
  `Price18` int(11) NOT NULL DEFAULT '0',
  `Price19` int(11) NOT NULL,
  `Price20` int(11) NOT NULL DEFAULT '0',
  `Price21` int(11) NOT NULL DEFAULT '0',
  `Price22` int(11) NOT NULL DEFAULT '0',
  `Price23` int(11) NOT NULL DEFAULT '0',
  `Price24` int(11) NOT NULL DEFAULT '0',
  `Price25` int(11) NOT NULL DEFAULT '0',
  `Price26` int(11) NOT NULL DEFAULT '0',
  `Price27` int(11) NOT NULL DEFAULT '0',
  `Price28` int(11) NOT NULL DEFAULT '0',
  `Price29` int(11) NOT NULL DEFAULT '0',
  `Price30` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Price0`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopprices
-- ----------------------------

-- ----------------------------
-- Table structure for `shoptech`
-- ----------------------------
DROP TABLE IF EXISTS `shoptech`;
CREATE TABLE `shoptech` (
  `id` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `dtotal` float(11,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoptech
-- ----------------------------

-- ----------------------------
-- Table structure for `sms`
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(24) DEFAULT NULL,
  `senderid` int(11) NOT NULL DEFAULT '-1',
  `sendernumber` int(11) NOT NULL DEFAULT '0',
  `receiver` varchar(24) DEFAULT NULL,
  `receiverid` int(11) NOT NULL DEFAULT '-1',
  `receivernumber` int(11) NOT NULL DEFAULT '0',
  `message` varchar(128) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms
-- ----------------------------

-- ----------------------------
-- Table structure for `sobeitkicks`
-- ----------------------------
DROP TABLE IF EXISTS `sobeitkicks`;
CREATE TABLE `sobeitkicks` (
  `sqlID` int(11) NOT NULL DEFAULT '0',
  `Kicks` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sqlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sobeitkicks
-- ----------------------------

-- ----------------------------
-- Table structure for `speed_cameras`
-- ----------------------------
DROP TABLE IF EXISTS `speed_cameras`;
CREATE TABLE `speed_cameras` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pos_x` float(10,5) NOT NULL,
  `pos_y` float(10,5) NOT NULL,
  `pos_z` float(10,5) NOT NULL,
  `rotation` float(10,5) NOT NULL,
  `range` float(10,5) NOT NULL,
  `speed_limit` float(10,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains data regarding speed cameras.';

-- ----------------------------
-- Records of speed_cameras
-- ----------------------------

-- ----------------------------
-- Table structure for `text_labels`
-- ----------------------------
DROP TABLE IF EXISTS `text_labels`;
CREATE TABLE `text_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(128) NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `PickupModel` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of text_labels
-- ----------------------------

-- ----------------------------
-- Table structure for `tokens_call`
-- ----------------------------
DROP TABLE IF EXISTS `tokens_call`;
CREATE TABLE `tokens_call` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` int(2) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tokens_call
-- ----------------------------

-- ----------------------------
-- Table structure for `tokens_report`
-- ----------------------------
DROP TABLE IF EXISTS `tokens_report`;
CREATE TABLE `tokens_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=678 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tokens_report
-- ----------------------------

-- ----------------------------
-- Table structure for `tokens_request`
-- ----------------------------
DROP TABLE IF EXISTS `tokens_request`;
CREATE TABLE `tokens_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1067 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tokens_request
-- ----------------------------

-- ----------------------------
-- Table structure for `toys`
-- ----------------------------
DROP TABLE IF EXISTS `toys`;
CREATE TABLE `toys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` int(11) NOT NULL,
  `modelid` int(11) NOT NULL,
  `bone` int(11) NOT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `rotx` float NOT NULL,
  `roty` float NOT NULL,
  `rotz` float NOT NULL,
  `scalex` float NOT NULL,
  `scaley` float NOT NULL,
  `scalez` float NOT NULL,
  `tradable` int(11) NOT NULL DEFAULT '0',
  `special` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288875 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of toys
-- ----------------------------

-- ----------------------------
-- Table structure for `track_backdoor`
-- ----------------------------
DROP TABLE IF EXISTS `track_backdoor`;
CREATE TABLE `track_backdoor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `door_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of track_backdoor
-- ----------------------------

-- ----------------------------
-- Table structure for `track_gate`
-- ----------------------------
DROP TABLE IF EXISTS `track_gate`;
CREATE TABLE `track_gate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `gate_id` int(11) NOT NULL,
  `gate_move` int(1) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of track_gate
-- ----------------------------

-- ----------------------------
-- Table structure for `track_gvip`
-- ----------------------------
DROP TABLE IF EXISTS `track_gvip`;
CREATE TABLE `track_gvip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `vipm` int(11) NOT NULL,
  `renewal` int(1) NOT NULL,
  `gift` int(1) NOT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of track_gvip
-- ----------------------------

-- ----------------------------
-- Table structure for `track_house`
-- ----------------------------
DROP TABLE IF EXISTS `track_house`;
CREATE TABLE `track_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `house_move` int(2) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of track_house
-- ----------------------------

-- ----------------------------
-- Table structure for `track_pvip`
-- ----------------------------
DROP TABLE IF EXISTS `track_pvip`;
CREATE TABLE `track_pvip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `vipm` int(11) NOT NULL,
  `shop_email` varchar(128) NOT NULL,
  `restrict_veh` int(3) NOT NULL,
  `donate` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of track_pvip
-- ----------------------------

-- ----------------------------
-- Table structure for `track_ts`
-- ----------------------------
DROP TABLE IF EXISTS `track_ts`;
CREATE TABLE `track_ts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `database_id` int(11) NOT NULL,
  `channel_name` varchar(128) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of track_ts
-- ----------------------------

-- ----------------------------
-- Table structure for `track_vip`
-- ----------------------------
DROP TABLE IF EXISTS `track_vip`;
CREATE TABLE `track_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `vip` int(1) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `vipm` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=848 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of track_vip
-- ----------------------------

-- ----------------------------
-- Table structure for `user_leaves`
-- ----------------------------
DROP TABLE IF EXISTS `user_leaves`;
CREATE TABLE `user_leaves` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` varchar(9) NOT NULL,
  `date_leave` date NOT NULL,
  `date_return` date NOT NULL,
  `reason` varchar(512) NOT NULL,
  `status` int(9) NOT NULL,
  `accept_uid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_leaves
-- ----------------------------

-- ----------------------------
-- Table structure for `user_notes`
-- ----------------------------
DROP TABLE IF EXISTS `user_notes`;
CREATE TABLE `user_notes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `uid` varchar(256) NOT NULL,
  `note` varchar(512) NOT NULL,
  `addDate` date NOT NULL,
  `invokeid` varchar(256) NOT NULL,
  `type` int(6) NOT NULL,
  `points` int(6) NOT NULL,
  `status` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=417 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_notes
-- ----------------------------

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlID` int(11) NOT NULL DEFAULT '0',
  `pvModelId` int(11) NOT NULL DEFAULT '0',
  `pvPosX` float NOT NULL DEFAULT '0',
  `pvPosY` float NOT NULL DEFAULT '0',
  `pvPosZ` float NOT NULL DEFAULT '0',
  `pvPosAngle` float NOT NULL DEFAULT '0',
  `pvLock` int(11) NOT NULL DEFAULT '0',
  `pvLocked` int(11) NOT NULL DEFAULT '0',
  `pvPaintJob` int(11) NOT NULL DEFAULT '0',
  `pvColor1` int(11) NOT NULL DEFAULT '0',
  `pvColor2` int(11) NOT NULL DEFAULT '0',
  `pvPrice` int(11) NOT NULL DEFAULT '0',
  `pvTicket` int(11) NOT NULL DEFAULT '0',
  `pvRestricted` int(11) NOT NULL DEFAULT '0',
  `pvWeapon0` int(11) NOT NULL DEFAULT '0',
  `pvWeapon1` int(11) NOT NULL DEFAULT '0',
  `pvWeapon2` int(11) NOT NULL DEFAULT '0',
  `pvWepUpgrade` int(11) NOT NULL DEFAULT '0',
  `pvFuel` float NOT NULL DEFAULT '0',
  `pvImpound` int(11) NOT NULL DEFAULT '0',
  `pvDisabled` int(11) NOT NULL DEFAULT '0',
  `pvPlate` varchar(32) NOT NULL DEFAULT 'None',
  `pvMod0` int(11) NOT NULL DEFAULT '0',
  `pvMod1` int(11) NOT NULL DEFAULT '0',
  `pvMod2` int(11) NOT NULL DEFAULT '0',
  `pvMod3` int(11) NOT NULL DEFAULT '0',
  `pvMod4` int(11) NOT NULL DEFAULT '0',
  `pvMod5` int(11) NOT NULL DEFAULT '0',
  `pvMod6` int(11) NOT NULL DEFAULT '0',
  `pvMod7` int(11) NOT NULL DEFAULT '0',
  `pvMod8` int(11) NOT NULL DEFAULT '0',
  `pvMod9` int(11) NOT NULL DEFAULT '0',
  `pvMod10` int(11) NOT NULL DEFAULT '0',
  `pvMod11` int(11) NOT NULL DEFAULT '0',
  `pvMod12` int(11) NOT NULL DEFAULT '0',
  `pvMod13` int(11) NOT NULL DEFAULT '0',
  `pvMod14` int(11) NOT NULL DEFAULT '0',
  `pvVW` int(11) NOT NULL DEFAULT '0',
  `pvInt` int(11) NOT NULL DEFAULT '0',
  `pvDamaged` int(11) NOT NULL DEFAULT '0',
  `pvCrashFlag` int(11) NOT NULL DEFAULT '0',
  `pvCrashX` float NOT NULL DEFAULT '0',
  `pvCrashY` float NOT NULL DEFAULT '0',
  `pvCrashZ` float NOT NULL DEFAULT '0',
  `pvCrashAngle` float NOT NULL DEFAULT '0',
  `pvCrashVW` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3873 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for `vehicles2`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles2`;
CREATE TABLE `vehicles2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlID` int(11) NOT NULL DEFAULT '0',
  `pvModelId` int(11) NOT NULL DEFAULT '0',
  `pvPosX` float NOT NULL DEFAULT '0',
  `pvPosY` float NOT NULL DEFAULT '0',
  `pvPosZ` float NOT NULL DEFAULT '0',
  `pvPosAngle` float NOT NULL DEFAULT '0',
  `pvLock` int(11) NOT NULL DEFAULT '0',
  `pvLocked` int(11) NOT NULL DEFAULT '0',
  `pvPaintJob` int(11) NOT NULL DEFAULT '0',
  `pvColor1` int(11) NOT NULL DEFAULT '0',
  `pvColor2` int(11) NOT NULL DEFAULT '0',
  `pvPrice` int(11) NOT NULL DEFAULT '0',
  `pvTicket` int(11) NOT NULL DEFAULT '0',
  `pvRestricted` int(11) NOT NULL DEFAULT '0',
  `pvWeapon0` int(11) NOT NULL DEFAULT '0',
  `pvWeapon1` int(11) NOT NULL DEFAULT '0',
  `pvWeapon2` int(11) NOT NULL DEFAULT '0',
  `pvWepUpgrade` int(11) NOT NULL DEFAULT '0',
  `pvFuel` float NOT NULL DEFAULT '0',
  `pvImpound` int(11) NOT NULL DEFAULT '0',
  `pvDisabled` int(11) NOT NULL DEFAULT '0',
  `pvPlate` varchar(32) NOT NULL DEFAULT 'None',
  `pvMod0` int(11) NOT NULL DEFAULT '0',
  `pvMod1` int(11) NOT NULL DEFAULT '0',
  `pvMod2` int(11) NOT NULL DEFAULT '0',
  `pvMod3` int(11) NOT NULL DEFAULT '0',
  `pvMod4` int(11) NOT NULL DEFAULT '0',
  `pvMod5` int(11) NOT NULL DEFAULT '0',
  `pvMod6` int(11) NOT NULL DEFAULT '0',
  `pvMod7` int(11) NOT NULL DEFAULT '0',
  `pvMod8` int(11) NOT NULL DEFAULT '0',
  `pvMod9` int(11) NOT NULL DEFAULT '0',
  `pvMod10` int(11) NOT NULL DEFAULT '0',
  `pvMod11` int(11) NOT NULL DEFAULT '0',
  `pvMod12` int(11) NOT NULL DEFAULT '0',
  `pvMod13` int(11) NOT NULL DEFAULT '0',
  `pvMod14` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicles2
-- ----------------------------

-- ----------------------------
-- Table structure for `zombie`
-- ----------------------------
DROP TABLE IF EXISTS `zombie`;
CREATE TABLE `zombie` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zombie
-- ----------------------------

-- ----------------------------
-- Table structure for `zombieheals`
-- ----------------------------
DROP TABLE IF EXISTS `zombieheals`;
CREATE TABLE `zombieheals` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zombieheals
-- ----------------------------

-- ----------------------------
-- Table structure for `zombiekills`
-- ----------------------------
DROP TABLE IF EXISTS `zombiekills`;
CREATE TABLE `zombiekills` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zombiekills
-- ----------------------------

-- ----------------------------
-- Event structure for `Auto-Prune Bans`
-- ----------------------------
DROP EVENT IF EXISTS `Auto-Prune Bans`;
DELIMITER ;;
CREATE DEFINER=`ngrp`@`127.0.0.1` EVENT `Auto-Prune Bans` ON SCHEDULE EVERY 1 DAY STARTS '2012-09-04 01:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE `bans` SET `status` = '5' WHERE `status` = '1' AND `date_added` < NOW() - INTERVAL 1 WEEK;
;;
DELIMITER ;
