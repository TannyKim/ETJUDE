CREATE DATABASE  IF NOT EXISTS `unnamed` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `unnamed`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: i8a605.p.ssafy.io    Database: unnamed
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `story_id` bigint NOT NULL AUTO_INCREMENT,
  `story_desc` longtext,
  `story_summary` varchar(255) DEFAULT NULL,
  `story_thumbnail_url` varchar(255) DEFAULT NULL,
  `story_title` varchar(30) DEFAULT NULL,
  `story_video_url` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `work_id` bigint DEFAULT NULL,
  PRIMARY KEY (`story_id`),
  KEY `FK3482m1gx8h8ftopmoyxaqyr6` (`category_id`),
  KEY `FK7nyvmoj9u617dqe952pboos5u` (`work_id`),
  CONSTRAINT `FK3482m1gx8h8ftopmoyxaqyr6` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FK7nyvmoj9u617dqe952pboos5u` FOREIGN KEY (`work_id`) REFERENCES `work` (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'＂사랑해요 사장님, 사랑한다고…＂좋아하지 말라던 사장님의 말에 상처받았지만 상관없이 새로이를 좋아하기로 한 직진이서♡ 그런 이서에게 드디어 마음이 열리는 새로이..?!','새로이에게 고백하는 이서','https://i.ytimg.com/vi/ux_Glcpot14/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAhbK8OXPP50-wbXaEHBrJuwRbblw','이태원 클라쓰 고백','https://s3ffmpegtest.s3.ap-northeast-2.amazonaws.com/stories/1.webm',1,1),(2,'한 번만 자존심 굽히고 장사하라는 이서(김다미) ＂그 한번들로 사람은 변하는 거야＂ 자신만의 소신을 지키는 새로이(박서준) ＂영업 정지? 다시 오픈하면 돼. 별일 아니야.＂','새로이에게 자존심 굽히고 장사하라는 이서','https://i.ytimg.com/vi/VA8i54OyRos/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDhjp3gu9AQ2C45NOq991j87A7b3A','이태원 클라쓰 영업정지','https://s3ffmpegtest.s3.ap-northeast-2.amazonaws.com/stories/2.webm',1,1),(3,'7년 연애 김가은♥김민석 이별...?! \"나도 너랑 똑같이 7년동안 연애했어. 숨 막혀 죽겠어!!!','7년 연애 김가은♥김민석 이별','https://i.ytimg.com/vi/XVrSBwBea7A/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCE_jCsJ7iDFeYDrQ29_-NG38jHeQ','양호랑 심원석 이별','https://s3ffmpegtest.s3.ap-northeast-2.amazonaws.com/stories/3.webm',1,2),(4,'진양철에게 가족을 인정받게 하기 위해 순양가에서 누구도 갖지 못했던 서울대 합격증으로 거래를 제안하는 어린 진도준','진양철에게 거래를 제안하는 어린 진도준','https://i.ytimg.com/vi/DWifWJLDErI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCutgziefwBTm4J_2tj9sVsAF4Tbg','진양철 진도준 거래','https://s3ffmpegtest.s3.ap-northeast-2.amazonaws.com/stories/4.webm',1,3),(5,'뉴욕에 있는 이진에게 더 이상 희도의 마음이 닿지 않는다. 결국 서로에게 상처 내는 말들만 쏟아내고 돌아서는데...','서로에게 고성이 오간 끝에, 결국 진짜 이별을 맞게 된 백이진과 나희도','https://i.ytimg.com/vi/VTXm61L6PTQ/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBadSpwVAUllYLhW4-7PFTDpAUMlA','나희도 백이진 이별','https://s3ffmpegtest.s3.ap-northeast-2.amazonaws.com/stories/5.webm',1,42),(6,'뉴욕에 있는 이진에게 더 이상 희도의 마음이 닿지 않는다. 결국 서로에게 상처 내는 말들만 쏟아내고 돌아서는데...','서로에게 고성이 오간 끝에, 결국 진짜 이별을 맞게 된 백이진과 나희도','https://i.ytimg.com/vi/yW7kHqR-zE8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCYkFWrtC3Ls04WPZS1-PBKb34PfA','나희도 백이진 이별2','https://s3ffmpegtest.s3.ap-northeast-2.amazonaws.com/stories/6.webm',1,42),(7,'어쩌다 보니 카메라도 없이 둘만의 술자리를 갖게 된 최웅과 국연수. 최웅은 어색한 적막 속 말없이 술잔만 기울였고, 국연수는 “네가 친구 하자고 했던 말, 내가 생각을 좀 해봤는데 난 안 되겠더라고. 친구 하기 싫다는 말이 아니라…”라고 용기 내어 말했다. 그런데 입을 꾹 다문 채 있던 최웅에게서 돌아온 말은 뜻밖이었다. “보고 싶었다, 국연수. 보고 싶었어, 항상. 보고 싶었어”라며, “나 좀 계속 사랑해줘. 놓지 말고 계속 사랑해. 부탁이야”라는 가슴 절절한 눈물의 고백을 한다.','＂나 좀 계속 사랑해줘＂ 최우식, 김다미에 눈물 고백','https://i.ytimg.com/vi/F8Ffdpmh3rk/maxresdefault.jpg','그 해 우리는 고백','https://s3ffmpegtest.s3.ap-northeast-2.amazonaws.com/stories/7.webm',1,43),(8,'북한에서 온 황정민. 조자실에서 남한의 음식과 물건들을 보며 신기해하지만 변절자라는 말을 듣자 돌변한다.','북한에서 온 황정민. 조자실에서 남한의 음식과 물건들을 보며 신기해하지만 변절자라는 말을 듣자 돌변한다.','https://i.ytimg.com/vi/RFdS-EOab_8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCOpSQ_ZdOXvimYCCeVPwosKf8Hkw','헌트 황정민','https://www.youtube.com/embed/RFdS-EOab_8',4,49),(9,'위장수사로 치킨집 열었다가 맛집으로 소문나면서 수사가 아닌 장사에 정신없는 팀원들','위장수사로 치킨집 열었다가 맛집으로 소문나면서 수사가 아닌 장사에 정신없는 팀원들','https://i.ytimg.com/vi/aI5wejCDXtg/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCY5hC2P4IIpERergmRy1JyIEuR4g','극한직업 왜 잘 돼?','https://www.youtube.com/embed/aI5wejCDXtg',4,44),(10,'극한직업의 씬스틸러! 악역 테드창과 이무배의 티키타카','극한직업의 씬스틸러! 악역 테드창과 이무배의 티키타카','https://i.ytimg.com/vi/DwoOOn85kR0/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA-pT8EqiNK0Kg-TOvmLYdHtY0Kbw','극한직업 악역배틀','https://www.youtube.com/embed/DwoOOn85kR0',4,44),(11,'선배님 선배님 하다가 흑화한 최동수 대리. 이자영에게 위치를 모르겠냐며 막말하지만 등짝 맞고 정신차린다.','선배님 선배님 하다가 흑화한 최동수 대리. 이자영에게 위치를 모르겠냐며 막말하지만 등짝 맞고 정신차린다.','https://i.ytimg.com/vi/cSqGGpDBFh4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBQ0cL-VhLdSRWWE7K5DcTLXq4q_g','삼토반 선배님','https://www.youtube.com/embed/cSqGGpDBFh4',4,56),(12,'물난리 속에서도 와이파이가 잡히는 집안에서 가장 ‘높은’ 장소인 오물이 터지려고 하는 화장실 변기 위에서 담배를 찾아 묘한 만족감과 씁쓸함을 보인다.','물난리 속에서도 와이파이가 잡히는 집안에서 가장 ‘높은’ 장소인 오물이 터지려고 하는 화장실 변기 위에서 담배를 찾아 묘한 만족감과 씁쓸함을 보인다.','https://i.ytimg.com/vi/gGqiKMw-rXY/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA594yDk2J2Yz1e1tMOcbINsIZEqw','기생충 변기씬','https://www.youtube.com/embed/gGqiKMw-rXY',4,45),(13,'배경음악이 재생되면서 장미숙 및 조영민 형사가 등장한다. 뒤이어 등장한 조호진은 샴푸 의자에 앉은 조영민의 머리를 감겨준다. 이어 오준수가 등장하고, 로젠택배 옷을 입은 강우진 형사가 들어온다. 강우진 형사는 대기하는 동안 옆에 앉은 오준수가 수첩에 무언가를 적는 장면을 엿본다. 안내방송 후 배경음악이 꺼지고(여기까지가 촬영 가능한 워밍업 공연이다), 한보현은 조금 늦을 것임을 전화로 알린다.','배경음악이 재생되면서 장미숙 및 조영민 형사가 등장한다. 뒤이어 등장한 조호진은 샴푸 의자에 앉은 조영민의 머리를 감겨준다. 이어 오준수가 등장하고, 로젠택배 옷을 입은 강우진 형사가 들어온다. 강우진 형사는 대기하는 동안 옆에 앉은 오준수가 수첩에 무언가를 적는 장면을 엿본다. 안내방송 후 배경음악이 꺼지고(여기까지가 촬영 가능한 워밍업 공연이다), 한보현은 조금 늦을 것임을 전화로 알린다.','https://i.ytimg.com/vi/HCuW3VPRQe8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBkfvYWq_hi0KjleVaW14y9EdSL9g','쉬어매드니스 워밍업','https://www.youtube.com/embed/HCuW3VPRQe8',3,23),(14,'2호선과 2호선에 사는 가상의 노숙자들을 배경으로 한 작품','2호선과 2호선에 사는 가상의 노숙자들을 배경으로 한 작품','https://i.ytimg.com/vi/baO_R66XRwg/hqdefault.jpg?sqp=-oaymwE2COADEI4CSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_g6AArgIigIMCAAQARhyIEooQTAP&rs=AOn4CLAxjeJc65qAtD2_baIX8p5AS5BS_Q','2호선 세입자 방배','https://www.youtube.com/embed/baO_R66XRwg',3,24),(15,'파도는 산산히 부서져서 모든게 사라질때까지 매순간 나를 정지시키고 있어.','파도는 산산히 부서져서 모든게 사라질때까지 매순간 나를 정지시키고 있어.','https://i.ytimg.com/vi/_AWeyLGWVPw/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhqIGooajAP&rs=AOn4CLC5SF-O6Kk9tSOwVy7nI657gH5JDw','살수선 파도, 약속','https://www.youtube.com/embed/3PVGmJKTL8w',3,36),(16,'뮤지컬 킹키부츠가 모든 관객분들께 전하는  세상에서 가장 신나고 따뜻한 위로 RAISE YOU UP 네가 힘들 때 곁에 있을게 삶이 지칠 때 힘이 돼 줄게','뮤지컬 킹키부츠가 모든 관객분들께 전하는  세상에서 가장 신나고 따뜻한 위로 RAISE YOU UP 네가 힘들 때 곁에 있을게 삶이 지칠 때 힘이 돼 줄게','https://i.ytimg.com/vi/EvStWwidM98/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAXC10Uw7IDk6Ct__UabGSb2DO_6Q','킹키부츠 Raise You Up','https://www.youtube.com/embed/EvStWwidM98',2,4),(17,'강홍석 롤라의 \'Land of Lola\' 범접불가 흥신흥왕 홍롤라','강홍석 롤라의 \'Land of Lola\' 범접불가 흥신흥왕 홍롤라','https://i.ytimg.com/vi/Z22JuE3b2is/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD2E-dyLnBW5Pjh0ZHsgo2MBPUMIA','킹키부츠 Land of Lola','https://www.youtube.com/embed/Z22JuE3b2is',2,4),(18,' \'누군가 우릴 속이고 있어\' 밀크 (MILCH!) - 박은태',' \'누군가 우릴 속이고 있어\' 밀크 (MILCH!) - 박은태','https://i.ytimg.com/vi/XfpbuuAvi-s/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDA_79sbLfIxtZP-E_w1g8nZjyKHQ','엘리자벳 밀크','https://www.youtube.com/embed/XfpbuuAvi-s',2,5),(19,'뮤지컬 \'아이다\' 2022 프레스콜 중 \'Dance of the robe\'','뮤지컬 \'아이다\' 2022 프레스콜 중 \'Dance of the robe\'','https://i.ytimg.com/vi/gc-zFn7KKks/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDj2l57avbkpEigT7Yg3VLcjN0H5g','아이다 Dance of the robe','https://www.youtube.com/embed/gc-zFn7KKks',2,6),(21,'뮤지컬 프랑켄슈타인 프레스콜 중 단 하나의 미래','뮤지컬 프랑켄슈타인 프레스콜 중 단 하나의 미래','https://i.ytimg.com/vi/BRkyxAEHBHI/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC3zalMG-VVFqgA09xNN0hkaSpJLA','프랑켄 단 하나의 미래','https://www.youtube.com/embed/BRkyxAEHBHI',2,7),(22,'뮤지컬 ‘시카고’ 2021 프레스콜 ‘All That Jazz’ - 최정원 외','뮤지컬 ‘시카고’ 2021 프레스콜 ‘All That Jazz’ - 최정원 외','https://i.ytimg.com/vi/GBHlHGvpt7g/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCCAgQIrITZXK60ZJ6xPuva2wWe8Q','시카고 All That Jazz','https://www.youtube.com/embed/GBHlHGvpt7g',2,8),(23,'웃는 남자 프레스콜 박강현 그 눈을 떠','웃는 남자 프레스콜 박강현 그 눈을 떠','https://i.ytimg.com/vi/FtH8mo8QmOE/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhlIFMoTzAP&rs=AOn4CLBouhcA1FGX7IoKLZkod7T8mIDiDA','웃는 남자 그 눈을 떠','https://www.youtube.com/embed/FtH8mo8QmOE',2,10),(24,'정선아, 차지연 - Popular (뮤지컬 위키드 한국 재연 실황)','정선아, 차지연 - Popular (뮤지컬 위키드 한국 재연 실황)','https://i.ytimg.com/vi/oOlpIJlwXr8/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARh_IBQoXDAP&rs=AOn4CLAvve_WgYWmx-V4tGOE_jp3dxNMiA','위키드 Popular','https://www.youtube.com/embed/oOlpIJlwXr8',2,11),(25,'뮤지컬 지킬&하이드의 압권 장면.. 배우 조승우의 연기력과 가창력이 돋보이는 씬.','뮤지컬 지킬&하이드의 압권 장면.. 배우 조승우의 연기력과 가창력이 돋보이는 씬.','https://i.ytimg.com/vi/qWW4E4aCsAA/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA0i0Knp5wvIYfme_SZM7DDDrvxdA','지킬앤하이드 confrontation','https://www.youtube.com/embed/qWW4E4aCsAA',2,15),(26,'눈물없이 볼 수 없는 윤아와 종석의 상봉씬! \"나도 너 따라서 죽을거야, 저세상가서 같이 살면 되지 뭐\"','눈물없이 볼 수 없는 윤아와 종석의 상봉씬! \"나도 너 따라서 죽을거야, 저세상가서 같이 살면 되지 뭐\"','https://i.ytimg.com/vi/qhU5UyiXhhU/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBvsuWH6ZTxOXQjxPO1A3sMJiP-4w','빅마우스 이별','https://www.youtube.com/embed/qhU5UyiXhhU',1,65),(27,'국회의원이 갑자기 거짓말을 못하게 되면 벌어지는 대참사..','국회의원이 갑자기 거짓말을 못하게 되면 벌어지는 대참사..','https://i.ytimg.com/vi/K_LeVOsIuac/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCsk4H9eeOzWZl94GmQoT0PDjIs-g','정직한 후보 기자회견','https://www.youtube.com/embed/K_LeVOsIuac',4,47),(28,'히스토리 보이즈 프레스콜  1막 5장 불어수업','히스토리 보이즈 프레스콜  1막 5장 불어수업','https://i.ytimg.com/vi/htJsDL9catQ/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBOZHx11bjldPfX95HqlknHqWkbZA','히스토리 보이즈 불어수업','https://www.youtube.com/embed/htJsDL9catQ',3,32),(29,'출소 후, 술을 마시러 간 박새로이(박서준) 빈자리의 술잔에 술을 채우고 혼자 마시는 술맛은... ＂씁니다..＂ 장대희(유재명) 자서전을 외울 정도로 읽은 새로이','출소 후, 술을 마시러 간 박새로이(박서준) 빈자리의 술잔에 술을 채우고 혼자 마시는 술맛은... ＂씁니다..＂ 장대희(유재명) 자서전을 외울 정도로 읽은 새로이','https://i.ytimg.com/vi/kDFNFhsG1rY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA8FYkfjrI-SObj6CxDhqSHqMIiEQ','이태원 클라쓰 술이 쓰다','https://www.youtube.com/embed/kDFNFhsG1rY',1,1),(30,'7년 후, 재회한 수아(권나라)와 박새로이(박서준) 이태원에 가게를 차린다는 스물둘에 허황돼 보였던 그 말을 새로이는 이뤄냈다 그에겐 너무나도 당연한 일이었다..!','7년 후, 재회한 수아(권나라)와 박새로이(박서준) 이태원에 가게를 차린다는 스물둘에 허황돼 보였던 그 말을 새로이는 이뤄냈다 그에겐 너무나도 당연한 일이었다..!','https://i.ytimg.com/vi/mVEfoa_VIMY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDxRvM4Ew6k1mkXfoasYQudnvdyKw','이태원 클라쓰 재회','https://www.youtube.com/embed/mVEfoa_VIMY',1,1),(31,'박새로이(박서준)에게 술을 알려주는 아버지(손현주) 자신과 달리 가슴 펴고 살고 있는 새로이가 자랑스러운 박성열! 앞으로도 소신대로 살라고 조언해주는 아버지…','박새로이(박서준)에게 술을 알려주는 아버지(손현주) 자신과 달리 가슴 펴고 살고 있는 새로이가 자랑스러운 박성열! 앞으로도 소신대로 살라고 조언해주는 아버지…','https://i.ytimg.com/vi/lyU56kiPlaA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB7r4Kl08g26KrZ0aMS9mNkoUbIAA','이태원 클라쓰 아버지와 대화','https://www.youtube.com/embed/lyU56kiPlaA',1,1),(32,'장 회장(유재명)에게 사직서를 제출하는 수아(권나라) 10년 동안 모아온 비리 파일을 함께 주는데..! ＂상황이 악화되지 않게 막으셔야 할 겁니다…＂새로이 아버지(손현주)를 향한 마음의 짐을 덜게 된 수아..!','장 회장(유재명)에게 사직서를 제출하는 수아(권나라) 10년 동안 모아온 비리 파일을 함께 주는데..! ＂상황이 악화되지 않게 막으셔야 할 겁니다…＂새로이 아버지(손현주)를 향한 마음의 짐을 덜게 된 수아..!','https://i.ytimg.com/vi/FgDgUFiyIRw/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAqXMBLJjZcMwW-qltOo8ZvhK2gcA','이태원 클라쓰 사직서','https://www.youtube.com/embed/FgDgUFiyIRw',1,1),(33,'장가를 위해서 뭐든 할 수 있다는 장 회장(유재명) ＂회장님 죗값 아직 치르지 않으셨죠. 다음은 당신 차례일 겁니다.＂자신을 적으로 삼는다는 말에도 끄떡없는 새로이(박서준)＂제 모든 것을 걸고 같은 약속을 합니다.＂','장가를 위해서 뭐든 할 수 있다는 장 회장(유재명) ＂회장님 죗값 아직 치르지 않으셨죠. 다음은 당신 차례일 겁니다.＂자신을 적으로 삼는다는 말에도 끄떡없는 새로이(박서준)＂제 모든 것을 걸고 같은 약속을 합니다.＂','https://i.ytimg.com/vi/DiQ-jM0hraU/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBhtbSsxRhRV2oZq6FYBe_Nc6Ss1A','이태원 클라쓰 선전포고','https://www.youtube.com/embed/DiQ-jM0hraU',1,1),(35,'헌팅남이 쫓아오는 상황에서 새로이(박서준)를 만난 이서(김다미) ＂내가 지금 끼어들면… 오지랖이냐?＂도와달라는 이서의 말에 헌팅남 퇴치해주는 새로이','헌팅남이 쫓아오는 상황에서 새로이(박서준)를 만난 이서(김다미) ＂내가 지금 끼어들면… 오지랖이냐?＂도와달라는 이서의 말에 헌팅남 퇴치해주는 새로이','https://i.ytimg.com/vi/pEN1YmP-ock/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCMIQl_tzi8zeDC-OzssBu8tyfcjA','이태원 클라쓰 오지랖이냐?','https://www.youtube.com/embed/pEN1YmP-ock',1,1),(36,'맞춤법 틀리던 김태리가 불어잘알? 새로운 모습에 치인 남주혁...♥︎','맞춤법 틀리던 김태리가 불어잘알? 새로운 모습에 치인 남주혁...♥︎','https://i.ytimg.com/vi/VLsOrlYJ5lQ/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDJ_yZGP4GECSauSL5f2CnCMbj1xA','스물다섯 스물하나 불어','https://www.youtube.com/embed/VLsOrlYJ5lQ',1,42),(37,'이주명, 한 발 늦은 남주혁에 전하는 태양고 4인방 소식','이주명, 한 발 늦은 남주혁에 전하는 태양고 4인방 소식','https://i.ytimg.com/vi/rasRw2lj-uM/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDboeVmjZ5MS8TzpKPiDDZuj14XPg','스물다섯 스물하나 전여친','https://www.youtube.com/embed/rasRw2lj-uM',1,42),(38,'5첩 반상 집밥은 못참지...남주혁, 이주명 집밥 공격의 K.O.','5첩 반상 집밥은 못참지...남주혁, 이주명 집밥 공격의 K.O.','https://i.ytimg.com/vi/K8nbME3Nkxw/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDQSpT32SotnNQJZGDUnq0i87Pxhw','스물다섯 스물하나 5첩 반상','https://www.youtube.com/embed/K8nbME3Nkxw',1,42),(39,'아빠 떠나보낸 이주명 곁에 달려와준 태양고 3인방','아빠 떠나보낸 이주명 곁에 달려와준 태양고 3인방','https://i.ytimg.com/vi/Zvok4NIdmzc/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCvWNF7J5ZqvQtkT0s0-EfBZK1Kjg','스물다섯 스물하나 장례식','https://www.youtube.com/embed/Zvok4NIdmzc',1,42),(40,'\"너라서 나온 고백이야\" 김태리, 남주혁에 답답한 마음 솔직 토로 (ㄱㅇㅇ♥︎) ','\"너라서 나온 고백이야\" 김태리, 남주혁에 답답한 마음 솔직 토로 (ㄱㅇㅇ♥︎) ','https://i.ytimg.com/vi/rZI6AhiyiHI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCATcAJ4yBQrnTpz0BMycKC1uXyzQ','스물다섯 스물하나 고백','https://www.youtube.com/embed/rZI6AhiyiHI',1,42),(41,'//백도 커플// 김태리♥남주혁, 손 잡고 깜짝 등장','//백도 커플// 김태리♥남주혁, 손 잡고 깜짝 등장','https://i.ytimg.com/vi/NltA29u1BoQ/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB7JRyMoLhsqZ1K8Q5dqQOe9uTFZA','스물다섯 스물하나 동창모임','https://www.youtube.com/embed/NltA29u1BoQ',1,42),(42,'최현욱, 술 먹고 실수한 남주혁 놀리기 대유잼ㅎㅅㅎ ','최현욱, 술 먹고 실수한 남주혁 놀리기 대유잼ㅎㅅㅎ ','https://i.ytimg.com/vi/f0ObL3ORo4Y/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCnJlJIHcP7x0I6YjagVuqCfb_KVA','스물다섯 스물하나 놀림','https://www.youtube.com/embed/f0ObL3ORo4Y',1,42),(43,'//사랑의 힘// 보나 보러 비행기타고 날아온 최현욱♡','//사랑의 힘// 보나 보러 비행기타고 날아온 최현욱♡','https://i.ytimg.com/vi/G78VKi8-iBc/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCJWMUX8U2J0ZDxo9-2MgpKkhbufg','스물다섯 스물하나 비행기타고 옴','https://www.youtube.com/embed/G78VKi8-iBc',1,42),(44,'((심쿵)) 김태리, 남주혁X보나의 가까운 관계에 은근한 질투...?','((심쿵)) 김태리, 남주혁X보나의 가까운 관계에 은근한 질투...?','https://i.ytimg.com/vi/Vr-00gE9Nr8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB5Kaj21-0Yqnd6A67h6YUOkHkbvg','스물다섯 스물하나 질투','https://www.youtube.com/embed/Vr-00gE9Nr8',1,42),(46,'＂나 좋아해요?＂ 이서(김다미)의 갑작스러운 질문에 직진 고백하는 새로이(박서준) ＂아니 사랑하는데＂부끄러워하는 새로이가 마냥 귀여운 이서! ＂나도 사랑해♡＂ (귀여워..//ㅅ//)','＂나 좋아해요?＂ 이서(김다미)의 갑작스러운 질문에 직진 고백하는 새로이(박서준) ＂아니 사랑하는데＂부끄러워하는 새로이가 마냥 귀여운 이서! ＂나도 사랑해♡＂ (귀여워..//ㅅ//)','https://i.ytimg.com/vi/xHHO1iacT5g/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAPRJn-LHt91hPFPfwOkX7DPvMBdA','이태원 클라쓰 고백2','https://www.youtube.com/embed/xHHO1iacT5g',1,1),(47,'이서(김다미)에게 달려온 새로이(박서준) 사외이사 부결 소식에 다시 일을 하려는 이서 그런 이서를 향해 협박을 하는 새로이 ＂움직이면 해고야♨, 제발 좀 쉬어- 부탁이야＂','이서(김다미)에게 달려온 새로이(박서준) 사외이사 부결 소식에 다시 일을 하려는 이서 그런 이서를 향해 협박을 하는 새로이 ＂움직이면 해고야♨, 제발 좀 쉬어- 부탁이야＂','https://i.ytimg.com/vi/_GRPpK_PPSI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCSvdfLpIu1fQGeJ5SjiwAhG6unaQ','이태원 클라쓰 해고 협박','https://www.youtube.com/embed/_GRPpK_PPSI',1,1);
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17  0:18:01
