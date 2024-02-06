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
  `BorderDate` datetime NOT NULL,
  `BorderLike` int(11) NOT NULL,
  `BordeView` int(11) NOT NULL,
  PRIMARY KEY (`BorderNo`),
  KEY `User_user_id` (`User_userID`),
  CONSTRAINT `User_user_id` FOREIGN KEY (`User_userID`) REFERENCES `user` (`UserNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.board:~3 rows (대략적) 내보내기
DELETE FROM `board`;
INSERT INTO `board` (`BorderNo`, `User_userID`, `BorderNa`, `BorderDt`, `BorderDate`, `BorderLike`, `BordeView`) VALUES
	(1, 1, '첫 게시물', '첫게시물을 작성해보았습니다.', '2024-01-16 13:39:25', 10, 14),
	(2, 2, '두번쨰 게시물', '게시글 작성', '2024-01-16 13:40:18', 0, 0),
	(3, 2, '세번째', '작성', '2024-01-16 13:40:40', 1, 45);

-- 테이블 mydb.fboard 구조 내보내기
CREATE TABLE IF NOT EXISTS `fboard` (
  `FboardNo` int(11) NOT NULL AUTO_INCREMENT COMMENT '자유게시판',
  `FK_fboard_board` int(11) DEFAULT NULL,
  PRIMARY KEY (`FboardNo`),
  KEY `FK_fboard_board` (`FK_fboard_board`),
  CONSTRAINT `FK_fboard_board` FOREIGN KEY (`FK_fboard_board`) REFERENCES `board` (`BorderNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.fboard:~2 rows (대략적) 내보내기
DELETE FROM `fboard`;
INSERT INTO `fboard` (`FboardNo`, `FK_fboard_board`) VALUES
	(1, 2),
	(2, 3);

-- 테이블 mydb.fboardcoment 구조 내보내기
CREATE TABLE IF NOT EXISTS `fboardcoment` (
  `comentNo` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(100) DEFAULT NULL,
  `commentTime` datetime DEFAULT NULL,
  `FK_fboardcoment_board` int(11) DEFAULT NULL,
  `FK_fboardcoment_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`comentNo`),
  KEY `FK_fboardcoment_board` (`FK_fboardcoment_board`),
  KEY `FK_fboardcoment_user` (`FK_fboardcoment_user`),
  CONSTRAINT `FK_fboardcoment_board` FOREIGN KEY (`FK_fboardcoment_board`) REFERENCES `board` (`BorderNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_fboardcoment_user` FOREIGN KEY (`FK_fboardcoment_user`) REFERENCES `user` (`UserNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.fboardcoment:~0 rows (대략적) 내보내기
DELETE FROM `fboardcoment`;

-- 테이블 mydb.imgprocedure 구조 내보내기
CREATE TABLE IF NOT EXISTS `imgprocedure` (
  `RecipeBoard_ID` int(11) DEFAULT NULL,
  `ProcedureURL` varchar(200) DEFAULT NULL,
  KEY `RecipeBoard_ID` (`RecipeBoard_ID`),
  CONSTRAINT `FK_imgprocedure_recipeboard` FOREIGN KEY (`RecipeBoard_ID`) REFERENCES `recipeboard` (`RecipeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.imgprocedure:~0 rows (대략적) 내보내기
DELETE FROM `imgprocedure`;

-- 테이블 mydb.ingredient 구조 내보내기
CREATE TABLE IF NOT EXISTS `ingredient` (
  `FK_Recipe_ID` int(11) DEFAULT NULL,
  `ingdNo` int(11) NOT NULL COMMENT '번호',
  `ingdName` varchar(20) NOT NULL COMMENT '이름',
  `ingdAm` varchar(10) NOT NULL COMMENT '용량',
  KEY `FK_Recipe_ID` (`FK_Recipe_ID`),
  CONSTRAINT `FK_ingredient_recipeboard` FOREIGN KEY (`FK_Recipe_ID`) REFERENCES `recipeboard` (`RecipeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.ingredient:~47 rows (대략적) 내보내기
DELETE FROM `ingredient`;
INSERT INTO `ingredient` (`FK_Recipe_ID`, `ingdNo`, `ingdName`, `ingdAm`) VALUES
	(7, 0, '닭다리살', '400g'),
	(7, 1, '쯔유', '2T'),
	(7, 2, '소금', '1/2t'),
	(7, 3, '올리고당', '2T'),
	(7, 4, '다진마늘', '2T'),
	(7, 5, '통후추', '1t'),
	(7, 6, '올리브유', '2T'),
	(8, 0, '삼겹살', '600g'),
	(8, 1, '통마늘', '10알'),
	(8, 2, '소금', '3~4꼬집'),
	(9, 0, '양갈비 프렌치렉', '3대'),
	(9, 1, '올리브유', '소량'),
	(9, 2, '허브 솔트', '소량'),
	(9, 3, '파슬리', '소량'),
	(9, 4, '쯔란', '소량'),
	(9, 5, '홀그레인 머스타드', '소량'),
	(9, 6, '스테이크 소스', '소량'),
	(9, 7, '통마늘', '소량'),
	(9, 8, '방울 토마토', '소량'),
	(9, 9, '소시지', '소량'),
	(9, 10, '양파', '소량'),
	(10, 0, '새송이 버섯', '2개'),
	(10, 1, '튀김가루', '1 종이컵 '),
	(10, 2, '물', '1 종이컵'),
	(10, 3, '마요네즈', '2T'),
	(10, 4, '설탕', '1T'),
	(10, 5, '식초', '1t'),
	(11, 0, '콘옥수수', '1캔'),
	(11, 1, '만두피', '적당량'),
	(11, 2, '피자치즈', '적당량'),
	(11, 3, '마요네즈', '적당량'),
	(11, 4, '식용유', '적당량'),
	(12, 0, '식빵', '6장'),
	(12, 1, '설탕', '50g'),
	(12, 2, '버터', '60g'),
	(12, 3, '계피가루', '10g'),
	(5, 7, '설탕', '1 스푼'),
	(5, 2, '진간장', '1 스푼'),
	(5, 8, '고추가루', '1 스푼'),
	(5, 4, '참기름', '2 스푼'),
	(5, 5, '마요네즈', '2/3 스푼'),
	(5, 6, '된장', '1/3 스푼'),
	(5, 1, '김치', '1컵'),
	(5, 3, '찬밥', '1.5공기'),
	(2, 1, '돼지 앞다리살', '400g'),
	(2, 2, '감자', '3개'),
	(2, 3, '양파', '1개'),
	(2, 4, '당근', '1/3개'),
	(2, 5, '애호박', '1개'),
	(2, 6, '청양고추', '2개'),
	(2, 7, '고추장', '3스푼'),
	(2, 8, '다진마늘', '1스푼'),
	(2, 9, '고춧가루', '2스푼');

-- 테이블 mydb.mypage 구조 내보내기
CREATE TABLE IF NOT EXISTS `mypage` (
  `FK__user` int(11) DEFAULT NULL,
  `FK__fboard` int(11) DEFAULT NULL,
  `FK__rboard` int(11) DEFAULT NULL,
  KEY `FK__user` (`FK__user`),
  KEY `FK__fboard` (`FK__fboard`),
  KEY `FK__rboard` (`FK__rboard`),
  CONSTRAINT `FK__fboard` FOREIGN KEY (`FK__fboard`) REFERENCES `fboard` (`FboardNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__rboard` FOREIGN KEY (`FK__rboard`) REFERENCES `rboard` (`RboardNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__user` FOREIGN KEY (`FK__user`) REFERENCES `user` (`UserNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.mypage:~3 rows (대략적) 내보내기
DELETE FROM `mypage`;
INSERT INTO `mypage` (`FK__user`, `FK__fboard`, `FK__rboard`) VALUES
	(2, 2, NULL),
	(2, NULL, 2),
	(2, 1, NULL);

-- 테이블 mydb.rboard 구조 내보내기
CREATE TABLE IF NOT EXISTS `rboard` (
  `RboardNo` int(11) NOT NULL AUTO_INCREMENT COMMENT '레시피 보드my',
  `FK__recipeboard` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`RboardNo`),
  KEY `FK__recipeboard` (`FK__recipeboard`),
  CONSTRAINT `FK__recipeboard` FOREIGN KEY (`FK__recipeboard`) REFERENCES `recipeboard` (`RecipeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.rboard:~2 rows (대략적) 내보내기
DELETE FROM `rboard`;
INSERT INTO `rboard` (`RboardNo`, `FK__recipeboard`) VALUES
	(3, 8),
	(2, 9),
	(1, 13);

-- 테이블 mydb.recipeboard 구조 내보내기
CREATE TABLE IF NOT EXISTS `recipeboard` (
  `RecipeID` int(11) NOT NULL AUTO_INCREMENT,
  `FKuserID` int(11) NOT NULL COMMENT '유저번호',
  `RecipeName` varchar(45) DEFAULT NULL COMMENT '요리제목',
  `RecipeCate` varchar(10) NOT NULL COMMENT '분류',
  `RecipeServings` varchar(10) DEFAULT NULL COMMENT '인분',
  `RecipTime` varchar(10) NOT NULL COMMENT '조리시간',
  `RecipDate` datetime NOT NULL COMMENT '게시일',
  `RecipeLike` int(11) DEFAULT NULL COMMENT '좋아요',
  `RecipeView` int(11) NOT NULL COMMENT '조회순',
  `TitleImg` varchar(100) DEFAULT NULL COMMENT '완성 사진',
  PRIMARY KEY (`RecipeID`) USING BTREE,
  KEY `FKuserID` (`FKuserID`) USING BTREE,
  CONSTRAINT `FKuserID` FOREIGN KEY (`FKuserID`) REFERENCES `user` (`UserNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.recipeboard:~18 rows (대략적) 내보내기
DELETE FROM `recipeboard`;
INSERT INTO `recipeboard` (`RecipeID`, `FKuserID`, `RecipeName`, `RecipeCate`, `RecipeServings`, `RecipTime`, `RecipDate`, `RecipeLike`, `RecipeView`, `TitleImg`) VALUES
	(1, 2, '소고기 미역국', '국/탕/찌개', '4', '60', '2024-01-16 14:09:18', 0, 10, '/common/recipeIMG/beefseaweedsoup/1.png'),
	(2, 1, '돼지고기 짜글이', '국/탕/찌개', '2', '20', '2024-01-16 14:12:05', 5, 10, '/common/recipeIMG/pigjjagri/2.jpg'),
	(3, 1, '매콤 된장지개', '국/탕/찌개', '2', '15', '2023-01-16 14:13:37', 8, 20, '/common/recipeIMG/spicydoenjangsoup/3.jpg'),
	(4, 2, '우삼겹덮밥', '볶음/덮밥/비빔', '1', '20', '2024-01-16 14:14:46', 3, 15, '/common/recipeIMG/beefRice/4.png'),
	(5, 2, '김치볶음밥', '볶음/덮밥/비빔', '2', '15', '2024-01-16 14:15:37', 20, 43, '/common/recipeIMG/kimchFriedRice/5.jpg'),
	(6, 2, '소시지 야채 볶음', '볶음/덮밥/비빔', '4', '30', '2024-01-16 14:16:23', 24, 44, '/common/recipeIMG/SoYa/6.jpg'),
	(7, 1, '치킨스테이크', '구이', '2', '30', '2024-01-05 05:46:00', 21, 30, '/common/recipeIMG/chickensteak/7.jpg'),
	(8, 1, '에어프라이기 삼겹살 구이', '구이', '2', '20', '2024-01-15 18:10:49', 0, 10, '/common/recipeIMG/airfrimeat/8.jpg'),
	(9, 1, '에어프라이기 양고기 스테이크', '구이', '1', '90', '2024-01-15 18:12:15', 0, 0, '/common/recipeIMG/airfirsheep/9.jpg'),
	(10, 1, '크림 새송이', '튀김', '2', '15', '2024-01-15 18:12:40', 0, 0, '/common/recipeIMG/creamnewsong/10.jpg'),
	(11, 1, '콘치즈스틱', '튀김', '5', '30', '2024-01-15 18:15:32', 0, 50, '/common/recipeIMG/corncheesestick/11.jpg'),
	(12, 1, '식빵 츄러스', '튀김', '6', '15', '2024-01-15 18:16:00', 43, 55, '/common/recipeIMG/breadchurros/12.jpg'),
	(13, 2, '간장떡볶이', '간식/분식', '2', '30', '2024-01-15 18:29:06', 5, 12, '/common/recipeIMG/dduckbbucki/13.png'),
	(14, 2, '꿀마늘닭강정', '간식/분식', '2', '30', '2024-01-15 18:30:18', 0, 15, '/common/recipeIMG/honeychickenGangjeong/14.png'),
	(15, 2, '햄치즈샌드위치', '간식/분식', '2', '15', '2024-01-15 18:31:47', 10, 20, '/common/recipeIMG/hamcheesesandwitch/15.png'),
	(16, 2, '감자국수', '면', '2', '40', '2024-01-15 18:38:18', 5, 0, '/common/recipeIMG/potatonoddle/16.png'),
	(17, 2, '쌀국수', '면', '2', '40', '2024-01-16 12:08:46', 50, 15, '/common/recipeIMG/ricenoddle/17.png'),
	(18, 2, '잡채', '면', '2', '50', '2024-01-16 12:09:18', 25, 5, '/common/recipeIMG/Japchae/18.png');

-- 테이블 mydb.recipedetails 구조 내보내기
CREATE TABLE IF NOT EXISTS `recipedetails` (
  `FK_recipedetails_recipeboard` int(11) DEFAULT NULL,
  `RecipeDetailsNo` int(11) NOT NULL,
  `RecipeComImg` varchar(100) NOT NULL COMMENT '이미지',
  `RecipeDetails` longtext DEFAULT NULL COMMENT '내용',
  KEY `FK_recipedetails_recipeboard` (`FK_recipedetails_recipeboard`),
  CONSTRAINT `FK_recipedetails_recipeboard` FOREIGN KEY (`FK_recipedetails_recipeboard`) REFERENCES `recipeboard` (`RecipeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.recipedetails:~52 rows (대략적) 내보내기
DELETE FROM `recipedetails`;
INSERT INTO `recipedetails` (`FK_recipedetails_recipeboard`, `RecipeDetailsNo`, `RecipeComImg`, `RecipeDetails`) VALUES
	(7, 1, '7-1', '고기에 쯔유 2큰술, 소금1./2작은술, 올리고당 2큰술, 다진마늘 2큰술, 통후추 1작은술 을 넣고 잘섞어 주세요. '),
	(13, 1, '13-1', '분량의 양념 재료를 섞어 쇠고기 양념장과 떡볶이 양념장을 각각 만들어 둔다.'),
	(13, 2, '13-2', '떡은 뜨거운 물에 10분 정도 불린 후 쇠고기 양념장을 약간 덜어 밑간을 해 놓는다.'),
	(13, 3, '13-3', '느타리버섯은 끓는 물에 소금을 약간 넣고 데쳐서 찬물에 헹군 뒤 물기를 꼭 짜서 가늘게 찢어 소금과 참기름에 버무린다.'),
	(13, 4, '13-4', '오이는 소금으로 문질러 씻은 뒤 4cm 길이로 돌려 깎아서 가늘게 채썰어 소금에 살짝 절이고 당근은 4cm 길이로 곱게 채썰고, 양파도 곱게 채썬다. 배는 껍질을 벗겨 씨를 도려낸 다음 4cm 길이로 채썰어서 색이 변하지 않도록 설탕물에 담가둔다.'),
	(13, 5, '13-4', '프라이팬에 느타리버섯, 오이, 당근, 쇠고기 순으로 소금과 후춧가루로 간하여 재빨리 볶아서 넓은 쟁반에 펴서 식힌다.'),
	(13, 6, '13', '큼직한 볼에 당면과 ⑤를 넣고 무쳐서 소금으로 간하고, 채썰어놓은 배와 통깨를 넣고 살살 무쳐서 접시에 담는다.'),
	(7, 2, '7-2', '올리브 유를 2큰술을 넣고 한번더 주물러 준 뒤 랩을 씌우고 숙성해 줍니다. '),
	(7, 3, '7-3', '바로 구워바로 구워 드셔도 되지만, 반나절 정도 냉장고에 숙성시키면 고기에 간이 더 잘 베여서 맛있어요'),
	(7, 4, '7-4', '숙성 시킨 고기를 닭 껍질 부분이 아래쪽으로 가도록 구워줍니다.'),
	(7, 5, '7-5', '바로 물 100ml 정도 부어주고 뚜껑을 닫고 중불로 5분 정도 익혀줍니다.'),
	(7, 6, '7-6', '뚜껑을 열고 뒤집어 준 뒤 5분정도 익혀주기를 두번 반복해주며 골고로 입혀줍니다.   '),
	(7, 7, '7-7', '완성'),
	(8, 1, '8-1', '골고루 익히기 위해 삼겹살에 칼집을 내준다.'),
	(8, 2, '8-2', '통마늘과 삼겹살을 에어프라이기에 넣고 소금간을 해준다.'),
	(8, 3, '8-3', '에어프라이어에 넣고 180도에 10분씩 2번 압뒤로 구워준다.'),
	(9, 1, '9-1', '키친 타올로 프렌치렉의 핏물을 확실히 제거해주세여(중요)'),
	(9, 2, '9-2', '갈비에 올리브유를 공고로 발라주고 기호에 맞게 소금이나 허브 솔트, 시즈닝 등을 뿌린뒤 1시간 정도 마리네이드 해줍니다.'),
	(9, 3, '9-3', '마리네이드가 끝난 프렌치렉을 망에 올려 180도에 10분 정도 구워준뒤 돌려줍니다.'),
	(9, 4, '9-4', '10분 정도 더 구워준 뒤 고기를 한번더 뒤집어줍니다.'),
	(9, 5, '9-5', '소시지, 마늘, 토마토를 이떄 같이 넣어 180도를 유지하여 10분 더 구워줍니다.'),
	(9, 6, '9-6', '음식이 타지 않나 주위하며 마지막으로 뒤집어 준뒤 10분정도 더 구워주면 완성입니다.'),
	(10, 1, '10-1', '새송이버섯을 적당 크기로 잘라준다'),
	(10, 2, '10-2', '물과 튀김가루를 1:1 비율로 섞어 반죽을 만든뒤 새송이버섯을 넣어준다.'),
	(10, 3, '10-3', '새송이버섯을 튀겨준다.'),
	(10, 4, '10-4', '마요네즈와 설탕 식초을 한번에 후라이팬이 넣고 가열하며 소스를 만들어준뒤 약불에서 새송이버섯과 함께 잘섞어준다.'),
	(11, 1, '11-1', '피자치즈, 콘옥수수, 마요네즈를 넣고 섞어 충전물을 만든다.'),
	(11, 2, '11-2', '만두피를 얇게 밀고 추전물을 넣어 끝에 물을 묻히고 접어준다.'),
	(11, 3, '11-3', '기름에 튀겨준다.'),
	(12, 1, '12-1', '식빵을 원 하는 굵기로 잘라준다.'),
	(12, 2, '12-2', '식빵 앞뒤에 버터를 바른 뒤 오븐에 7분 정도 익혀준다.'),
	(12, 3, '12-3', '비닐 봉투에 설탕과 계피가루를 넣고 섞어준다.'),
	(1, 1, '1-1', '냄새 제거를 위해 키친타올을 이용해 소고기 핏물을 닦아주고 고기는 결과 반대로 썰어주세요.'),
	(1, 2, '1-2', '*미역 20g은 이 정도로 사진 참고해주세요!'),
	(1, 3, '1-3', '미역은 물 500ml(약 2.5컵)에 10분간 불려주세요.'),
	(1, 4, '1-4', ' 불린 미역은 가위를 이용해 먹기 좋은 크기로 잘라주세요.'),
	(1, 5, '1-5', ' 미역은 체를 이용해 건져주세요. 이때 미역 불린 물은 버리지 않고 미역국 끓일 때 물 대신 사용해주세요.\r\n 미역 불린 물 혹은 쌀뜨물을 넣어 미역국을 끓이면 조미료 하나 넣지 않고도 깊고 진한 맛의 미역국을 끓일 수 있어요.'),
	(1, 6, '1-6', '중불로 달군 냄비에 참기름 1큰술을 두른 뒤 다진마늘 1큰술과 소고기를 넣고 볶아주세요.'),
	(1, 7, '1-7', '소고기 겉면이 절반 정도 익을 때쯤 국간장 1큰술을 넣어 볶아주세요.'),
	(1, 9, '1-9', '쌀뜨물 혹은 미역 불린 물 400mL(약 2컵)를 붓고 강불로 올려주세요. '),
	(1, 8, '1-8', '미역을 넣고 푸른색을 띨 때까지 달달 볶아주세요.'),
	(1, 10, '1-10', '국물이 끓기 시작하면 물 1L(약 5컵)를 넣어주세요. 다시 끓어오르면 중약불로 줄인 뒤 15분간 끓여주세요.'),
	(1, 11, '1-11', '마지막으로, 국간장 1큰술을 넣고 부족한 간은 소금으로 더해주세요. 엄마 손맛 가득한 미역국 완성입니다.'),
	(5, 1, '5-1', '김치 1컵을 잘게 썬다. 새김치는 안되지만 살짝 익은 정도의 김치면 가능. '),
	(5, 2, '5-2', '김치에 모든 양념을 넣고 잘 비벼준 다음 식용유 3스푼을 붓고 달군 팬에 재료를 고루 펴서 부어준다. 그리고 뚜껑을 덮고 약 1분간 그대로 둔다. 김치말고 살짝 익은 깍두기를 잘게 다져서 해도 완전 맛있어요'),
	(5, 3, '5-3', '뚜껑을 열고 수분이 거의 남지 않는 꾸덕한 상태가 되었는지 확인하고 수분이 많이 남아 있으면 1분정도 더 볶아 주고 수분이 거의 날아간 상태라면 밥 2공기를 넣고 볶는다. 밥2공기는 햇반 한개 210g 짜리 2개 분량입니다.'),
	(5, 4, '5-4', ' 흰밥이 보이지 않을 정도로 고루 섞어 준 다음 팬에 골고루 밥을 편다음 뚜껑을 덮고 쎈불에 그대로 20~30초간 둔다.'),
	(5, 5, '5-5', '전혀 새로운 맛의 김치 볶음밥이 완성 되었습니다~ 맛있게 드세요~ 하트하트~^^~ 레시피 페이지속 레시피 동영상 시청은 레시피 제작에 커다란 힘이 됩니다.'),
	(2, 1, '2-1', '물1.5종이컵에 된장,고추가루,다진마늘,설탕,간장을 한데넣고 한소끔 끓여줍니다.'),
	(2, 2, '2-2', '그 사이 양파,버섯,애호박,청양고추,두부는 적당한 크기로 썰어줍니다.'),
	(2, 3, '2-3', '한소끔 끓은 된장물에 양파,버섯,애호박,청양고추,두부를 넣어 줍니다.'),
	(2, 4, '2-4', ' 애호박이 익을때까지 끓여주어 간을보아 부족한간은 소금으로 해주어 완성. 저는 부족한간이 없어 소금은 넣지 않았습니다.'),
	(3, 1, '3-1', '돼지고기 400g, 감자 3개, 애호박 1개, 양파(1개)를 깍둑썰기로 잘라서 넓은 냄비 바닦에 깔아 줍니다. '),
	(4, 1, '4-1', '양파 1/4개는 송송 썰어줍니다.'),
	(6, 1, '6-1', ' 소시지와 각종 채소 재료를 준비합니다');

-- 테이블 mydb.tip 구조 내보내기
CREATE TABLE IF NOT EXISTS `tip` (
  `tipNo` int(11) NOT NULL AUTO_INCREMENT,
  `tipName` varchar(100) NOT NULL,
  `tipDetail` longtext NOT NULL,
  `tipUrl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tipNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.tip:~0 rows (대략적) 내보내기
DELETE FROM `tip`;
INSERT INTO `tip` (`tipNo`, `tipName`, `tipDetail`, `tipUrl`) VALUES
	(1, '버터 쉽게 소분 보관법', '① 종이호일을 버터 크기에 맞게 잘라 주세요.', NULL);

-- 테이블 mydb.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `UserNo` int(11) NOT NULL AUTO_INCREMENT,
  `UserNa` varchar(20) NOT NULL,
  `UserId` varchar(20) NOT NULL,
  `UserPassword` varchar(50) NOT NULL DEFAULT '',
  `UserPhon` varchar(14) NOT NULL,
  `UserEmail` varchar(30) NOT NULL,
  `admin` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserNo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- 테이블 데이터 mydb.user:~3 rows (대략적) 내보내기
DELETE FROM `user`;
INSERT INTO `user` (`UserNo`, `UserNa`, `UserId`, `UserPassword`, `UserPhon`, `UserEmail`, `admin`) VALUES
	(1, 'admin', 'admin', '1234', '010-1234-1234', 'email@email.com', '1'),
	(2, 'ge', 'ge', '1234', '010-1234-0000', 'email@email.com', '0'),
	(13, 'asd', 'asd', '12341234', '111-111-1111', 'dmsqo79@gmail.com', '0');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
