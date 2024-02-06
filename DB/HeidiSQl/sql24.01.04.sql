-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.31-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- mydb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `mydb`;

-- 테이블 mydb.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `BorderNo` int(11) NOT NULL AUTO_INCREMENT,
  `User_userID` int(11) DEFAULT NULL,
  `BorderNa` varchar(30) NOT NULL,
  `BorderDt` varchar(2000) NOT NULL,
  `BorderComent` int(11) NOT NULL,
  `BorderDate` datetime NOT NULL,
  `BorderLike` int(11) NOT NULL,
  `BordeView` int(11) NOT NULL,
  PRIMARY KEY (`BorderNo`),
  KEY `User_user_id` (`User_userID`),
  CONSTRAINT `User_user_id` FOREIGN KEY (`User_userID`) REFERENCES `user` (`UserNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.category 구조 내보내기
CREATE TABLE IF NOT EXISTS `category` (
  `RecipeBoard_RecipeID` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  PRIMARY KEY (`RecipeBoard_RecipeID`),
  CONSTRAINT `RecipeBoard_RecipeID` FOREIGN KEY (`RecipeBoard_RecipeID`) REFERENCES `board` (`BorderNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.imgprocedure 구조 내보내기
CREATE TABLE IF NOT EXISTS `imgprocedure` (
  `RecipeBoard_ID` int(11) DEFAULT NULL,
  `ProcedureURL` varchar(200) DEFAULT NULL,
  KEY `RecipeBoard_ID` (`RecipeBoard_ID`),
  CONSTRAINT `RecipeBoard_ID` FOREIGN KEY (`RecipeBoard_ID`) REFERENCES `board` (`BorderNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.ingredient 구조 내보내기
CREATE TABLE IF NOT EXISTS `ingredient` (
  `FK_Recipe_ID` int(11) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `ingredient` varchar(10) DEFAULT NULL,
  KEY `FK_Recipe_ID` (`FK_Recipe_ID`),
  CONSTRAINT `FK_Recipe_ID` FOREIGN KEY (`FK_Recipe_ID`) REFERENCES `board` (`BorderNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.recipeboard 구조 내보내기
CREATE TABLE IF NOT EXISTS `recipeboard` (
  `RecipeID` int(11) NOT NULL AUTO_INCREMENT,
  `FKuserID` int(11) NOT NULL,
  `RecipeName` varchar(45) DEFAULT NULL,
  `RecipeComImg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RecipeID`),
  KEY `FKuserID` (`FKuserID`),
  CONSTRAINT `FKuserID` FOREIGN KEY (`FKuserID`) REFERENCES `user` (`UserNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.recipedetails 구조 내보내기
CREATE TABLE IF NOT EXISTS `recipedetails` (
  `FK_RecipeID` int(11) DEFAULT NULL,
  `RecipeDetails` longtext DEFAULT NULL,
  KEY `FK_RecipeID` (`FK_RecipeID`),
  CONSTRAINT `FK_RecipeID` FOREIGN KEY (`FK_RecipeID`) REFERENCES `board` (`BorderNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.tip 구조 내보내기
CREATE TABLE IF NOT EXISTS `tip` (
  `TipNo` int(11) NOT NULL AUTO_INCREMENT,
  `TipDt` varchar(2000) NOT NULL,rboard
  `TipNa` varchar(30) NOT NULL,
  PRIMARY KEY (`TipNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.tipimg 구조 내보내기
CREATE TABLE IF NOT EXISTS `tipimg` (
  `FK_TipNo` int(11) DEFAULT NULL,
  `TipImg` varchar(100) NOT NULL,
  KEY `FK_TipNo` (`FK_TipNo`),
  CONSTRAINT `FK_TipNo` FOREIGN KEY (`FK_TipNo`) REFERENCES `tip` (`TipNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 mydb.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `UserNo` int(11) NOT NULL AUTO_INCREMENT,
  `UserNa` varchar(20) NOT NULL,
  `Id` varchar(20) NOT NULL,
  `password` int(11) NOT NULL,
  `phon` varchar(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `admin` char(1) DEFAULT NULL,
  PRIMARY KEY (`UserNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
mydbmydb
-- 내보낼 데이터가 선택되어 있지 않습니다.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
