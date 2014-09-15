CREATE DATABASE  IF NOT EXISTS `CIRCUS` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `CIRCUS`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: CIRCUS
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
-- Table structure for table `ATTENDEE`
--

DROP TABLE IF EXISTS `ATTENDEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATTENDEE` (
  `ATTENDEE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) NOT NULL,
  `SHORT_DESC` varchar(255) NOT NULL,
  `EMAIL_ADDRESS` varchar(45) NOT NULL,
  `QRCODE` blob,
  `RESUME` blob,
  `TITLE` varchar(45) NOT NULL,
  PRIMARY KEY (`ATTENDEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATTENDEE`
--

LOCK TABLES `ATTENDEE` WRITE;
/*!40000 ALTER TABLE `ATTENDEE` DISABLE KEYS */;
INSERT INTO `ATTENDEE` VALUES (1,'AJ','ROCKWAD','I\'m just that awesome','ajrockwad@gmail.com',NULL,NULL,'SR AWESOMENESS'),(2,'Steve','Jones','I need a job','sjones@help.com',NULL,NULL,'CURRENTLY UNEMPLOYED'),(3,'Steve','Douchebag','I\'m a total jerk, you should hire me','stevedbag@gmail.com',NULL,NULL,'VP'),(4,'Steve','Douchebag','I\'m a total jerk, you should hire me','stevedbag@gmail.com',NULL,NULL,'VP'),(5,'Steve','Douchebag','I\'m a total jerk, you should hire me','stevedbag@gmail.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0p\0\0p\0\0\0¡ ?\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0iIDATxœíÜ1’ÛXAjcîeÉ_÷Qj‘é	˜Šoõë\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ü-¿Þð¿ßðì\\ßõóÇ;|q½ÿúïÏÍéùÿ÷®«\0àßp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆúY_Àk¿ç\\Wßƒ^ïa?ýý{úý_MÿÿœÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢>aüêé{Økëë_ï‰?]ý÷[¿¿\'Nà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Qß°Î–=hqˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆ²ÎÕzOûºG~ýûõýó`Nà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Qß°n¹íºÇ½öô=ñúõ§9D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D}Âx}úéÖ{Øõï_«_ÿ£9D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D]·a½Ç}µÞÃ^ß?aNà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q?oøŒõt}Ïy}ýWë=ëúïwµþÿ»Z_ÿúý9]¿8@”€D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D	8@”€D	8@ÔzøõŠïñ¾\\ÿÚú^ïY¯ÕßŸ«éósˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆú„-b{Â7ëßo}ýõï_[ßýû¯N×ï%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Qõ	[Æë=àµõý§÷_ûë¿ª¿¿Wë÷ÿjzýNà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q?oøŒõžïÓ÷ ë÷ÏÍúù¯÷¸¯Öý:qˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆp€(ˆªoù²Wß£®_ÿZzO»Î	 JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ êç\rŸ±ÞSæf½Ç¼þþ«úõ¯ÿ×ß5}þNà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0QïØ¿ªï)¯Õ÷”]ÿÍúÿçúýëß/Í	 JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ êöÀ¯ê{Âë=ç+{Ð7ëç¿þ~œÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢ JÀ¢¾aœ­ëžw}z½g^ÿý×ß¿~~\'Nà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0QöÀYKï1€ëžözO|ýü×{ä\'Nà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Qß°žÞóýõ=è«§ßÿzO|mzÿNà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0QïØâ­ï?]}Ïº~ýkOÿýÒ{äNà\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0Q%à\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿóUNQ¶mA}¢\0\0\0\0IEND®B`‚','PK\0\0\0\0´,Eˆc¸Šâ\0\0\0M\0\0\0\0_rels/.rels\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­’ÁJ1†ï>E˜{7Û\n\"Ò´zY`HfwC7™LkûöQt¡AóÏÌÇ70ëí)LêH¹xŽ–MŠ¢eçã`àµ{ZÜƒ*‚ÑáÄ‘œ©Àv³~¡	¥®”Ñ§¢*#£HzÐºØ‘–†ÅÚé9”ZæA\'´{H¯ÚöNçŸ˜3ÕÎÈ;·Õý­	:Ô–3-R®ÛY|½Du˜ŽísËÇDSÉ /­~/Ä}ï-=²=ŠrÉ‹NBÑ‘»®„)]3ºýO£ùÄ·Ìg§Ýgüe£g_°¹yPK\0\0\0\0´,EúI·Å\0\0\0+\0\0\0\0docProps/core.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0mËjÃ@E÷ý\n£½-;RLœìºJ!Ðº4ª3Ôó`¤ÖéßwbŠ³ÉRÜsW»ÃÅOÕgq1Ð5-T(ZÆÞßžë\'¨DM°fŠøeÃ~G©§˜ù”câ¬Ž¥*ž =¥Îª©G:³7Ò\"”ð3fo´œyÄdèËŒŒ›¶}DÏj¬QƒWaV#ü+-­Êô§E`	ybÏA»¦Ã«œ½Ü-,ÉJ^Ä­Ô<ÏÍ¼]¸²¨Ã—ãë2¾váú;1àþáPK\0\0\0\0´,E;	|•\0\0\0ç\0\0\0\0\0docProps/app.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Î½\nÂ0†áÝ«goSDJÓ.âìPÝCrúÍIÈ‰¥½{#‚àøñÂÃ×t›[ÄŠ‘gO\nŽeÉx;Ó¨àÑßŠNš¬^<¡‚º¶¹G0¦Yd€XÁ”R¨¥d3¡Ó\\æL¹>:òŒ£ôÃ0¼zórHIžªê,qKHm~ |ÅzMÿ¢Ö›Ï?~ö{ÈžloPK\0\0\0\0´,ECWˆ\n\0\0ìI\0\0\0\0word/document.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0í\\Ûn9}ß¯ \ZØ7Ý­HrgäY/‰‰Ç°’\0»/ÅfKœ°ÉÉ–¬<Í?ì~á|ÉV‘Ýº8¶Ç™Mà8nÀ°x-²Šdâ¥ú§Ÿ¯2IÜX¡Õ8ê¶:áŠéD¨Ù8zûæ´9ŠˆuT%TjÅÇÑŠÛèçƒŸ–q¢Y‘qåP66ãhî\\·Û–ÍyFmKç\\A^ªMFDÍ¬­ÓT0~\\Öl÷:AÛpI4nç\"·QIm™ß‡\\bèú™É@i©M’Í¸µz2×ïCp—BE7£B­Ét;ã¨0*.©43ÁŒ¶:uM¦³80#MþgM¯+µ R)ß84ØíøP&7²°…À†Éœæ|CmöÿQ{at‘WÔ2v±fÔ|(rPC=R¸•mEfq—LQè{È>üD$cñÙLiC§¦-ŒB„³vª“þæþß…ñ?·’œ,ã•ãè%§8ù£¶/.Qet0©½®þ•áS­œ…‚Ô2!†\\p\'%ç¼àä5OD‘EÏ`( ’¼UVäM0}~¨¬¸9‹Së­ 7äú.\Z\'¯÷°ì•;¸0:’cš9ƒ»%ðÈèk²ÿJÌæî¸¥\rÏh•\"#‰–Ú+¡w\r\"Å¬”ØÂÂtM„µœ¨BBJn çEÖ f®+,q<Ë¡jÊ\rê,ÌáJ\0YåøŒBÐžfu!¡™…–…ƒIÞ\"çÂÊ\rÂäÂ(×€Ò’pX\rÂ´šx–ÂŠ@SŠ‘B:#˜à{Û )JœPL$…Â¯)g\\QK¨šA‰2¡äIiëmÊ@ÍZªˆ£L8ÑúÂYð#­ƒ“«œ¸ö¥KaRLç?þ©§äp’7È*cµ\"ç°ž“#ÐÈ\r2qÔíJèn¶nêÞŸpt«$î`kÃrG	O),?åÑ\"¶9e øa=[n<: üþ_òÜ}/ƒÜûåàßÿó¥óG¹\'¡ËXR5«’RÓ<½¼.”‰†NZ@žÂÀP\Zè”H«¸ÜSZ‘¤ªv-	ç N\n§a[Ám£‚çm²%R\0kSn4aŒKrJXèPxhXAæt*E\0ç’ˆ@€?/”Î900m;hˆI¨Ð X‰\0df àU/‰å	f  É\09©ƒI€nBsß²sÀ$tîA¢^$ÐûÆÚ\0y0¨,%ô[h…H®¥má	YÝ¶1\n·j ªêÑUg¿ª4º5JmKä•¸BÙ–ž÷@2½­’\"»>ØÔIŠµLKÜÌq„†Rµƒ2n\0–Ï)l\r­ ëó‰’±øP:n¨¨#h|Ÿx4×‚qrÉ?–ú8ZæÖI”§XÌcªØ\\#ÄX÷fuŸõúNä£¿ìF_íF/7Q%ù…¶((N×ü%Ç±G½gÝÁ³ýÞ ‘)‡u‘kæJÍ>ð$éJîL^Ý€Qêå¯n$Í1ÁwuÝ¹òµVÕÀäq®aë*´z¹nþÔèTñ¨*ñkšZî†Pàvb\rTvh¾»Í^wØ½›è;_…_áðtûÃ½Ê­0²?\Zt*vxšræNBY?ÿˆÂõÿ§Æ—†æçZñK4»0D€P»áÞ°ßõ†Q0ÿÆQ8¥:4Žèéo@½$ÀÎ/€Æ\\°Så.$Óx’ÊC0úŽFýæ©cê(+ëk,bÇm¼´y\0“ÜwcÖk\Z_¥&Ã_ xm¾P…;‡ ½©žë^p\rfÆ‘AÉa:]¼².­Š`²Ò§BJßˆTd	T{Cß\0Îã¦Qt­T&`åÂÊ‡‰‹©³n_*ßQ?Ê–6ÜaÈ]M¯¼Ößõª¿K÷b!Ê9SaØ`NÞ¢Š7ÚwWyË‚ok¼[4öu¾_ëööšýgƒæp´ßùB4«%z8rÕ|;¹.h¥ßžËÕ?øEEŽëý›	¼’ä· ùýZg÷˜î}ò\Z”3liçî›Àã°eÕÊé¥ºi£÷t…òï³‹$Ñ¾†9í-4‚Þw‚†É8²°^ÁÀ;SÁ:tUÀTiPEv¤KóÏ¥ã¨BËÃÂéT¬A04QF¼ÐÞ±3¶ãÁ}ß×Æo{m\"{kùlÎ)eüð\nŒ-bD{oN½¿Bh~o»Þ\0o§WxÃ·¶¼ZŒ}Pòç•±Ó©Åƒþ<£f&TSòÔÅƒN«“»*Éé<î÷|ÒR$nw»›{Ó¢#ýÔ«™_ÅkKúyfu³jª	Œ‰O8åV«7hV–lŒFìn)0¶qÊÝF¤Ê¾u÷ e8íö§Ÿåz¦oË4íÛ²§Ú9UùP\nfÁg)ÎÝElÑx™B–å¤‹`ÛBí¼:àP$øî ÙfÄ›b`‰	çm±VçïùMUÖñÙ0•…â˜G’û×\nþŒ{O1¾âG*—kx“!¹šmç@_vHTñkªäkÕ=÷ìÚ©®­ÂÚ*¬­ÂÚ*¬­ÂÚ*|@«pŽºPEÜ*çkˆ	„ÓçÙÊè»*ØÊèªŒ¶=E´ÇBƒÞ@kï˜míÏAÕ9é Ó~äsÒQwoÔ|Ñ1é ×õ«3ºÞ`0ü§¤£ú”ôöSÒ[Fà‡<$Å;ß¯¨¥@=¿½<?$““×\'—õæýúæ}ø57ïƒ~«»Þ»÷÷{Û{÷^÷³­»WîõÖ½Þº­­û“ÓUßŸIùHß)4HÊ‹™ Žø·L|f&’êé9„ÂQŽo¿ýƒ»òúæY±á3óõ+ñúõXýzìñ½Ô¯ÇPú£\'ê&t±~œi‰¯’7o~Ë\'`–« `óB.„¢¦EN¾[?+_B—8’j<¶ÃÌ`6c\n—\\¤`qÔŠ¹VÌP5ìÕŠù¥ÿì‰*æKŽ`kÃáBÞ‡„g„¡æ–§$*n&\\š2¼ï­nåŽâ-kO]*Ak4¡è\'‚Ž„²\'í™Ì_ˆ<=pºÇeðŸGp+¢Ó\0Q\Z¯ß8óe\rò/NÍ[ì»Ò±‹æää3¾BJ[ûlËä5©Óè•W9ño{¶Èq‹xeÑŸOJt\nÔSØSà~À;•x@òîƒ*œ©pš½ó?‚’HHn¨÷5Ý8§”û´rzDF@­´L¡¹Eð\\W.ëO”HOÛ.9Hÿë¹½#—£Â ßlaÖž®Þ¾*wÀ–\'j¾/Ä‚f8‹I\"`œÉT~¸?Mn¯‡å‡(ü<ß>ÂL°b³Qn”-´È˜Ê`˜…¥àBÄ»Îú‘R& ¼qØ,lÇ\'h€p³eà9AWÐGLŒ—Næ,éÉ¤Z»ûUx*ä³É\'(åïE{ýŽ*|E0\naß•\0¬Å¥i¨pU¥×Ô m£½þÀ5å%Š÷qÁOÑà-ÄG!Ž÷=P¸ŒÆÆÑ°ç£¡ÛxGÞïÜ>-+¹´«Ý´7ßi:øÛÿ\0PK\0\0\0\0´,EÅr]mü\0\0”\0\0\0\0word/styles.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0íXmSÛ8þ~¿Âãïà8¥dšv½ÌpCà¾Ë¶’è\"KIŽIý­dù%–c(}»R’¶V+iµÚçÙ•ß}xH©·ÁBÎ¦~x8ò=Ìbž¶œú÷wŸN|O*ÄD9ÃS‹¥ÿáý»b\"Õ–béÁp&\'ÅÔ_)•M‚@Æ+œ\"yÈ3Ì oÁEŠ4Å2(¸H2Ác,%ÌžÒ`<\Z)\"Ì·Ó¤ñSæI‘XçÙAÌÓ)JÔÖÌUMS„GÎ<)‰—|¡a\\ÀccŒGæ-¥¾—Æ“Ë%ãE6ùz¯	?âÊ©’º)n„mÚ–y|âLI¯˜ 2õïH\nî¹Æ…wËS[,&±ì¯fLöÀHª™$hêÏAÔ»gŽ{Ïý@¯ÎÑ©?²ísÙ‘nÛÑˆQÖÉQzÞ#W‚¬qG˜ôJy®(a])N#.ÓL¦:Ò\rbD®º¶rÊE%C¹âÖ®ÅQå¢j‡#+YcÁ:J—DAèwwú¹ŒkIã¹J–WÐ0¬ík[%µ¹ŒP»3,ÔŒ’e½f„$ÖÎ*»)bKx	l`ÝpËº-ó@K|&0ZŸa@J×íR|£-A,^qqÅãµîAaŸ+ûÜÌÁ—¸¶Ææ©OñBéö¶RºÍ5TðŠ|33kL}€é ]žIxq\0œÖÇRv±<-÷@è†v‡¾ËdG´È<ËÉøî:O# ±îéž%FSñÌ9½Gq¥xêˆY®z”±*0f®u=hL©ŒžAŒ\\l³fÊêhŽÌaZ?—\r=Ì*X9Z(,Úï®Š.ˆÚ£ºQY¦„i/kØfÃö}A„TWf\nká¿qe²	†6à¯š3<­vnÃ¸¸Ã©&ÀPµÍ`¡	´([i’RMGŒg/“©­S5üÌ ¾«e­¸Œü úä`JÐ¢îÚzÐ~Ô\0³’avp?ßeèZ‘Ø‰ƒùÌß²1ÝÝl¼‚ÝÆpr›µ®òn*Çx:Ý8›ß£æ8c¿ÞÍ¬\rƒÆN~íØÒô´}]s¦®(~š‡”NÇÞ¹ÓýÞž€Øét<áöVÁ¡\"Zš/— Y–F%ÈZßhŠjlÜL2×V\Zö-Ç<ÝòÂß§@Ñp¿™àœÓÁ	†ú#(çÂ \r\rjŒÕ/¸ø<<Ç Ãç˜î7“ƒÝrx´¬Gï+f²â ÍxWDªž)å=DÓê(ƒi¿;D×€\n#]€»²rgÍ3žlëËRg×-…ºÂ™¦r\'QÖÙ[®êüSŒD·\n2ùƒîVkf@Í &ÅðÄI6ÏœüÐ<7jç¹½×L7X‘A…ŸC’§Õ¥À©î›[A_×K»ì”õoÞþ£ñPaÿ}Ëø§Öè»¥À“ÒX?Ø\rv»Ho\0ýa~ÌÛ ·ÿ90?}Ì¯ôÂ¯(wQ>2¿ßåó<ZíÉê­®×ÄÞs«ý9x_Óú·üÛ…þÿ:€OðÁÇ¿¾ð\ZVp]ö.Yùí\Z¶á ¿OÇ¡€½JÿF€{»´Ïj¨¨2\"œ-$ÕÑ¸*Ÿ+Ý—Å\"§¯,ò{±È~îkn4Çî-@Û_ÏöÜ”žËQ×°–ûaC_‘]\nÿbò½É#tÈ#|y„?øBøæ+Xâ¸‡%Ž¿KToòýÿPK\0\0\0\0´,EhXbO\0\0¹\0\0\0\0word/fontTable.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Å‘ÏNÃ0Æï<E”;KÙ¡jÝ´â\0Øö\0^ê¶–ò§ŠÓ–¾=YGO „4Ðn¶¿ÏþÉöjónè10yWÈ»E&:íKru!ûÇÛ)8‚+Áx‡…‘åf½\ZòÊ»È\"u;Î‡B61¶¹R¬´Àß¢KZåƒ…˜ÒP«Á‡²\r^#s\ZnZfÙ½²@NÎóÄ;°‰²\'‹,^qoÞÂÙ Œ\'O¦Y&ÕÔ–Ì8WÃdŸ„–¢næzàhð$©3ìt7Ú£7ß²–ÍÚ&‹ùýZ<ó%(qp”¾Šâewù1K¬ 3ñ\'èš#iHOìKêì5ÈÏT7ñ\nàÿA~¼¾ù\0PK\0\0\0\0´,E«“êÍÁ\0\0þb\0\0\0\0word/theme/theme1.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0í\\[SÛ8~ß_áñ{×‰/¹0¥(dº3l›:ûØQl9v#Ë^I¡À¯_]|\r\n»0{ò\0º|’Î9ú$KçxüþãuF¬+ÌxšÓC{üûÈ¶0\ró(¥ëCûÛåâÝÌ¶¸@4B$§øÐ¾ÁÜþøá=:	Î°%[S~€íDˆâÀqx(‹ÿ=/0•uqÎ2$d–­ˆ¡Ÿ²×Œ8îh4q2”R»lÏöiŸÇq\Zâ“<Üf˜\nÓ	Ã	)9OÒ‚ÛE™qä~ÿ30£ß·<¥˜ówç˜ËVv-÷)Áª®\nBÂ.B­Ì>Í£ÍXýãl½úD˜u…ˆl¡¶óá½SˆèãúWâJ@´q{¸À“ îÏ5ýõqáž6ýi\0\nC©XìYp<ÿ4/±-Iöûž{Ç£ÉIßêßëËrzâºÓÞkð~ïýnÿ~ƒzøÓÉt6éÊ4øI_ßù|qÒ•Gƒ’ÒÍàÖ3SCâœ|„/-xƒrZd2í©xµ2ô#gÙFÏ·ä5µÄMcÊ¦Ÿ1¹Â\"\r‘õo±õ†ÎÒu\"”è\0£ý±!ßëì•¥ôJØå´m®g ëNÀW½‡hkÇ)!â†à3®Õá9I£…,ÔÝ¨žï\"‘Ér¸nÍN[,¥\"¹HP!‡ëÖ¼ìzÍ­\"çrúí;ûÖ;SJE¹Tû‰D#!)cŠ½ö>Sw£skÞÈSì;˜7ýµÁÆ¸çhã`x´àÞÑœ–5åZ³z:\'®Úâ!\"8Rv7TÓò‚S4µæ(A(né7vçò÷ìÖ%Äóy4`dX<°x`ñ<iñ8ýG¡ÝœõSžÇ7°­‡v,Ÿ¼2™²?N×¶…ÈZžÝCa|x-îh<fÕxäßeõÎãâñÄ´ÒUÕ‘”6ò»¯ìð<\n8O•Â›_0—o.ÝeŠã‡âŽ’&+ëL\'ƒµ¿V™|+0»H¢Ÿ¿®w3‹ß4éÍµÚ‡¬Íþg,µ²w¶xY³\"[vŽ¢z¾£”µOMF^ÚUy½áÜˆõ	2¥“öjà:]‹ÜÒUkóŸkî›vFs·Ê<^soö¶5÷ž®y\0š?QsghSY­¯øâê?éìÔä?æüæCç·ùü×DØçÙ\ZÎÖØ\r‚}O‹‰¥þÈçUÊBÒ¸\'.ós9ûV}Tµ$!ßÍL’Õ…+)ó¬¥œêêß:ÈÏF/ýiÛ»ÃØ£ÑË;°uð©a=Âz„õøZÖ£Ód:-¿°ÎõBBùê‡ûÇhKL	/dÎ$–¬¿ÊÛ§o2=9r‡¹¹·”èæÞ¢ªh®@Žq²ËóEÒ¬\\~£ÎÝgçbP‰³Ê£›%SlÒ‡^„‹TÞ_ÎKÄb–Šò‰¯òOLr)F^¦l+ÉÙíP¹ÂÚªÖ¶~2%.ÿ{‹¶-òåÊò3=/íkgVíÝfŸr¢‘Òédyƒc‚è¬:žÑPŽg.nÖ¶`ÊÍ_Ó¿8Ú\ni¦Rs£±6+o‡Ž—ÒbgºC™8×‰”Frv[g@=„„_¢ÕÅ­Ú¼¦n)Œ©8Â‘\"9ªTYE;Îè1ÛhD×)]/·4¬”÷Á\"4’†Ë°ru¹)lÇŸÂ¥àåVÙ,švýQ,v‘-\\Y»ÚJ^^;&}q[\'Ud¤Î|É)ÖIV†CÚdçÒd+s\nF“”š#±¦(•M¤ù*Z™ÿ‚¥¬ê.tJ–Ü\ZUå¬UM6Û,Íò¦%U\\’ÞâÏµ:¼¯	~÷Âê„O;°ö¢@[U\\ª|êÁÈÔƒá¨ró»ÉîE8••«ä²dîûÑ•´É:ûþ‹u´?Yß6Ug/KÕÎ{QµK‘’%G\\àpdˆ#nÃ8âˆ×pÄŽ\0G†8â7	€#À‘!Ž\rG&ÀàÈG&\rG¦ÀàÈG¦\rGfÀàÈGf\rGæÀàÈGæE•n¹y• ôÇV\Z]—61…Ý23X)Í\\—i”rÖaù:\Z@èNX åÇ¿ÇÛÿ”àÁ¯#½¡x\\•Þ¼ŠøÁt<¯âeÍª]ó¨xèEh®¢ñsE`{ù?m/à¡Š€‡8zàxè#à¡Ž€‡8zàxè#ÀðÐG^³‡¾vÌ‹ë\'yèá}üüëÏü6>wñŸw{½¶íáÁFíù­¨=?Õ‚Ý÷v¾Õþ’D\0à	\0àD\0€#\0Ž@\08\0àD\0€#\0Ž\0G \0y#€Òñïô¿æS}ñçÃoÿ\0PK\0\0\0\0´,EüèÂ\0\0\0\0\0\0word/header1.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0íVYoÜ6~ï¯ TôqWÇÞ²×k×N€ 1âÔ¯—¢VŒ)’%¹W~}‡¤´‡`›ºZØ0´ç#gøÍpNß¬kŽ–T&Å4J»I„¨ ²`b>~ÿ|ÕGÈX,\nÌ¥ ÓhCMôæìt•W…F`+L®§Qe­ÊãØŠÖØt¥¢t¥Ô5¶ êy,Ë’z)É¢¦ÂÆY’cM9¶°¯©˜2Qƒ¶RÇÀ\Z¯àˆ5H+©¥%¡ÆÀìePn<DhqkÌÄ&M¦ÑB‹¼AéÔŒhidi;DÖyp0w8;‹þ£­·F]0j¢â7‡\rÓÄj¾‹…ù€·Vt‡6ÿ{h×Z.T‹V“cÂZc}¿P.@\n®zÆ8³Úfù½˜.w¡GÄ>üD¨&ù»¹\ZÏ80n!r„Uî£ÏNA{Î-Õ[z!…:úÉ‹J‚5úDÿX0M!ð}oØp\r†*Ç‚TR£‚ûÒeõÈ\'þz(¾??íDÃjÅé„@\n9°¤o)›Wv\Zeƒt8ÃÊÍhÅD)¶â’ÜÓÂÛp¼‘ûN\\PÎ½s.W!‹9VnÂu»Z{«ûÆ^¥¤a.ñÞn·¿Ò²žF\nÏiÔ®øX–†Ú³Ñ`<¤§ñÁd+”Ì»c0³tÔï}óÎ[Ðµ»DÀaÖŸô3 \r?²t0j\\¡eI‰ý-,äÞQë¿³Ó+Õ¨aA*$¹ÑˆA@ÓdÔõÓq6ˆÀ50&ðè\\[$g_½ –×€Q1r¥aÝ†iœÏÃTCSüÅË™=¨Kl1Zhö©ï™oT€·ÊÜI†nßu©kTr¦îy°Ë¤¬Áî2ž¿‰8 ¸uJ{MeÜ`\Zq&¨ÇÄË÷Æ†¥í7-äãÜïÀ‚ZÝ§.Mˆ£r	LòÆFrV¸…^ÐóÙ×h‰áÂ{ÃÑåyÖœá`™Ûå›*¬óªàIÍ ýgÀNÈHøk¬¹ð~zF5gÝ…Éf²ØøèÅÛ¨Æ×¶/B‡‚áÆ»:o«/<W¾3Lî}‘b2a™»¨yv~Y»~1i’ù—xãJÚ’™¦–æ~ÈéI›89ž§KO ôÎ™èpZÚ|0éŽ•m§¬Tù`ègV¬°UÞŸdÝ¤Ê¡<éf |ë@õ¡ë¼³-I\'µ‘v£¸Å¾AýÄ|oÏ§tÚ’»jp¸\nª–eäYVý„KèŽ+®c\ZüL³nâü|¤u.?«ÔÞëgÕ3i-<2ÞåI¾9‰Ü-•À4äú¦Ò1h™«å=EnÚnmI‡ˆäêÑÏ\rW‘T˜Àå¹Ú“t“_\"´jªÏm/°¶¹êŠb—ÈøË¬g°‡ø*™hl¼\Zž	àP‹¼ãÔwr\Zþµ„<P÷g<À˜lQï+8ó}\rœå\0¢•\0´ÓÌ]íI_QRsVÀb]ÝÂÚÁ9ëæiÄM#ºYâS+¤M|Lñ“}ì{€ÿJ#0É†ýÿs#0I‡ˆÅ_íÆ>~îýI_¾\r¾¶G¶®á{€4½ö\0Oõ\0“—ìFYxÒvM@²ß$š\0èÛ‡¯MÀ?Ý¤¯MÀ¿ÕÄÁÐ«BŸýô\'PK\0\0\0\0´,E\"ùÕ€(\0\0\0\0\0\0word/footer1.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¥’ËNÃ0E÷|Eä}ë!„¬$ÝT ÖÀ¸Ž“Xµ=ÖØièßã¼…P¿Fs®çÎdÇO£“«D¯Àæä°OI\"­€RÙ:\'ïÏ»\'’øÀmÉ5X™“›ôäXd«&1×z†9iBpŒR/\Zi¸ßƒ“6Æ*@ÃC¼bM¡ª”\'­‘6Ðû4}¤(5Q×7Êy2Ñ:·W\"ïâI`é„ô>¾žÆàBÜüN˜¹†+»`iNZ´l¢ìŒª°`ØX ë9kÆÃé%i“&Wñ(xH‡“Ñ«þ/€µŽ·†;¹ÒêÿÑ^Z7ÓŒØb«áxi]o‹­>+­Âm°vÆ\\óôºZ¼7’Á^kÈÏ:NlìéÖõÒ\"£Ã™#\\Ü}PK\0\0\0\0´,E‘~ƒÒ\0\0©\0\0\0\0word/settings.xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0“ßoÚ0Çß÷WDž4m#	4HÓ\nJ£>¬Û$º½L{0É,b_d;P4íß%6C*š´§Ï÷ó{‰oî^dìA*cñ b¨K¡6ûöœœ°ÀX®J^£‚ŒÁ°»Û›ÃÌ€µd* Ìì±­µÍ,M±ÉÍ\0Pä«PKnÉÔ›ð€ºl4`¥Ê:FÑ8”\\(Ö•Ü8^g¬ÑBYv×Rhú‰ëPæäœoMiø%~F»j)®Uå#pºûÀÑ^jØ‹nßÝ0’ë]ÛÐfJ	Ê\ZoÒ8K¨½átÚ~o¾T	okûÌ×+‹Í©ÏõÐ»ykññØlAqK\r_Í{PsU~)½žKå¸Ë±.¿v‹¢®¯Ü\n?	\r|gæ•“Yón8vŠ|÷öeÅ“Ôñ>}O‡Q_¥?~õ§¨wçž÷žŽqÔ§N\'‰·}|<î8_xkÙ1%ž×žSÏ…ç).w¼Š=Gž>/ñy‰ÏK\\^>¦—Ê@Ÿþ%}ê¥/ÓnÔ$ýùÛIœúbôÅnÏ§•ûë©Žâ’žƒ»kQ{|Âº­¯AŠB£ÁÊ(%ÄªôïáïLqÒµÏ=Ãó#»}óPK\0\0\0\0´,E„}Ý÷\0\0\0§\0\0\0\0word/_rels/document.xml.rels\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­“MjÃ0…÷=…˜}-;iC)Q²)l‹{\0U\ZÿYÒ´Ô·¯ˆiâ@0]hùFÌûÞÌ íþg0ìCìP%0´ÊéÞ¶>êÃã°HÒjiœE#FØï¶ïh$¥–Øõ>²äa£€ŽÈ¿rU‡ƒŒ…óhÓKãÂ )ÉÐr/ÕI¶ÈWe¹áaî·žì¨„£®€Õ£Çÿx»¦é¾9õ5 ¥;‘(Í“§-’€¿J‘¼€ß°Ê¡q–jùiðšáRZ\n±Îº\Z\rÎ·pÖKø§œø¥ÆpÅOºZâ?ç½£9Ò‹üMN>¥ÞÙýÏr*^2ð›ÿµ{øPK\0\0\0\0´,E.üXw³\0\0Ï\0\0\0\0[Content_Types].xml\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0µ•ÏnÛ0Æï{\nC×!VºÃ0qzXÛãÖCö\0ªEÛjõ›:o?Ê^rd»EÒ‹\r“ú}EÑÐæ¶7ºØCˆÊÙŠÝ”kV€­T¶­ØßÝÃê+\"\n+…v*v€Èn·›ÝÁC,ˆµ±b¢ÿÉy¬;0\"–Îƒ¥Lã‚HŸ¡å^Ô/¢þm½þÎkg,®0i°íæ\Zñª±¸ï)<ÖA8+~ë’UÅ„÷ZÕ)ÍS–g¹\0:Î€{+Ïª[ý¯¬$rX;åã×i‡gí™ƒ2ikÏ¾@¼Í)ž\'žŒÏ)ž\'ZÕd‰Ï8Aà$áe3ÓÛ”ÍsÆíg8Ê*˜ ÷³c9M×4ªéêWCHIü]oj²Ñ½ŽýEÑ2v\0ht9¼“Õú£‚’P<Š€¿…!]NÌcp>Òü(ûní8¨‰^y‚€\nN£:ëHÒ7<Û)¤®Iïô~sAò|©yR#ß\Zb¤Ã¤NŸ2F(»XGDââõë8*/–ÐéN<i¸~\r\'éå>àAÃgtaÐ]´ïèWps}ÿQøgàðSüGáE¤ûÆçåE2GK>ÜÇÛ/ÿ\0PK>\0\0\0\0\0´,Eˆc¸Šâ\0\0\0M\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_rels/.relsPK>\0\0\0\0\0´,EúI·Å\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0docProps/core.xmlPK>\0\0\0\0\0´,E;	|•\0\0\0ç\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0docProps/app.xmlPK>\0\0\0\0\0´,ECWˆ\n\0\0ìI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0þ\0\0word/document.xmlPK>\0\0\0\0\0´,EÅr]mü\0\0”\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0É\r\0\0word/styles.xmlPK>\0\0\0\0\0´,EhXbO\0\0¹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/fontTable.xmlPK>\0\0\0\0\0´,E«“êÍÁ\0\0þb\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0O\0\0word/theme/theme1.xmlPK>\0\0\0\0\0´,EüèÂ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0W\0\0word/header1.xmlPK>\0\0\0\0\0´,E\"ùÕ€(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[ \0\0word/footer1.xmlPK>\0\0\0\0\0´,E‘~ƒÒ\0\0©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Å!\0\0word/settings.xmlPK>\0\0\0\0\0´,E„}Ý÷\0\0\0§\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú#\0\0word/_rels/document.xml.relsPK>\0\0\0\0\0´,E.üXw³\0\0Ï\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0%\0\0[Content_Types].xmlPK\0\0\0\0\0\0û\0\0\'\0\0\0\0','VP');
/*!40000 ALTER TABLE `ATTENDEE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-15 17:07:47
