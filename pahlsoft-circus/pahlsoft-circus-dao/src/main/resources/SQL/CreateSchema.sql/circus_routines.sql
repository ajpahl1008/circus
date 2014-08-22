CREATE DATABASE  IF NOT EXISTS `circus` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `circus`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: circus
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `attendee_interests`
--

DROP TABLE IF EXISTS `attendee_interests`;
/*!50001 DROP VIEW IF EXISTS `attendee_interests`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `attendee_interests` (
  `ATTENDEE_ID` tinyint NOT NULL,
  `INTEREST_DESCRIPTION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `attendee_skills`
--

DROP TABLE IF EXISTS `attendee_skills`;
/*!50001 DROP VIEW IF EXISTS `attendee_skills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `attendee_skills` (
  `ATTENDEE_ID` tinyint NOT NULL,
  `SKILL` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `attendee_interests`
--

/*!50001 DROP TABLE IF EXISTS `attendee_interests`*/;
/*!50001 DROP VIEW IF EXISTS `attendee_interests`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `attendee_interests` AS select `attendee`.`ATTENDEE_ID` AS `ATTENDEE_ID`,`interests`.`INTEREST_DESCRIPTION` AS `INTEREST_DESCRIPTION` from ((`attendee` join `relationships_interests` on((`attendee`.`ATTENDEE_ID` = `relationships_interests`.`ATTENDEE_ID`))) join `interests` on((`relationships_interests`.`INTERESTS_ID` = `interests`.`INTERESTS_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `attendee_skills`
--

/*!50001 DROP TABLE IF EXISTS `attendee_skills`*/;
/*!50001 DROP VIEW IF EXISTS `attendee_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `attendee_skills` AS select `attendee`.`ATTENDEE_ID` AS `ATTENDEE_ID`,`skills`.`SKILL` AS `SKILL` from ((`attendee` join `relationships_skills` on((`attendee`.`ATTENDEE_ID` = `relationships_skills`.`ATTENDEE_ID`))) join `skills` on((`relationships_skills`.`SKILLS_ID` = `skills`.`SKILL_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-21 22:18:44
