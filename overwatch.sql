-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: overwatch
-- ------------------------------------------------------
-- Server version	5.7.12

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
-- Table structure for table `abilities`
--

DROP TABLE IF EXISTS `abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hero_id` int(10) unsigned NOT NULL,
  `is_ultimate` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abilities_name_hero_id_unique` (`name`,`hero_id`),
  KEY `abilities_hero_id_foreign` (`hero_id`),
  KEY `abilities_name_index` (`name`),
  CONSTRAINT `abilities_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abilities`
--

LOCK TABLES `abilities` WRITE;
/*!40000 ALTER TABLE `abilities` DISABLE KEYS */;
INSERT INTO `abilities` VALUES (1,'Biotic Rifle','Ana’s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle’s scope to zoom in on targets and make highly accurate shots.',1,0,'2016-07-25 14:48:19','2016-07-25 14:48:19'),(2,'Sleep Dart','Ana fires a dart from her sidearm, rendering an enemy unconscious (though any damage will rouse them).',1,0,'2016-07-25 15:46:24','2016-07-25 15:46:24'),(3,'Biotic Grenade','Ana tosses a biotic bomb that deals damage to enemies and heals allies in a small area of effect. Affected allies briefly receive increased healing from all sources, while enemies caught in the blast cannot be healed for a few moments.',1,0,'2016-07-25 16:05:53','2016-07-25 16:05:53'),(4,'Nano Boost','After Ana hits one of her allies with a combat boost, they temporarily move faster, deal more damage, and take less damage from enemies’ attacks.',1,1,'2016-07-25 16:09:03','2016-07-25 16:09:03'),(5,'Configuration: Recon','In Recon mode, Bastion is fully mobile, outfitted with a submachine gun that fires steady bursts of bullets at medium range.',2,0,'2016-07-25 16:14:16','2016-07-25 16:14:16'),(6,'Configuration: Sentry','In Sentry mode, Bastion is a stationary powerhouse equipped with a gatling gun capable of unleashing a hail of bullets. The gun\'s aim can be \"walked\" across multiple targets, dealing devastating damage at short to medium range.',2,0,'2016-07-25 16:17:10','2016-07-25 16:17:10'),(7,'Reconfigure','Bastion transforms between its two primary combat modes to adapt to changing battlefield conditions.',2,0,'2016-07-25 16:18:58','2016-07-25 16:18:58'),(8,'Self-Repair','Bastion restores its health; it cannot move or fire weapons while the repair process is in effect.',2,0,'2016-07-25 16:24:21','2016-07-25 16:24:21'),(9,'Configuration: Tank','In Tank mode, Bastion extends wheeled treads and a powerful long-range cannon. The cannon’s explosive shells demolish targets in a wide blast radius, but Bastion can only remain in this mode for a limited time.',2,1,'2016-07-25 16:30:48','2016-07-25 16:30:48'),(10,'Fusion Cannons','D.Va\'s mech is equipped with twin short-range rotating cannons. They lay down continuous, high-damage fire without needing to reload, but slow D.Va’s movement while they’re active.',3,0,'2016-07-25 16:32:25','2016-07-25 16:32:25'),(11,'Boosters','D.Va’s mech launches into the air, her momentum carrying her forward. She can turn and change directions or barrel through her enemies, knocking them back.',3,0,'2016-07-25 16:32:42','2016-07-25 16:32:42'),(12,'Defense Matrix','D.Va can activate this forward-facing targeting array to shoot incoming projectiles out of the air.',3,0,'2016-07-25 16:33:06','2016-07-25 16:33:06'),(13,'Eject','D.Va ejects out of her mech when it is destroyed.',3,0,'2016-07-25 16:33:42','2016-07-25 16:33:42'),(14,'Self-Destruct','D.Va ejects from her mech and sets its reactor to explode, dealing massive damage to nearby opponents.',3,1,'2016-07-25 16:34:02','2016-07-25 16:34:02'),(15,'Light Gun','While outside of her mech, D.Va can continue the fight with a mid-range automatic blaster.',3,0,'2016-07-25 16:35:02','2016-07-25 16:35:02'),(16,'Call Mech','If her armored battle suit is destroyed, D.Va can call down a fresh mech and return to the fray.',3,1,'2016-07-25 16:35:32','2016-07-25 16:35:32'),(17,'Shuriken','Genji looses three deadly throwing stars in quick succession. Alternatively, he can throw three shuriken in a wider spread.',4,0,'2016-07-25 16:36:24','2016-07-25 16:36:24'),(18,'Swift Strike','Genji darts forward, slashing with his katana and passing through foes in his path. If Genji eliminates a target, he can instantly use this ability again.',4,0,'2016-07-25 16:36:41','2016-07-25 16:36:41'),(19,'Deflect','With lightning-quick swipes of his sword, Genji reflects any oncoming projectiles and can send them rebounding towards his enemies.',4,0,'2016-07-25 16:36:56','2016-07-25 16:36:56'),(20,'Cyber-Agility','Thanks to his cybernetic abilities, Genji can climb walls and perform jumps in mid-air.',4,0,'2016-07-25 16:37:21','2016-07-25 16:37:21'),(21,'Dragonblade','Genji brandishes his katana for a brief period of time. Until he sheathes his sword, Genji can deliver killing strikes to any targets within his reach.',4,1,'2016-07-25 16:37:38','2016-07-25 16:37:38'),(22,'Storm Bow','Hanzo nocks and fires an arrow at his target.',5,0,'2016-07-25 16:38:36','2016-07-25 16:38:36'),(23,'Scatter Arrow','Hanzo shoots a fragmenting arrow that ricochets off walls and objects and can strike multiple targets at once.',5,0,'2016-07-25 16:38:55','2016-07-25 16:38:55'),(24,'Sonic Arrow','Hanzo launches an arrow that contains a sonar tracking device. Any enemy within its detection radius is visibly marked, making them easier for Hanzo and his allies to hunt down.',5,0,'2016-07-25 16:39:08','2016-07-25 16:39:08'),(25,'Wall Climb','Hanzo can climb any vertical surface.',5,0,'2016-07-25 16:39:25','2016-07-25 16:39:25'),(26,'Dragonstrike','Hanzo summons a Spirit Dragon which travels through the air in a line. It passes through walls in its way, devouring any enemies it encounters.',5,1,'2016-07-25 16:39:41','2016-07-25 16:39:41'),(27,'Frag Launcher','Junkrat\'s Frag Launcher lobs grenades a significant distance. They bounce to reach their destination, and blow up when they strike an enemy.',6,0,'2016-07-25 16:40:03','2016-07-25 16:40:03'),(28,'Concussion Mine','After placing one of his homemade Concussion Mines, Junkrat can trigger it to damage enemies and send them flying... or propel himself through the air.',6,0,'2016-07-25 16:40:18','2016-07-25 16:40:18'),(29,'Steel Trap','Junkrat tosses out a giant, metal-toothed trap. Should an enemy wander too close to the trap, it clamps on, injuring and immobilizing them.',6,0,'2016-07-25 16:40:33','2016-07-25 16:40:33'),(30,'Total Mayhem','Junkrat\'s deranged sense of humor persists past his death. If killed, he drops several live grenades.',6,0,'2016-07-25 16:40:50','2016-07-25 16:40:50'),(31,'RIP-Tire','Junkrat revs up a motorized tire bomb and sends it rolling across the battlefield, climbing over walls and obstacles. He can remotely detonate the RIP-Tire to deal serious damage to enemies caught within the blast, or just wait for it to explode on its own.',6,1,'2016-07-25 16:41:05','2016-07-25 16:41:05'),(32,'Sonic Amplifier','Lúcio can hit his enemies with sonic projectiles or knock them back with a blast of sound.',7,0,'2016-07-25 16:41:45','2016-07-25 16:41:45'),(33,'Crossfade','Lúcio continuously energizes himself, and nearby teammates, with music. He can switch between two songs: one amplifies movement speed, while the other regenerates health.',7,0,'2016-07-25 16:41:56','2016-07-25 16:41:56'),(34,'Amp It Up','Lúcio increases the volume on his speakers, boosting the effects of his songs.',7,0,'2016-07-25 16:42:13','2016-07-25 16:42:13'),(35,'Wall Ride','Lúcio rides along a wall. This has a slight upwards angle, allowing him to ascend the wall.',7,0,'2016-07-25 16:42:30','2016-07-25 16:42:30'),(36,'Sound Barrier','Protective waves radiate out from Lúcio’s Sonic Amplifier, briefly providing him and nearby allies with personal shields.',7,1,'2016-07-25 16:42:43','2016-07-25 16:42:43'),(37,'Peacekeeper','McCree fires off a round from his trusty six-shooter. He can fan the Peacekeeper’s hammer to swiftly unload the entire cylinder.',8,0,'2016-07-25 16:43:38','2016-07-25 16:43:38'),(38,'Combat Roll','McCree dives in the direction he\'s moving, effortlessly reloading his Peacekeeper in the process.',8,0,'2016-07-25 16:43:51','2016-07-25 16:43:51'),(39,'Flashbang','McCree heaves a blinding grenade that explodes shortly after it leaves his hand. The blast staggers enemies in a small radius.',8,0,'2016-07-25 16:44:03','2016-07-25 16:44:03'),(40,'Deadeye','Focus. Mark. Draw. McCree takes a few precious moments to aim; when he\'s ready to fire, he shoots every enemy in his line of sight. The weaker his targets are, the faster he\'ll line up a killshot.',8,1,'2016-07-25 16:44:17','2016-07-25 16:44:17'),(41,'Endothermic Blaster','Mei\'s blaster unleashes a concentrated, short-range stream of frost that damages, slows, and ultimately freezes enemies in place. Mei can also use her blaster to shoot icicle-like projectiles at medium range.',9,0,'2016-07-25 16:44:58','2016-07-25 16:44:58'),(42,'Cryo-Freeze','Mei instantly surrounds herself with a block of thick ice. She heals and ignores damage while encased, but cannot move or use abilities.',9,0,'2016-07-25 16:45:13','2016-07-25 16:45:13'),(43,'Ice Wall','Mei generates an enormous ice wall that obstructs lines of sight, stops movement, and blocks attacks.',9,0,'2016-07-25 16:45:46','2016-07-25 16:45:46'),(44,'Blizzard','Mei deploys a weather-modification drone that emits gusts of wind and snow in a wide area. Enemies caught in the blizzard are slowed and take damage; those who linger too long are frozen solid.',9,1,'2016-07-25 16:46:08','2016-07-25 16:46:08'),(45,'Caduceus Staff','Mercy engages one of two beams that connect to an ally. By maintaining the beams, she can either restore that ally\'s health or increase the amount of damage they deal.',10,0,'2016-07-25 16:46:24','2016-07-25 16:46:24'),(46,'Caduceus Blaster','Mercy shoots a round from her sidearm. It\'s best reserved for emergency personal defense.',10,0,'2016-07-25 16:47:00','2016-07-25 16:47:00'),(47,'Guardian Angel','Mercy flies towards a targeted ally, allowing her to reach them quickly and provide assistance in crucial moments.',10,0,'2016-07-25 16:47:15','2016-07-25 16:47:15'),(48,'Angelic Descent','Propelled by her Valkyrie suit, Mercy slows the speed of her descent from great heights.',10,0,'2016-07-25 16:47:30','2016-07-25 16:47:30'),(49,'Resurrect','Mercy radiates restorative power, bringing nearby dead allies back into the fight with full health.',10,1,'2016-07-25 16:47:42','2016-07-25 16:47:42'),(50,'Rocket Launcher','Pharah’s primary weapon launches rockets that deal significant damage in a wide blast radius.',11,0,'2016-07-25 16:47:58','2016-07-25 16:47:58'),(51,'Concussive Blast','Pharah looses a wrist rocket that knocks back any enemies it strikes.',11,0,'2016-07-25 16:48:13','2016-07-25 16:48:13'),(52,'Jump Jet','Propelled by her suit’s thrusters, Pharah soars high into the air.',11,0,'2016-07-25 16:48:23','2016-07-25 16:48:23'),(53,'Hover Jets','Pharah hovers in mid-air.',11,0,'2016-07-25 16:48:35','2016-07-25 16:48:35'),(54,'Barrage','Pharah directs a continuous salvo of mini-rockets to destroy groups of enemies.',11,1,'2016-07-25 16:48:49','2016-07-25 16:48:49'),(55,'Hellfire Shotguns','Reaper tears enemies apart with twin shotguns.',12,0,'2016-07-25 16:49:33','2016-07-25 16:49:33'),(56,'Wraith Form','Reaper becomes a shadow for a short period of time. While in this form, he takes no damage and is able to pass through enemies, but cannot fire his weapons or use other abilities.',12,0,'2016-07-25 16:50:04','2016-07-25 16:50:04'),(57,'Shadow Step','After marking a destination, Reaper disappears and reappears at that location.',12,0,'2016-07-25 16:50:30','2016-07-25 16:50:30'),(58,'The Reaping','Reaper collects souls from fallen enemies to replenish his health.',12,0,'2016-07-25 16:51:06','2016-07-25 16:51:06'),(59,'Death Blossom','In a blur of motion, Reaper empties both hellfire shotguns at breakneck speed, dealing massive damage to all nearby enemies.',12,1,'2016-07-25 16:51:21','2016-07-25 16:51:21'),(60,'Rocket Hammer','Reinhardt’s Rocket Hammer is an exemplary melee weapon, able to deal punishing damage in a wide arc with every swing.',13,0,'2016-07-25 16:51:55','2016-07-25 16:51:55'),(61,'Barrier Field','Reinhardt projects a broad, forward-facing energy barrier, which can absorb substantial damage before it is destroyed. Although Reinhardt can protect himself and his companions behind the barrier, he cannot attack while sustaining it.',13,0,'2016-07-25 16:52:30','2016-07-25 16:52:30'),(62,'Charge','Reinhardt charges forth in a straight line, pinning the first enemy in his path and knocking others aside. If he collides with a wall, the foe he’s carrying suffers extreme damage.',13,0,'2016-07-25 16:52:42','2016-07-25 16:52:42'),(63,'Fire Strike','By whipping his Rocket Hammer forward, Reinhardt slings a flaming projectile which pierces and damages any enemies it touches.',13,0,'2016-07-25 16:52:54','2016-07-25 16:52:54'),(64,'Earthshatter','Reinhardt forcefully slams his rocket hammer into the ground, knocking down and damaging all enemies in front of him.',13,1,'2016-07-25 16:53:07','2016-07-25 16:53:07'),(65,'Scrap Gun','Roadhog\'s Scrap Gun fires short-range blasts of shrapnel with a wide spread. Alternatively, it can launch a shrapnel ball that detonates farther away, scattering metal fragments from the point of impact.',14,0,'2016-07-25 16:53:26','2016-07-25 16:53:26'),(66,'Take A Breather','Roadhog restores a chunk of his health over a brief period of time.',14,0,'2016-07-25 16:53:42','2016-07-25 16:53:42'),(67,'Chain Hook','Roadhog hurls his chain at a target; if it catches, he yanks them into close range.',14,0,'2016-07-25 16:53:55','2016-07-25 16:53:55'),(68,'Whole Hog','After cramming a top-loader onto his Scrap Gun, Roadhog pours in ammo. For a short time, he can crank out a stream of shrapnel that knocks back enemies.',14,1,'2016-07-25 16:54:08','2016-07-25 16:54:08'),(69,'Heavy Pulse Rifle','Soldier: 76’s rifle remains particularly steady while unloading fully-automatic pulse fire. He can also fire single shots with pinpoint accuracy.',15,0,'2016-07-25 16:54:23','2016-07-25 16:54:23'),(70,'Helix Rockets','Tiny rockets spiral out of Soldier: 76’s Pulse Rifle in a single burst. The rockets’ explosion damages enemies in a small radius.',15,0,'2016-07-25 16:54:35','2016-07-25 16:54:35'),(71,'Sprint','Whether he needs to evade a firefight or get back into one, Soldier: 76 can rush ahead in a burst of speed. His sprint ends if he takes an action other than charging forward.',15,0,'2016-07-25 16:54:50','2016-07-25 16:54:50'),(72,'Biotic Field','Soldier: 76 plants a biotic emitter on the ground. Its energy projection restores health to 76 and any of his squadmates within the field.',15,0,'2016-07-25 16:55:07','2016-07-25 16:55:07'),(73,'Tactical Visor','Soldier: 76’s pinpoint targeting visor “locks” his aim on the threat closest to his crosshairs. If an enemy leaves his line of sight, Soldier: 76 can quickly switch to another target.',15,1,'2016-07-25 16:55:24','2016-07-25 16:55:24'),(74,'Photon Projector','Symmetra’s weapon emits a short-range beam that homes in on a nearby enemy, dealing continuous damage that increases the longer it is connected. The projector can also release a charged energy ball that deals high damage.',16,0,'2016-07-25 16:55:44','2016-07-25 16:55:44'),(75,'Sentry Turret','Symmetra sets up a small turret that automatically fires speed-reducing blasts at the nearest enemy within range. Several turrets can be built on the battlefield at once.',16,0,'2016-07-25 16:55:59','2016-07-25 16:55:59'),(76,'Photon Shield','Symmetra surrounds an ally with a hard-light shield that absorbs damage and persists as long as that ally remains alive.',16,0,'2016-07-25 16:56:12','2016-07-25 16:56:12'),(77,'Teleporter','Symmetra places a teleporter exit pad at her current location, and connects it to a teleporter entry pad at her team’s starting point. Allies can travel through the entry pad to the exit pad instantly, enabling them to return to the fight swiftly after being defeated.',16,1,'2016-07-25 16:56:25','2016-07-25 16:56:25'),(78,'Rivet Gun','Torbjörn fires rivets at long range, or ejects molten metal from his gun in a short, close-range burst.',17,0,'2016-07-25 16:56:41','2016-07-25 16:56:41'),(79,'Forge Hammer','Torbjörn uses his multipurpose hammer to build, upgrade and repair turrets. In a pinch, it can also be swung as a weapon.',17,0,'2016-07-25 16:57:00','2016-07-25 16:57:00'),(80,'Build Turret','Torbjörn constructs an enemy-tracking autocannon. He can use his Forge Hammer to repair or upgrade it, increasing its health and adding a second cannon barrel and a rocket launcher.',17,0,'2016-07-25 16:57:19','2016-07-25 16:57:19'),(81,'Scrap Collector','Collect scrap to gain resources.',17,0,'2016-07-25 16:57:30','2016-07-25 16:57:30'),(82,'Armor Pack','Torbjörn deploys an armor upgrade; either he or his allies can pick it up to absorb some damage.',17,0,'2016-07-25 16:57:43','2016-07-25 16:57:43'),(83,'Molten Core','After overheating his personal forge, Torbjörn gains a significant amount of armor. He also attacks (and builds and repairs turrets) far faster than normal.',17,1,'2016-07-25 16:57:59','2016-07-25 16:57:59'),(84,'Pulse Pistols','Tracer rapid-fires both of her pistols.',18,0,'2016-07-25 16:58:16','2016-07-25 16:58:16'),(85,'Blink','Tracer zips horizontally through space in the direction she’s moving, and reappears several yards away. She stores up to three charges of the blink ability and generates more every few seconds.',18,0,'2016-07-25 16:58:29','2016-07-25 16:58:29'),(86,'Recall','Tracer bounds backward in time, returning her health, ammo and position on the map to precisely where they were a few seconds before.',18,0,'2016-07-25 16:58:45','2016-07-25 16:58:45'),(87,'Pulse Bomb','Tracer lobs a large bomb that adheres to any surface or unfortunate opponent it lands on. After a brief delay, the bomb explodes, dealing high damage to all enemies within its blast radius.',18,1,'2016-07-25 16:58:58','2016-07-25 16:58:58'),(88,'Widow\'s Kiss','Widowmaker’s versatile sniper rifle is ideal for scope-aimed shots at distant targets. Should targets close to medium range, the rifle can also be fired in fully-automatic mode.',19,0,'2016-07-25 16:59:18','2016-07-25 16:59:18'),(89,'Grappling Hook','Widowmaker launches a grappling hook towards the location she’s aiming at – when the hook connects with a scalable surface, she’s quickly drawn towards it, allowing her to expand her view of the battlefield and evade or flank targets.',19,0,'2016-07-25 16:59:33','2016-07-25 16:59:33'),(90,'Venom Mine','Widowmaker adheres a swiftly-arming venom mine to nearly any surface. When a target wanders within range of the mine’s motion trigger, it explodes, delivering poison gas to any enemies in the vicinity.',19,0,'2016-07-25 16:59:43','2016-07-25 16:59:43'),(91,'Infra-Sight','Widowmaker’s recon visor allows her to see the heat signatures of her targets through walls and objects for a moderate amount of time. This enhanced vision is shared with her allies.',19,1,'2016-07-25 17:00:01','2016-07-25 17:00:01'),(92,'Tesla Cannon','Winston’s weapon fires a short-range electric barrage for as long as he holds down the trigger.',20,0,'2016-07-25 17:00:20','2016-07-25 17:00:20'),(93,'Jump Pack','Assisted by his energy pack, Winston lunges through the air, dealing significant damage and staggering nearby enemies when he lands.',20,0,'2016-07-25 17:00:34','2016-07-25 17:00:34'),(94,'Barrier Projector','Winston\'s barrier projector extends a bubble-shaped field that absorbs damage until it\'s destroyed. Allies protected by the barrier can return fire from within it.',20,0,'2016-07-25 17:00:55','2016-07-25 17:00:55'),(95,'Primal Rage','Winston embraces his animal nature, significantly boosting his health and making him very difficult to kill, strengthening his melee attack, and allowing him to use his Jump Pack ability more frequently. While raging, Winston can only make melee and Jump Pack attacks.',20,1,'2016-07-25 17:01:07','2016-07-25 17:01:07'),(96,'Particle Cannon','Zarya’s mighty Particle Cannon unleashes a short-range beam of destructive energy. Alternatively, Zarya can lob an explosive charge to strike multiple opponents.',21,0,'2016-07-25 17:01:23','2016-07-25 17:01:23'),(97,'Particle Barrier','The Particle Cannon can emit a personal barrier that shields Zarya against incoming attacks, redirecting their energy to enhance her weapon’s damage and the width of its beam.',21,0,'2016-07-25 17:01:41','2016-07-25 17:01:41'),(98,'Projected Barrier','Zarya surrounds one of her teammates with an energy barrier that simultaneously absorbs fire and boosts the power of her Particle Cannon.',21,0,'2016-07-25 17:01:56','2016-07-25 17:01:56'),(99,'Energy','Damage blocked increases Particle Cannon damage.',21,0,'2016-07-25 17:02:13','2016-07-25 17:02:13'),(100,'Graviton Surge','Zarya launches a gravity bomb that draws in enemy combatants and deals damage while they’re trapped.',21,1,'2016-07-25 17:02:28','2016-07-25 17:02:28'),(101,'Orb of Destruction','Zenyatta projects his destructive energy orbs either individually, or in a rapid-fire volley after a few seconds spent gathering power.',22,0,'2016-07-25 17:02:49','2016-07-25 17:02:49'),(102,'Orb of Harmony','Zenyatta casts an orb over the shoulder of a targeted ally. So long as Zenyatta maintains line of sight, the orb slowly restores health to his ally. Only one ally can receive the orb\'s benefit at a time.',22,0,'2016-07-25 17:03:00','2016-07-25 17:03:00'),(103,'Orb of Discord','Attaching the orb of discord to an opponent amplifies the amount of damage they receive for as long as Zenyatta maintains line of sight. Only one opponent can suffer the orb\'s effects at a time.',22,0,'2016-07-25 17:03:12','2016-07-25 17:03:12'),(104,'Transcendence','Zenyatta enters a state of heightened existence for a short period of time. While transcendent, Zenyatta cannot use abilities or weapons, but is immune to damage, moves twice as fast, and automatically restores his health and that of nearby allies.',22,1,'2016-07-25 17:03:27','2016-07-25 17:03:27');
/*!40000 ALTER TABLE `abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ability_meta`
--

DROP TABLE IF EXISTS `ability_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ability_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ability_id` int(10) unsigned NOT NULL,
  `ability_meta_type_id` int(10) unsigned NOT NULL,
  `ability_meta_unit_id` int(10) unsigned DEFAULT NULL,
  `min_value` decimal(10,1) NOT NULL,
  `max_value` decimal(10,1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ability_meta_type_value_unique` (`ability_id`,`ability_meta_type_id`,`min_value`,`max_value`),
  CONSTRAINT `ability_meta_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ability_meta`
--

LOCK TABLES `ability_meta` WRITE;
/*!40000 ALTER TABLE `ability_meta` DISABLE KEYS */;
INSERT INTO `ability_meta` VALUES (1,1,1,NULL,8.0,8.0),(2,1,2,NULL,1.0,1.0),(3,1,3,NULL,80.0,80.0),(4,1,4,NULL,75.0,75.0),(5,2,3,NULL,5.0,5.0),(6,2,6,1,5.0,5.0),(7,2,7,1,12.0,12.0),(8,3,3,NULL,60.0,60.0),(9,3,4,NULL,100.0,100.0),(10,3,8,2,3.0,3.0),(11,3,6,1,5.0,5.0),(12,3,7,1,10.0,10.0),(13,4,6,NULL,8.0,8.0),(14,5,1,NULL,20.0,20.0),(15,5,2,NULL,8.0,8.0),(16,5,3,NULL,20.0,20.0),(17,6,1,NULL,200.0,200.0),(18,6,2,NULL,30.0,30.0),(19,6,3,NULL,15.0,15.0),(20,7,9,NULL,0.5,1.0);
/*!40000 ALTER TABLE `ability_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ability_meta_types`
--

DROP TABLE IF EXISTS `ability_meta_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ability_meta_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ability_meta_types`
--

LOCK TABLES `ability_meta_types` WRITE;
/*!40000 ALTER TABLE `ability_meta_types` DISABLE KEYS */;
INSERT INTO `ability_meta_types` VALUES (1,'ammunition'),(2,'rounds per sec'),(3,'damage'),(4,'heal per hit'),(5,'sec cooldown'),(6,'duration'),(7,'cooldown'),(8,'radius'),(9,'cast');
/*!40000 ALTER TABLE `ability_meta_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ability_meta_units`
--

DROP TABLE IF EXISTS `ability_meta_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ability_meta_units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ability_meta_units`
--

LOCK TABLES `ability_meta_units` WRITE;
/*!40000 ALTER TABLE `ability_meta_units` DISABLE KEYS */;
INSERT INTO `ability_meta_units` VALUES (1,'seconds'),(2,'meters');
/*!40000 ALTER TABLE `ability_meta_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hero_id` int(10) unsigned DEFAULT NULL,
  `reward_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `achievements_name_unique` (`name`),
  UNIQUE KEY `achievements_reward_id_unique` (`reward_id`),
  KEY `achievements_hero_id_foreign` (`hero_id`),
  KEY `achievements_reward_id_foreign` (`reward_id`),
  KEY `achievements_name_index` (`name`),
  CONSTRAINT `achievements_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`),
  CONSTRAINT `achievements_reward_id_foreign` FOREIGN KEY (`reward_id`) REFERENCES `rewards` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,'Level 10','Reach level 10.',NULL,30),(2,'Level 25','Reach level 25.',NULL,40),(3,'Level 50','Reach level 50.',NULL,39),(4,'Centenary','Win 100 games in Quick or Competitive Play.',NULL,44),(5,'Die Die Die... Die','Kill 4 enemies with a single use of Reaper\'s Death Blossom in Quick or Competitive Play.',12,324),(6,'The Friend Zone','Play a Quick or Competitive Play game in a group with a friend.',NULL,33),(7,'Slice and Dice','Kill 4 enemies with a single use of Genji\'s Dragonblade in Quick or Competitive Play.',4,122),(8,'Undying','Get a 20 player kill streak in Quick or Competitive Play.',NULL,42),(9,'The Path Is Closed','Destroy 3 of Symmetra\'s Teleporters in a single Quick or Competitive Play game.',NULL,41),(10,'Survival Expert','Use health packs to heal 900 health in a single life in Quick or Competitive Play.',NULL,36),(11,'Decorated','Earn 50 postgame medals in Quick or Competitive Play.',NULL,45),(12,'Decked Out','Collect 50 unlocks for a single hero.',NULL,34),(13,'Their Own Worst Enemy','Kill 2 enemies with a single use of Genji\'s Deflection in Quick or Competitive Play.',4,133),(14,'Waste Not, Want Not','Get 3 solo kills with a single clip of Reaper\'s shotguns in Quick or Competitive Play.',12,335),(15,'Whoa There!','Interrupt an enemy ultimate ability with McCree\'s Flashbang in Quick or Competitive Play.',8,236),(16,'It\'s High Noon','Get 4 killing blows with a single use of McCree\'s Deadeye in Quick or Competitive Play.',8,226),(17,'Death From Above','Kill 4 enemies in a row without touching the ground as Pharah in Quick or Competitive Play.',11,301),(18,'Clearing the Area','Knock an enemy to their death using Pharah\'s Concussive Blast in Quick or Competitive Play.',11,308),(19,'Blackjack','Earn 21 postgame cards in Quick or Competitive Play.',NULL,43),(20,'Rocket Man','Get 2 killing blows with a single use of Soldier: 76\'s Helix Rockets in Quick or Competitive Play.',15,411),(21,'Target Rich Environment','Kill 4 enemies with a single use of Soldier: 76\'s Tactical Visor in Quick or Competitive Play.',15,400),(22,'Special Delivery','Stick 4 of Tracer\'s Pulse Bombs onto enemies in a single Quick or Competitive Play game.',18,478),(23,'Power Overwhelming','Keep Zarya\'s particle cannon above 70 power for 60 seconds in Quick or Competitive Play.',21,561),(24,'The Power of Attraction','Capture 5 enemies in a single use of Zarya\'s Graviton Surge in Quick or Competitive Play.',21,554),(25,'The Floor Is Lava','Get 3 killing blows while wall riding as Lúcio without dying in Quick or Competitive Play.',7,210),(26,'Supersonic','Block 1000 damage with a single use of Lúcio\'s Sound Barrier in Quick or Competitive Play.',7,202),(27,'Group Health Plan','Restore 200 health for 5 players without dying as Mercy in Quick or Competitive Play.',10,286),(28,'Huge Rez','Resurrect 4 players at once with Mercy in Quick or Competitive Play.',10,275),(29,'The Car Wash','Hit an enemy with 7 beams simultaneously as Symmetra in Quick or Competitive Play.',16,435),(30,'Anger Management','Damage 6 enemies during a single use of Winston\'s Primal Rage in Quick or Competitive Play.',20,525),(31,'Huge Success','Teleport 20 players in a single Quick or Competitive Play game as Symmetra.',16,428),(32,'The Iris Embraces You','Restore 1500 health with a single use of Zenyatta\'s Transcendence in Quick or Competitive Play.',22,575),(33,'Lockdown','Win a Capture map on defense without losing the first objective in Quick or Competitive Play.',NULL,32),(34,'Double Cap','Capture both objectives on a Capture map without dying in Quick or Competitive Play.',NULL,29),(36,'Escort Duty','Push a payload 100 meters without leaving it in Quick or Competitive Play.',NULL,35),(37,'Can\'t Touch This','Prevent the attacking team from touching the payload for 1 minute in Quick or Competitive Play.',NULL,38),(38,'Shutout','Win a Control map without the enemy capturing an objective in Quick or Competitive Play.',NULL,37),(39,'World Traveler','Win a Quick or Competitive Play game on 12 different maps.',NULL,31),(40,'Rapid Discord','Get 4 kills or assists with Zenyatta\'s Orb of Discord within 6 seconds in Quick or Competitive Play.',22,591),(41,'Total Recall','Recover 400 health using Tracer\'s Recall without dying in Quick or Competitive Play.',18,486),(42,'Mine Sweeper','Destroy 10 turrets or traps using Winston\'s Tesla Cannon without dying in Quick or Competitive Play.',20,535),(43,'Giving You the Hook','Interrupt an enemy ultimate ability with Roadhog\'s Hook in Quick or Competitive Play.',14,390),(44,'Triple Threat','Kill 2 enemies in each of Bastion\'s configurations without dying in Quick or Competitive Play.',2,91),(45,'Charge!','Kill 4 enemies with a single use of Bastion\'s Configuration: Tank in Quick or Competitive Play.',2,79),(46,'Simple Geometry','Get 2 killing blows with a single use of Hanzo\'s Scatter Arrow in Quick or Competitive Play.',5,161),(47,'The Dragon Is Sated','Kill 4 enemies with one of Hanzo\'s Spirit Dragons in Quick or Competitive Play.',5,149),(48,'Mine Like a Steel Trap','Knock an enemy into your Steel Trap using Junkrat\'s Concussion Mine in Quick or Competitive Play.',6,188),(49,'Roadkill','Kill 4 enemies with a single use of Junkrat\'s RIP-Tire in Quick or Competitive Play.',6,174),(50,'Ice Blocked','Block 1200 damage with a single use of Mei\'s Ice Wall in Quick or Competitive Play.',9,260),(51,'Hog Wild','Knock 2 enemies to their deaths with one use of Roadhog\'s Whole Hog in Quick or Competitive Play.',14,372),(52,'Cold Snap','Freeze 4 enemies at once with Mei in Quick or Competitive Play.',9,253),(53,'Armor Up!','Have one of Torbjörn\'s Armor Packs on 5 allies at the same time in Quick or Competitive Play.',17,463),(54,'Pixel Spray','Kill 4 enemies using Widowmaker\'s Venom Mine during a single Quick or Competitive Play game.',19,511),(55,'Smooth as Silk','Kill an enemy with a scoped headshot while airborne as Widowmaker in Quick or Competitive Play.',19,500),(56,'Shot Down','Prevent 1500 damage with a single use of D.va\'s Defense Matrix in Quick or Competitive Play.',3,113),(58,'Game Over','Kill 4 enemies with a single use of D.va\'s Self Destruct in Quick or Competitive Play.',3,101),(59,'I Am Your Shield','Block 8000 damage with Reinhardt\'s Barrier Field without dying in Quick or Competitive Play.',13,361),(60,'Storm, Earth and Fire','Land Reinhardt\'s Fire Strike and Charge after an Earthshatter stun in Quick or Competitive Play.',13,350),(61,'Raid Wipe','Kill 4 enemies during a single use of Torbjörn\'s Molten Core in Quick or Competitive Play.',17,451),(62,'Enabler','Get 4 kills or assists with a single use of Ana\'s Nano Boost in Quick or Competitive Play.',1,51),(63,'Naptime','Interrupt an enemy ultimate ability with Ana\'s Sleep Dart in Quick or Competitive Play.',1,63);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencies_name_unique` (`name`),
  KEY `currencies_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (2,'competitive point'),(1,'credit');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_sub_roles`
--

DROP TABLE IF EXISTS `hero_sub_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero_sub_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hero_id` int(10) unsigned NOT NULL,
  `sub_role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hero_sub_roles_hero_id_foreign` (`hero_id`),
  KEY `hero_sub_roles_sub_role_id_foreign` (`sub_role_id`),
  CONSTRAINT `hero_sub_roles_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`),
  CONSTRAINT `hero_sub_roles_sub_role_id_foreign` FOREIGN KEY (`sub_role_id`) REFERENCES `sub_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_sub_roles`
--

LOCK TABLES `hero_sub_roles` WRITE;
/*!40000 ALTER TABLE `hero_sub_roles` DISABLE KEYS */;
INSERT INTO `hero_sub_roles` VALUES (1,16,1),(2,17,1),(3,1,2),(4,10,2),(5,7,2),(6,22,2),(7,1,3),(8,19,3),(9,5,3);
/*!40000 ALTER TABLE `hero_sub_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heroes`
--

DROP TABLE IF EXISTS `heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heroes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `health` smallint(6) NOT NULL,
  `armour` smallint(6) NOT NULL,
  `shield` smallint(6) NOT NULL,
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` smallint(6) DEFAULT NULL,
  `height` smallint(6) DEFAULT NULL,
  `affiliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_of_operations` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `difficulty` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `heroes_name_unique` (`name`),
  KEY `heroes_role_id_foreign` (`role_id`),
  KEY `heroes_name_index` (`name`),
  CONSTRAINT `heroes_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroes`
--

LOCK TABLES `heroes` WRITE;
/*!40000 ALTER TABLE `heroes` DISABLE KEYS */;
INSERT INTO `heroes` VALUES (1,'Ana',4,200,0,0,'Ana Amari',60,NULL,'Overwatch','Cairo, Egypt',3,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Ana’s versatile arsenal allows her to affect heroes all over the battlefield. Her Biotic Rifle rounds and Biotic Grenades heal allies and damage or impair enemies; her sidearm tranquilizes key targets, and Nano Boost gives one of her comrades a considerable increase in power.'),(2,'Bastion',2,200,100,0,'SST Laboratories Siege Automaton E54',30,220,NULL,NULL,1,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Repair protocols and the ability to transform between stationary Assault, mobile Recon and devastating Tank configurations provide Bastion with a high probability of victory.'),(3,'D.Va',3,100,400,0,'Hana Song',19,NULL,'Mobile Exo-Force of the Korean Army','Busan, South Korea',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'D.Va’s mech is nimble and powerful—its twin Fusion Cannons blast away with autofire at short range, and she can use its Boosters to barrel over enemies and obstacles, or deflect attacks with her projectile-dismantling Defense Matrix.'),(4,'Genji',1,200,0,0,'Genji Shimada',35,NULL,'Shimada Clan','Shambali Monastery, Nepal',3,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Genji flings precise and deadly Shuriken at his targets, and uses his technologically-advanced katana to deflect projectiles or deliver a Swift Strike that cuts down enemies.'),(5,'Hanzo',2,200,0,0,'Hanzo Shimada',38,173,'Shimada Clan','Hanamura, Japan',3,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Hanzo’s versatile arrows can reveal his enemies or fragment to strike multiple targets. He can scale walls to fire his bow from on high, or summon a titanic spirit dragon.'),(6,'Junkrat',2,200,0,0,'Jamison Fawkes',25,195,'Junkers','Junkertown, Australia',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Junkrat’s area-denying armaments include a Frag Launcher that lobs bouncing grenades, Concussion Mines that send enemies flying, and Steel Traps that stop foes dead in their tracks.'),(7,'Lúcio',4,200,0,0,'Lúcio Correia dos Santos',26,160,NULL,'Rio de Janeiro, Brazil',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'On the battlefield, Lúcio’s cutting-edge Sonic Amplifier buffets enemies with projectiles and knocks foes back with blasts of sound. His songs can both heal his team or boost their movement speed, and he can switch between tracks on the fly.'),(8,'McCree',1,200,0,0,'Jesse McCree',37,185,'Deadlock Gang','Santa Fe, New Mexico',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Armed with his Peacekeeper revolver, McCree takes out targets with deadeye precision and dives out of danger with eagle-like speed.'),(9,'Mei',2,250,0,0,'Mei-Link Zhou',31,160,'Overwatch','Xi\'an, China',3,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Mei’s weather-altering devices slow opponents and protect locations. Her Endothermic Blaster unleashes damaging icicles and frost streams, and she can Cryo-Freeze herself to guard against counterattacks, or obstruct the opposing team\'s movements with an Ice Wall.'),(10,'Mercy',4,200,0,0,'Angela Ziegler',37,170,'Overwatch','Zürich, Switzerland',1,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Mercy’s Valkyrie Suit helps keep her close to teammates like a guardian angel; healing, resurrecting or strengthening them with the beams emanating from her Caduceus Staff.'),(11,'Pharah',1,200,0,0,'Fareeha Amari',32,180,'Helix Security International','Giza, Egypt',1,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Soaring through the air in her combat armor, and armed with a launcher that lays down high-explosive rockets, Pharah is a force to be reckoned with.'),(12,'Reaper',1,250,0,0,'Gabriel Reyes',56,185,'Overwatch','Los Angeles, California, United States of America',1,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Hellfire Shotguns, the ghostly ability to become immune to damage, and the power to step between shadows make Reaper one of the deadliest beings on Earth.'),(13,'Reinhardt',3,300,200,0,'Reinhardt Wilhelm',61,223,'Overwatch','Stuttgart, Germany',1,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Clad in powered armor and swinging his hammer, Reinhardt leads a rocket-propelled charge across the battleground and defends his squadmates with a massive energy barrier.'),(14,'Roadhog',3,600,0,0,'Mako Rutledge',48,220,'Australian Liberation Front','Junkertown, Australia',1,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Roadhog uses his signature Chain Hook to pull his enemies close before shredding them with blasts from his Scrap Gun. He’s hardy enough to withstand tremendous damage, and can recover his health with a short breather.'),(15,'Soldier: 76',1,200,0,0,'Jack Morrison',55,185,'Overwatch',NULL,1,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Armed with cutting-edge weaponry, including an experimental pulse rifle that’s capable of firing spirals of high-powered Helix Rockets, Soldier: 76 has the speed and support know-how of a highly trained warrior.'),(16,'Symmetra',4,100,0,0,'Satya Vaswani',28,170,'Vishkar Corporation','Utopaea, India',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Symmetra utilizes her light-bending Photon Projector to dispatch adversaries, shield her associates, construct teleportation pads and deploy particle-blasting Sentry Turrets.'),(17,'Torbjörn',2,200,0,0,'Torbjörn Lindholm',57,140,'Overwatch','Gothenburg, Sweden',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Torbjörn’s extensive arsenal includes a rivet gun and hammer, as well as a personal forge that he can use to build upgradeable turrets and dole out protective armor packs.'),(18,'Tracer',1,150,0,0,'Lena Oxton',26,162,'Overwatch','London, England',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Toting twin pulse pistols, energy-based time bombs, and rapid-fire banter, Tracer is able to \"blink\" through space and rewind her personal timeline as she battles to right wrongs the world over.'),(19,'Widowmaker',2,200,0,0,'Amélie Lacroix',33,175,'Talon','Annecy, France',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Widowmaker equips herself with whatever it takes to eliminate her targets, including mines that dispense poisonous gas, a visor that grants her squad infra-sight, and a powerful sniper rifle that can fire in fully-automatic mode.'),(20,'Winston',3,400,100,0,'Winston',29,220,'Overwatch','Watchpoint Gibraltar',2,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Winston wields impressive inventions—a jump pack, electricity-blasting Tesla Cannon, portable shield projector and more—with literal gorilla strength.'),(21,'Zarya',3,200,0,200,'Aleksandra Zaryanova',28,195,'Russian Defense Forces','Krasnoyarsk Front, Russia',3,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Deploying powerful personal barriers that convert incoming damage into energy for her massive Particle Cannon, Zarya is an invaluable asset on the front lines of any battle.'),(22,'Zenyatta',4,50,0,150,'Tekhartha Zenyatta',20,172,'The Shambali','Shambali Monastery, Nepal',3,'2016-07-25 12:37:08','2016-07-25 12:37:08',NULL,'Zenyatta calls upon orbs of harmony and discord to heal his teammates and weaken his opponents, all while pursuing a transcendent state of immunity to damage.');
/*!40000 ALTER TABLE `heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_modes`
--

DROP TABLE IF EXISTS `map_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_modes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_modes`
--

LOCK TABLES `map_modes` WRITE;
/*!40000 ALTER TABLE `map_modes` DISABLE KEYS */;
INSERT INTO `map_modes` VALUES (1,'Assault'),(2,'Control'),(3,'Escort'),(4,'Hybrid');
/*!40000 ALTER TABLE `map_modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_stages`
--

DROP TABLE IF EXISTS `map_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_stages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `map_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `map_stages_name_unique` (`name`),
  KEY `map_stages_map_id_foreign` (`map_id`),
  KEY `map_stages_name_index` (`name`),
  CONSTRAINT `map_stages_map_id_foreign` FOREIGN KEY (`map_id`) REFERENCES `maps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_stages`
--

LOCK TABLES `map_stages` WRITE;
/*!40000 ALTER TABLE `map_stages` DISABLE KEYS */;
INSERT INTO `map_stages` VALUES (1,4,'Lighthouse'),(2,4,'Well'),(3,4,'Ruins'),(4,6,'Night Market'),(5,6,'Garden'),(6,6,'Control Center'),(7,9,'Village'),(8,9,'Shrine'),(9,9,'Sanctum');
/*!40000 ALTER TABLE `map_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maps`
--

DROP TABLE IF EXISTS `maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_mode_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maps_name_unique` (`name`),
  KEY `maps_map_mode_id_foreign` (`map_mode_id`),
  KEY `maps_name_index` (`name`),
  CONSTRAINT `maps_map_mode_id_foreign` FOREIGN KEY (`map_mode_id`) REFERENCES `map_modes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maps`
--

LOCK TABLES `maps` WRITE;
/*!40000 ALTER TABLE `maps` DISABLE KEYS */;
INSERT INTO `maps` VALUES (1,'Dorado','Mexico',3,'2016-07-25 14:11:52','2016-07-25 14:11:52'),(2,'Hanamura','Japan',1,'2016-07-25 14:12:38','2016-07-25 14:12:38'),(3,'Hollywood','Los Angeles, California, United States of America',4,'2016-07-25 14:13:14','2016-07-25 14:13:14'),(4,'Ilios','Greece',2,'2016-07-25 14:13:30','2016-07-25 14:13:30'),(5,'King\'s Row','London, England',4,'2016-07-25 14:13:56','2016-07-25 14:13:56'),(6,'Lijiang Tower','Lijiang, China',2,'2016-07-25 14:14:33','2016-07-25 14:14:33'),(7,'Route 66','Route 66, United States of America',3,'2016-07-25 14:15:00','2016-07-25 14:15:00'),(8,'Numbani','Nigeria',4,'2016-07-25 14:15:18','2016-07-25 14:15:18'),(9,'Nepal','Nepal',2,'2016-07-25 14:15:36','2016-07-25 14:15:36'),(10,'Temple of Anubis','Egypt',1,'2016-07-25 14:15:54','2016-07-25 14:15:54'),(11,'Volskaya Industries','Russia',1,'2016-07-25 14:16:12','2016-07-25 14:16:12'),(12,'Watchpoint: Gibraltar','The Rock of Gibraltar',3,'2016-07-25 14:16:40','2016-07-25 14:16:40');
/*!40000 ALTER TABLE `maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2016_07_25_122108_create_roles_table',1),('2016_07_25_122214_create_sub_roles_table',1),('2016_07_25_122215_create_heroes_table',1),('2016_07_25_133639_create_hero_sub_roles_table',1),('2016_07_25_140357_create_map_modes_table',1),('2016_07_25_140446_create_maps_table',1),('2016_07_25_140748_create_map_stages_table',1),('2016_07_25_144000_create_abilities_table',1),('2016_07_26_130142_create_qualities_table',1),('2016_07_26_130143_create_currencies_table',1),('2016_07_26_130816_create_reward_types_table',1),('2016_07_26_130850_create_rewards_table',1),('2016_07_26_140415_create_achievements_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualities`
--

DROP TABLE IF EXISTS `qualities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `qualities_name_unique` (`name`),
  KEY `qualities_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualities`
--

LOCK TABLES `qualities` WRITE;
/*!40000 ALTER TABLE `qualities` DISABLE KEYS */;
INSERT INTO `qualities` VALUES (1,'common'),(3,'epic'),(4,'legendary'),(2,'rare');
/*!40000 ALTER TABLE `qualities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_types`
--

DROP TABLE IF EXISTS `reward_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reward_types_name_unique` (`name`),
  KEY `reward_types_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_types`
--

LOCK TABLES `reward_types` WRITE;
/*!40000 ALTER TABLE `reward_types` DISABLE KEYS */;
INSERT INTO `reward_types` VALUES (5,'emote'),(6,'highlight intro'),(3,'player icon'),(7,'skin'),(1,'spray'),(4,'victory pose'),(2,'voice line');
/*!40000 ALTER TABLE `reward_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rewards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reward_type_id` int(10) unsigned NOT NULL,
  `hero_id` int(10) unsigned DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `quality_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rewards_name_reward_type_id_hero_id_unique` (`name`,`reward_type_id`,`hero_id`),
  KEY `rewards_reward_type_id_foreign` (`reward_type_id`),
  KEY `rewards_hero_id_foreign` (`hero_id`),
  KEY `rewards_currency_id_foreign` (`currency_id`),
  KEY `rewards_quality_id_foreign` (`quality_id`),
  KEY `rewards_name_index` (`name`),
  CONSTRAINT `rewards_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `rewards_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`),
  CONSTRAINT `rewards_quality_id_foreign` FOREIGN KEY (`quality_id`) REFERENCES `qualities` (`id`),
  CONSTRAINT `rewards_reward_type_id_foreign` FOREIGN KEY (`reward_type_id`) REFERENCES `reward_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=959 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards`
--

LOCK TABLES `rewards` WRITE;
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
INSERT INTO `rewards` VALUES (1,'Logo',1,NULL,NULL,NULL,1),(2,'You Are Not Prepared!',1,NULL,NULL,NULL,1),(3,'Punch',1,NULL,25,1,1),(4,'Catcher',1,NULL,25,1,1),(5,'Caution',1,NULL,25,1,1),(6,'Dance',1,NULL,25,1,1),(7,'Dark Logo',1,NULL,25,1,1),(8,'Dark Overwatch',1,NULL,25,1,1),(9,'Dark Title',1,NULL,25,1,1),(10,'FOTS2',1,NULL,25,1,1),(11,'Fuji',1,NULL,25,1,1),(12,'Goldshire Pictures',1,NULL,25,1,1),(13,'Leek',1,NULL,25,1,1),(14,'Lumerico',1,NULL,25,1,1),(15,'Numbani Statue',1,NULL,25,1,1),(16,'Omnic Rights',1,NULL,25,1,1),(17,'Overwatch',1,NULL,25,1,1),(18,'Overwatch Title',1,NULL,25,1,1),(19,'Rhino',1,NULL,25,1,1),(20,'Rikmaru',1,NULL,25,1,1),(21,'Sarcophagus',1,NULL,25,1,1),(22,'Scooter',1,NULL,25,1,1),(23,'Scroll',1,NULL,25,1,1),(24,'Siege Mode',1,NULL,25,1,1),(25,'Six-Gun Killer',1,NULL,25,1,1),(26,'Sol',1,NULL,25,1,1),(27,'Soulstone',1,NULL,25,1,1),(28,'Vivi\'s Adventure',1,NULL,25,1,1),(29,'Beyond the Moon',1,NULL,NULL,NULL,1),(30,'Forge Onward',1,NULL,NULL,NULL,1),(31,'GL HF',1,NULL,NULL,NULL,1),(32,'Jail',1,NULL,NULL,NULL,1),(33,'Man and Omnic',1,NULL,NULL,NULL,1),(34,'Oops',1,NULL,NULL,NULL,1),(35,'Out of My Way',1,NULL,NULL,NULL,1),(36,'Pinata',1,NULL,NULL,NULL,1),(37,'Red O',1,NULL,NULL,NULL,1),(38,'Red X',1,NULL,NULL,NULL,1),(39,'Respect',1,NULL,NULL,NULL,1),(40,'Rise',1,NULL,NULL,NULL,1),(41,'Sorry',1,NULL,NULL,NULL,1),(42,'Tea Time',1,NULL,NULL,NULL,1),(43,'Thanks',1,NULL,NULL,NULL,1),(44,'Victory',1,NULL,NULL,NULL,1),(45,'Well Played',1,NULL,NULL,NULL,1),(46,'Action',1,1,25,1,1),(47,'Ana',1,1,25,1,1),(48,'Bearer',1,1,25,1,1),(49,'Cheer',1,1,25,1,1),(50,'Cracked',1,1,25,1,1),(51,'Cute',1,1,NULL,NULL,1),(52,'Eyepatch',1,1,25,1,1),(53,'Fareeha',1,1,25,1,1),(54,'Gaze',1,1,25,1,1),(55,'Grenade',1,1,25,1,1),(56,'Guardian',1,1,25,1,1),(57,'Hesitation',1,1,25,1,1),(58,'Icon',1,1,25,1,1),(59,'Letter',1,1,25,1,1),(60,'Old Soldier',1,1,25,1,1),(61,'Overhead',1,1,25,1,1),(62,'Photograph',1,1,25,1,1),(63,'Pixel',1,1,NULL,NULL,1),(64,'Rifle',1,1,25,1,1),(65,'Shadow',1,1,25,1,1),(66,'Shhh',1,1,25,1,1),(67,'Sidearm',1,1,25,1,1),(68,'Wedjat',1,1,25,1,1),(69,'Wrist Launcher',1,1,25,1,1),(70,'ZZZ',1,1,25,1,1),(71,'Action',1,2,25,1,1),(72,'Bird',1,2,25,1,1),(73,'Birdwatchers',1,2,25,1,1),(74,'Black',1,2,25,1,1),(75,'Blocks',1,2,25,1,1),(76,'Cannon',1,2,25,1,1),(77,'Crisis',1,2,25,1,1),(78,'Curious',1,2,25,1,1),(79,'Cute',1,2,NULL,NULL,1),(80,'ES4',1,2,25,1,1),(81,'Fire at Will',1,2,25,1,1),(82,'Flight',1,2,25,1,1),(83,'Flower Power',1,2,25,1,1),(84,'Ganymede',1,2,25,1,1),(85,'Giant',1,2,25,1,1),(86,'Icon',1,2,25,1,1),(87,'In Repairs',1,2,25,1,1),(88,'Nest',1,2,25,1,1),(89,'Omnic',1,2,25,1,1),(90,'Overgrown',1,2,25,1,1),(91,'Pixel',1,2,NULL,NULL,1),(92,'Recovery',1,2,25,1,1),(93,'Retro',1,2,25,1,1),(94,'Sprout',1,2,25,1,1),(95,'Wood and Stone',1,2,25,1,1),(96,'Bang',1,3,25,1,1),(97,'Bubble Gum',1,3,25,1,1),(98,'Bunny',1,3,25,1,1),(99,'Bunny (2)',1,3,25,1,1),(100,'Bunny Hop',1,3,25,1,1),(101,'Cute',1,3,NULL,NULL,1),(102,'Diva',1,3,25,1,1),(103,'GG',1,3,25,1,1),(104,'Hana',1,3,25,1,1),(105,'Headset',1,3,25,1,1),(106,'Heart',1,3,25,1,1),(107,'Icon',1,3,25,1,1),(108,'Light Gun',1,3,25,1,1),(109,'Love DVa',1,3,25,1,1),(110,'Meka',1,3,25,1,1),(111,'Nano Cola',1,3,25,1,1),(112,'Photo',1,3,25,1,1),(113,'Pixel',1,3,NULL,NULL,1),(114,'Pixel Bunny',1,3,25,1,1),(115,'Power Up!',1,3,25,1,1),(116,'Salt',1,3,25,1,1),(117,'Star',1,3,25,1,1),(118,'Unload',1,3,25,1,1),(119,'Walk of Fame',1,3,25,1,1),(120,'Watching',1,3,25,1,1),(121,'Assassin',1,4,25,1,1),(122,'Cute',1,4,NULL,NULL,1),(123,'Dragon',1,4,25,1,1),(124,'Dragonblade',1,4,25,1,1),(125,'Draw',1,4,25,1,1),(126,'God of War',1,4,25,1,1),(127,'Green Ninja',1,4,25,1,1),(128,'Icon',1,4,25,1,1),(129,'Kaze No Gotoku',1,4,25,1,1),(130,'Lunge',1,4,25,1,1),(131,'Nin',1,4,25,1,1),(132,'Onmyodo',1,4,25,1,1),(133,'Pixel',1,4,NULL,NULL,1),(134,'Prepared',1,4,25,1,1),(135,'Ryugekiken',1,4,25,1,1),(136,'Shimada',1,4,25,1,1),(137,'Shuriken',1,4,25,1,1),(138,'Shuriken (2)',1,4,25,1,1),(139,'Signature',1,4,25,1,1),(140,'Soul',1,4,25,1,1),(141,'Stance',1,4,25,1,1),(142,'Stoic',1,4,25,1,1),(143,'Swords',1,4,25,1,1),(144,'Target Practice',1,4,25,1,1),(145,'Warrior',1,4,25,1,1),(146,'Archer',1,5,25,1,1),(147,'Challenge',1,5,25,1,1),(148,'Cloud',1,5,25,1,1),(149,'Cute',1,5,NULL,NULL,1),(150,'Dragon',1,5,25,1,1),(151,'Dragons',1,5,25,1,1),(152,'Dragonstrike',1,5,25,1,1),(153,'Drawn',1,5,25,1,1),(154,'Duty',1,5,25,1,1),(155,'Haori',1,5,25,1,1),(156,'Icon',1,5,25,1,1),(157,'Kneeling',1,5,25,1,1),(158,'Kumo',1,5,25,1,1),(159,'Moon',1,5,25,1,1),(160,'Nin',1,5,25,1,1),(161,'Pixel',1,5,NULL,NULL,1),(162,'Sake',1,5,25,1,1),(163,'Scarf',1,5,25,1,1),(164,'Seal',1,5,25,1,1),(165,'Spray',1,5,25,1,1),(166,'Stoic',1,5,25,1,1),(167,'Successor',1,5,25,1,1),(168,'Tea',1,5,25,1,1),(169,'Wanderer',1,5,25,1,1),(170,'Yellow',1,5,25,1,1),(171,'Ahhhh!',1,6,25,1,1),(172,'Bang Bang',1,6,25,1,1),(173,'Crazy',1,6,25,1,1),(174,'Cute',1,6,NULL,NULL,1),(175,'Fireball',1,6,25,1,1),(176,'Firework',1,6,25,1,1),(177,'For You',1,6,25,1,1),(178,'Frag',1,6,25,1,1),(179,'Fuse',1,6,25,1,1),(180,'Grin',1,6,25,1,1),(181,'Icon',1,6,25,1,1),(182,'Junk',1,6,25,1,1),(183,'Kaboom!',1,6,25,1,1),(184,'Mad',1,6,25,1,1),(185,'Mayhem',1,6,25,1,1),(186,'Mine',1,6,25,1,1),(187,'Minefield',1,6,25,1,1),(188,'Pixel',1,6,NULL,NULL,1),(189,'Rolling',1,6,25,1,1),(190,'Smile',1,6,25,1,1),(191,'Smoke',1,6,25,1,1),(192,'Spin',1,6,25,1,1),(193,'Trapper',1,6,25,1,1),(194,'Wanted',1,6,25,1,1),(195,'Vroom!!',1,6,25,1,1),(196,'Acelerar',1,7,25,1,1),(197,'Baixo',1,7,25,1,1),(198,'Bass',1,7,25,1,1),(199,'Break It Down',1,7,25,1,1),(200,'Cereal',1,7,25,1,1),(201,'Confident',1,7,25,1,1),(202,'Cute',1,7,NULL,NULL,1),(203,'Deck',1,7,25,1,1),(204,'Frog',1,7,25,1,1),(205,'Grin',1,7,25,1,1),(206,'Hero',1,7,25,1,1),(207,'Icon',1,7,25,1,1),(208,'In Concert',1,7,25,1,1),(209,'Kambô',1,7,25,1,1),(210,'Pixel',1,7,NULL,NULL,1),(211,'Scratch',1,7,25,1,1),(212,'Signature',1,7,25,1,1),(213,'Signature (2)',1,7,25,1,1),(214,'Spin',1,7,25,1,1),(215,'Tag',1,7,25,1,1),(216,'Triplo',1,7,25,1,1),(217,'Under Control',1,7,25,1,1),(218,'Vinyl',1,7,25,1,1),(219,'Walk of Fame',1,7,25,1,1),(220,'Wave',1,7,25,1,1),(221,'Badge',1,8,25,1,1),(222,'BAMF',1,8,25,1,1),(223,'Bang!',1,8,25,1,1),(224,'Buckle',1,8,25,1,1),(225,'Bullet',1,8,25,1,1),(226,'Cute',1,8,NULL,NULL,1),(227,'Deadeye',1,8,25,1,1),(228,'Draw',1,8,25,1,1),(229,'Enigma',1,8,25,1,1),(230,'Gunslinger',1,8,25,1,1),(231,'High Noon',1,8,25,1,1),(232,'Icon',1,8,25,1,1),(233,'Jesse',1,8,25,1,1),(234,'Noose',1,8,25,1,1),(235,'Outlaw',1,8,25,1,1),(236,'Pixel',1,8,NULL,NULL,1),(237,'Skull',1,8,25,1,1),(238,'Spin',1,8,25,1,1),(239,'Take It Easy',1,8,25,1,1),(240,'Target',1,8,25,1,1),(241,'The Name\'s',1,8,25,1,1),(242,'Thumbs Up',1,8,25,1,1),(243,'Tumbleweed',1,8,25,1,1),(244,'Wanted',1,8,25,1,1),(245,'Your Face Here',1,8,25,1,1),(246,'^_^',1,9,25,1,1),(247,'>_<',1,9,25,1,1),(248,'Beat The Heat',1,9,25,1,1),(249,'Blaster',1,9,25,1,1),(250,'Carefree',1,9,25,1,1),(251,'Casual',1,9,25,1,1),(252,'Confident',1,9,25,1,1),(253,'Cute',1,9,NULL,NULL,1),(254,'Dizzy',1,9,25,1,1),(255,'Explorer',1,9,25,1,1),(256,'Eyes',1,9,25,1,1),(257,'Hairpin',1,9,25,1,1),(258,'Icon',1,9,25,1,1),(259,'Mei\'s Journal',1,9,25,1,1),(260,'Pixel',1,9,NULL,NULL,1),(261,'Popsicle',1,9,25,1,1),(262,'Print',1,9,25,1,1),(263,'Reading',1,9,25,1,1),(264,'Sketch',1,9,25,1,1),(265,'Smile',1,9,25,1,1),(266,'Snow Art',1,9,25,1,1),(267,'Snowball',1,9,25,1,1),(268,'Snowman',1,9,25,1,1),(269,'Soft Serve',1,9,25,1,1),(270,'Walled',1,9,25,1,1),(271,'Arrow',1,10,25,1,1),(272,'Bandage',1,10,25,1,1),(273,'Battle Ready',1,10,25,1,1),(274,'Blaster',1,10,25,1,1),(275,'Cute',1,10,NULL,NULL,1),(276,'Emblem',1,10,25,1,1),(277,'Gauze',1,10,25,1,1),(278,'Halo',1,10,25,1,1),(279,'Heroes Never Die',1,10,25,1,1),(280,'Huge Rez!!',1,10,25,1,1),(281,'Icon',1,10,25,1,1),(282,'Light',1,10,25,1,1),(283,'Medic',1,10,25,1,1),(284,'On Call',1,10,25,1,1),(285,'Patched Up',1,10,25,1,1),(286,'Pixel',1,10,NULL,NULL,1),(287,'Resurrect',1,10,25,1,1),(288,'Smile',1,10,25,1,1),(289,'Stethoscope',1,10,25,1,1),(290,'Sting',1,10,25,1,1),(291,'Support',1,10,25,1,1),(292,'Swiss',1,10,25,1,1),(293,'Valkyrie',1,10,25,1,1),(294,'Wings',1,10,25,1,1),(295,'Ziegler',1,10,25,1,1),(296,'Aerial Superiority',1,11,25,1,1),(297,'Amari',1,11,25,1,1),(298,'Ana',1,11,25,1,1),(299,'Cobra',1,11,25,1,1),(300,'Concussive Blast',1,11,25,1,1),(301,'Cute',1,11,NULL,NULL,1),(302,'Guardian',1,11,25,1,1),(303,'Hieroglyph',1,11,25,1,1),(304,'Icon',1,11,25,1,1),(305,'Incoming',1,11,25,1,1),(306,'Justice...',1,11,25,1,1),(307,'On Guard',1,11,25,1,1),(308,'Pixel',1,11,NULL,NULL,1),(309,'Play Pharah',1,11,25,1,1),(310,'Raptora',1,11,25,1,1),(311,'Rocket Jump',1,11,25,1,1),(312,'Rocket Launcher',1,11,25,1,1),(313,'Salute',1,11,25,1,1),(314,'Scarab',1,11,25,1,1),(315,'Statue',1,11,25,1,1),(316,'Stone',1,11,25,1,1),(317,'Tattoo',1,11,25,1,1),(318,'Wedjat',1,11,25,1,1),(319,'Wings',1,11,25,1,1),(320,'Wrist Launcher',1,11,25,1,1),(321,'Blackwatch',1,12,25,1,1),(322,'Blossom',1,12,25,1,1),(323,'Cloaked',1,12,25,1,1),(324,'Cute',1,12,NULL,NULL,1),(325,'Death Blossom',1,12,25,1,1),(326,'Death Comes',1,12,25,1,1),(327,'Die Die Die',1,12,25,1,1),(328,'Everywhere',1,12,25,1,1),(329,'Grave',1,12,25,1,1),(330,'Hellfire',1,12,25,1,1),(331,'Hooded',1,12,25,1,1),(332,'Horns',1,12,25,1,1),(333,'Icon',1,12,25,1,1),(334,'Oops',1,12,25,1,1),(335,'Pixel',1,12,NULL,NULL,1),(336,'Psst',1,12,25,1,1),(337,'Reap On',1,12,25,1,1),(338,'Reaping',1,12,25,1,1),(339,'Revenge',1,12,25,1,1),(340,'Scythes',1,12,25,1,1),(341,'Shadow Step',1,12,25,1,1),(342,'Shadow',1,12,25,1,1),(343,'Silent',1,12,25,1,1),(344,'Soul Globe',1,12,25,1,1),(345,'Time To Kill',1,12,25,1,1),(346,'Barrier',1,13,25,1,1),(347,'Charge',1,13,25,1,1),(348,'Cracks',1,13,25,1,1),(349,'Crusader',1,13,25,1,1),(350,'Cute',1,13,NULL,NULL,1),(351,'Earthshatter',1,13,25,1,1),(352,'Emblem',1,13,25,1,1),(353,'Fire Strike',1,13,25,1,1),(354,'Glorious',1,13,25,1,1),(355,'Hammer Down',1,13,25,1,1),(356,'Helm',1,13,25,1,1),(357,'Honor',1,13,25,1,1),(358,'Icon',1,13,25,1,1),(359,'Knight',1,13,25,1,1),(360,'Lion',1,13,25,1,1),(361,'Pixel',1,13,NULL,NULL,1),(362,'Roar',1,13,25,1,1),(363,'Royal',1,13,25,1,1),(364,'Shield Up',1,13,25,1,1),(365,'Stein',1,13,25,1,1),(366,'Swing',1,13,25,1,1),(367,'Vigilant',1,13,25,1,1),(368,'White',1,13,25,1,1),(369,'Wilhelm',1,13,25,1,1),(370,'Wrestle',1,13,25,1,1),(371,'Breathin\'',1,14,25,1,1),(372,'Cute',1,14,NULL,NULL,1),(373,'Deep Thoughts',1,14,25,1,1),(374,'Emblem',1,14,25,1,1),(375,'Eyes',1,14,25,1,1),(376,'Free Pig',1,14,25,1,1),(377,'Fresh Meat',1,14,25,1,1),(378,'Gotcha',1,14,25,1,1),(379,'Grand Theft',1,14,25,1,1),(380,'Helmet',1,14,25,1,1),(381,'Here Piggy',1,14,25,1,1),(382,'Hogpower',1,14,25,1,1),(383,'Hooked',1,14,25,1,1),(384,'Icon',1,14,25,1,1),(385,'Left',1,14,25,1,1),(386,'License',1,14,25,1,1),(387,'Mako',1,14,25,1,1),(388,'No Pork',1,14,25,1,1),(389,'Piggy',1,14,25,1,1),(390,'Pixel',1,14,NULL,NULL,1),(391,'Popper',1,14,25,1,1),(392,'Tails',1,14,25,1,1),(393,'Toxic',1,14,25,1,1),(394,'Wanted',1,14,25,1,1),(395,'Wild Hog',1,14,25,1,1),(396,'76',1,15,25,1,1),(397,'All Soldiers',1,15,25,1,1),(398,'American Hero',1,15,25,1,1),(399,'Coin',1,15,25,1,1),(400,'Cute',1,15,NULL,NULL,1),(401,'Grave',1,15,25,1,1),(402,'Grizzled',1,15,25,1,1),(403,'Heal Up',1,15,25,1,1),(404,'Helix',1,15,25,1,1),(405,'Hooah',1,15,25,1,1),(406,'Icon',1,15,25,1,1),(407,'Jacket: 76',1,15,25,1,1),(408,'Move!',1,15,25,1,1),(409,'Muzzle',1,15,25,1,1),(410,'Old Soldier',1,15,25,1,1),(411,'Pixel',1,15,NULL,NULL,1),(412,'Pulse Rifle',1,15,25,1,1),(413,'Rifle: 76',1,15,25,1,1),(414,'Rockets',1,15,25,1,1),(415,'Salute',1,15,25,1,1),(416,'Strike Commander',1,15,25,1,1),(417,'Vigilante',1,15,25,1,1),(418,'Vigilante (2)',1,15,25,1,1),(419,'Visor',1,15,25,1,1),(420,'Wanted',1,15,25,1,1),(421,'Agent',1,16,25,1,1),(422,'Architect',1,16,25,1,1),(423,'Behold',1,16,25,1,1),(424,'Blueprint',1,16,25,1,1),(425,'Builder',1,16,25,1,1),(426,'Car Wash',1,16,25,1,1),(427,'Caution',1,16,25,1,1),(428,'Cute',1,16,NULL,NULL,1),(429,'Design',1,16,25,1,1),(430,'Glove',1,16,25,1,1),(431,'Icon',1,16,25,1,1),(432,'Light',1,16,25,1,1),(433,'Lines',1,16,25,1,1),(434,'Lotus',1,16,25,1,1),(435,'Pixel',1,16,NULL,NULL,1),(436,'Pose',1,16,25,1,1),(437,'Projector',1,16,25,1,1),(438,'Satya',1,16,25,1,1),(439,'Superior',1,16,25,1,1),(440,'The Path',1,16,25,1,1),(441,'Vawani',1,16,25,1,1),(442,'Vishkar',1,16,25,1,1),(443,'Visor',1,16,25,1,1),(444,'Weaver',1,16,25,1,1),(445,'Will',1,16,25,1,1),(446,'Armor',1,17,25,1,1),(447,'Beard',1,17,25,1,1),(448,'Catch A Ride',1,17,25,1,1),(449,'Chef',1,17,25,1,1),(450,'Claw',1,17,25,1,1),(451,'Cute',1,17,NULL,NULL,1),(452,'Fix It Up',1,17,25,1,1),(453,'Forged',1,17,25,1,1),(454,'Gears',1,17,25,1,1),(455,'Get Ready',1,17,25,1,1),(456,'Hammer',1,17,25,1,1),(457,'Hot',1,17,25,1,1),(458,'Icon',1,17,25,1,1),(459,'Ironclad',1,17,25,1,1),(460,'Kanon',1,17,25,1,1),(461,'Mask',1,17,25,1,1),(462,'Molten Core',1,17,25,1,1),(463,'Pixel',1,17,NULL,NULL,1),(464,'Ready to Work',1,17,25,1,1),(465,'Run!',1,17,25,1,1),(466,'Smält',1,17,25,1,1),(467,'Stoic',1,17,25,1,1),(468,'Turret',1,17,25,1,1),(469,'Turrets',1,17,25,1,1),(470,'Upgradera',1,17,25,1,1),(471,'Blink',1,18,25,1,1),(472,'Bombs Away!',1,18,25,1,1),(473,'Cavalry\'s Here',1,18,25,1,1),(474,'Cheers',1,18,25,1,1),(475,'Cheers, Love',1,18,25,1,1),(476,'Clock\'s Tickin\'',1,18,25,1,1),(477,'Confident',1,18,25,1,1),(478,'Cute',1,18,NULL,NULL,1),(479,'Fighter',1,18,25,1,1),(480,'Icon',1,18,25,1,1),(481,'Kneeling',1,18,25,1,1),(482,'Lena',1,18,25,1,1),(483,'Orange',1,18,25,1,1),(484,'Pew! Pew! Pew!',1,18,25,1,1),(485,'Pistols',1,18,25,1,1),(486,'Pixel',1,18,NULL,NULL,1),(487,'Portrait',1,18,25,1,1),(488,'Poster',1,18,25,1,1),(489,'Pulse Bomb',1,18,25,1,1),(490,'Ready for Action',1,18,25,1,1),(491,'Salute',1,18,25,1,1),(492,'Shaded',1,18,25,1,1),(493,'Tagged',1,18,25,1,1),(494,'Whatcha\' Lookin\' At?',1,18,25,1,1),(495,'Wings',1,18,25,1,1),(496,'Baiser',1,19,25,1,1),(497,'Black Widow',1,19,25,1,1),(498,'Blood',1,19,25,1,1),(499,'Crouch',1,19,25,1,1),(500,'Cute',1,19,NULL,NULL,1),(501,'Detected',1,19,25,1,1),(502,'Emblem',1,19,25,1,1),(503,'Gaze',1,19,25,1,1),(504,'Hourglass',1,19,25,1,1),(505,'Icon',1,19,25,1,1),(506,'In My Sights',1,19,25,1,1),(507,'Je Te Vois',1,19,25,1,1),(508,'Kneeling',1,19,25,1,1),(509,'No One Escapes',1,19,25,1,1),(510,'Noire',1,19,25,1,1),(511,'Pixel',1,19,NULL,NULL,1),(512,'Portrait',1,19,25,1,1),(513,'Scope',1,19,25,1,1),(514,'Sniper',1,19,25,1,1),(515,'Spider',1,19,25,1,1),(516,'Swing',1,19,25,1,1),(517,'Une Balle',1,19,25,1,1),(518,'Veuve (Widow',1,19,25,1,1),(519,'Widow',1,19,25,1,1),(520,'Widow\'s Kiss',1,19,25,1,1),(521,'Angry',1,20,25,1,1),(522,'Ape Crossing',1,20,25,1,1),(523,'Baby',1,20,25,1,1),(524,'Banana',1,20,25,1,1),(525,'Cute',1,20,NULL,NULL,1),(526,'Explorer',1,20,25,1,1),(527,'Fastball',1,20,25,1,1),(528,'Harold',1,20,25,1,1),(529,'Horizon',1,20,25,1,1),(530,'Icon',1,20,25,1,1),(531,'Lexigrams',1,20,25,1,1),(532,'Lightning',1,20,25,1,1),(533,'Mine!',1,20,25,1,1),(534,'PB',1,20,25,1,1),(535,'Pixel',1,20,NULL,NULL,1),(536,'Primal Rage',1,20,25,1,1),(537,'Q.E.D.',1,20,25,1,1),(538,'Rage',1,20,25,1,1),(539,'Research',1,20,25,1,1),(540,'Roar',1,20,25,1,1),(541,'Science!',1,20,25,1,1),(542,'Serious',1,20,25,1,1),(543,'Swing',1,20,25,1,1),(544,'White',1,20,25,1,1),(545,'Wow',1,20,25,1,1),(546,'512',1,21,25,1,1),(547,'Alexandra',1,21,25,1,1),(548,'Avenger',1,21,25,1,1),(549,'Avenger (2)',1,21,25,1,1),(550,'Barrier',1,21,25,1,1),(551,'Bear',1,21,25,1,1),(552,'Cannon',1,21,25,1,1),(553,'Champion',1,21,25,1,1),(554,'Cute',1,21,NULL,NULL,1),(555,'Defender',1,21,25,1,1),(556,'Focused',1,21,25,1,1),(557,'Gun Show',1,21,25,1,1),(558,'Icon',1,21,25,1,1),(559,'Lift',1,21,25,1,1),(560,'Pink',1,21,25,1,1),(561,'Pixel',1,21,NULL,NULL,1),(562,'Pumped',1,21,25,1,1),(563,'Shield',1,21,25,1,1),(564,'Smile',1,21,25,1,1),(565,'Strength',1,21,25,1,1),(566,'Surge',1,21,25,1,1),(567,'Tobelstein',1,21,25,1,1),(568,'We Are Strong',1,21,25,1,1),(569,'Weights',1,21,25,1,1),(570,'Wrestle',1,21,25,1,1),(571,'Adorable',1,22,25,1,1),(572,'Aura',1,22,25,1,1),(573,'Balance',1,22,25,1,1),(574,'Contemplative',1,22,25,1,1),(575,'Cute',1,22,NULL,NULL,1),(576,'Discord',1,22,25,1,1),(577,'Enlightened',1,22,25,1,1),(578,'Fist Bump',1,22,25,1,1),(579,'Flow',1,22,25,1,1),(580,'Foot',1,22,25,1,1),(581,'Graphic',1,22,25,1,1),(582,'Guru',1,22,25,1,1),(583,'Hand',1,22,25,1,1),(584,'Harmony',1,22,25,1,1),(585,'Icon',1,22,25,1,1),(586,'Inner Fire',1,22,25,1,1),(587,'Nine',1,22,25,1,1),(588,'Orb',1,22,25,1,1),(589,'Orbs',1,22,25,1,1),(590,'Peace',1,22,25,1,1),(591,'Pixel',1,22,NULL,NULL,1),(592,'Taunt',1,22,25,1,1),(593,'Tekhartha',1,22,25,1,1),(594,'Throw',1,22,25,1,1),(595,'Together',1,22,25,1,1),(596,'Justice Delivered',2,1,NULL,NULL,1),(597,'Children, Behave',2,1,NULL,1,1),(598,'Everyone Dies',2,1,NULL,1,1),(599,'It Takes A Woman To Know It',2,1,NULL,1,1),(600,'Justice Rains From Above',2,1,NULL,1,1),(601,'Mother Knows Best',2,1,NULL,1,1),(602,'No Scope Needed',2,1,NULL,1,1),(603,'Someone To Tuck You In? (Need someone to tuck you in?)',2,1,NULL,1,1),(604,'What Are You Thinking?',2,1,NULL,1,1),(605,'Witness Me',2,1,NULL,1,1),(606,'You Know Nothing',2,1,NULL,1,1),(607,'Doo-Woo',2,2,NULL,NULL,1),(608,'Beeple',2,2,NULL,1,1),(609,'Boo Boo Doo De Doo',2,2,NULL,1,1),(610,'Bweeeeeeeeeee',2,2,NULL,1,1),(611,'Chirr Chirr Chirr',2,2,NULL,1,1),(612,'Dun Dun Boop Boop',2,2,NULL,1,1),(613,'Dweet Dweet Dweet!',2,2,NULL,1,1),(614,'Hee Hoo Hoo',2,2,NULL,1,1),(615,'Ooh-Ooo-Hoo-Hoo',2,2,NULL,1,1),(616,'Sh-Sh-Sh',2,2,NULL,1,1),(617,'Zwee?',2,2,NULL,1,1),(618,';)',2,3,NULL,1,1),(619,'A New Challenger!',2,3,NULL,1,1),(620,'AFK',2,3,NULL,1,1),(621,'Aw, Yeah!',2,3,NULL,1,1),(622,'D.Va: 1, Bad Guys: 0',2,3,NULL,1,1),(623,'GG!',2,3,NULL,1,1),(624,'I Play to Win',2,3,NULL,1,1),(625,'Is This Easy Mode?',2,3,NULL,1,1),(626,'LOL',2,3,NULL,1,1),(627,'No Hacks Required',2,3,NULL,1,1),(628,'A Steady Blade',2,4,NULL,NULL,1),(629,'Come On!',2,4,NULL,1,1),(630,'Damn!',2,4,NULL,1,1),(631,'Prepare yourself!',2,4,NULL,1,1),(632,'Let\'s Fight!',2,4,NULL,1,1),(633,'Measure Twice, Cut Once',2,4,NULL,1,1),(634,'My Soul Seeks Balance',2,4,NULL,1,1),(635,'Not Good Enough',2,4,NULL,1,1),(636,'Simple',2,4,NULL,1,1),(637,'Yeah!',2,4,NULL,1,1),(638,'You Are Only Human',2,4,NULL,1,1),(639,'Expect Nothing Less',2,5,NULL,NULL,1),(640,'Flow Like Water',2,5,NULL,1,1),(641,'From One Thing...',2,5,NULL,1,1),(642,'Hm...',2,5,NULL,1,1),(643,'I Do What I Must',2,5,NULL,1,1),(644,'Never In Doubt',2,5,NULL,1,1),(645,'Never Second Best',2,5,NULL,1,1),(646,'Remember This Moment',2,5,NULL,1,1),(647,'Sake!',2,5,NULL,1,1),(648,'Spirit Dragon',2,5,NULL,1,1),(649,'Step Into the Dojo',2,5,NULL,1,1),(650,'Tick-Tock-Tick-Tock',2,6,NULL,NULL,1),(651,'...Blow It Up Again',2,6,NULL,1,1),(652,'Anyone Want Some BBQ?',2,6,NULL,1,1),(653,'Brrring!',2,6,NULL,1,1),(654,'Coming Up Explodey!',2,6,NULL,1,1),(655,'Happy Birthday',2,6,NULL,1,1),(656,'Have A Nice Day!',2,6,NULL,1,1),(657,'It\'s The Little Things',2,6,NULL,1,1),(658,'Kaboom',2,6,NULL,1,1),(659,'Ooh, Shiny',2,6,NULL,1,1),(660,'Smile!',2,6,NULL,1,1),(661,'To The Rhythm',2,7,NULL,NULL,1),(662,'Can\'t Stop, Won\'t Stop',2,7,NULL,1,1),(663,'Hit Me!',2,7,NULL,1,1),(664,'I\'m On Top Of The World!',2,7,NULL,1,1),(665,'I Could Do This All Day',2,7,NULL,1,1),(666,'Jackpot!',2,7,NULL,1,1),(667,'Not Hearing That Noise',2,7,NULL,1,1),(668,'Oh, Yeah!',2,7,NULL,1,1),(669,'Tinnitus',2,7,NULL,1,1),(670,'Why Are You So Angry?',2,7,NULL,1,1),(671,'You Gotta Believe!',2,7,NULL,1,1),(672,'Watch And Learn',2,8,NULL,NULL,1),(673,'Ain\'t I Killed You Before',2,8,NULL,1,1),(674,'Happens To The Best Of Us',2,8,NULL,1,1),(675,'I\'m The Quick...',2,8,NULL,1,1),(676,'I\'m Your Huckleberry',2,8,NULL,1,1),(677,'I\'ve Got A Bullet...',2,8,NULL,1,1),(678,'I Tried Being Reasonable',2,8,NULL,1,1),(679,'Reach For The Sky',2,8,NULL,1,1),(680,'Sure As Hell Ain\'t Ugly',2,8,NULL,1,1),(681,'Wanted: Dead Or Alive',2,8,NULL,1,1),(682,'You Done?',2,8,NULL,1,1),(683,'Hang In There',2,9,NULL,NULL,1),(684,'Fight For Our World',2,9,NULL,1,1),(685,'A-Mei-Zing!',2,9,NULL,1,1),(686,'Chill Out!',2,9,NULL,1,1),(687,'Learned Your Lesson',2,9,NULL,1,1),(688,'Okay!',2,9,NULL,1,1),(689,'Ouch, Are You Okay?',2,9,NULL,1,1),(690,'Sorry Sorry Sorry Sorry',2,9,NULL,1,1),(691,'That Was Great',2,9,NULL,1,1),(692,'Yay!',2,9,NULL,1,1),(693,'You Have To Let It Go',2,9,NULL,1,1),(694,'I Have My Eye On You',2,10,NULL,NULL,1),(695,'Consultation Fee',2,10,NULL,1,1),(696,'Doctor\'s Orders',2,10,NULL,1,1),(697,'How Barbaric',2,10,NULL,1,1),(698,'Miracle Worker',2,10,NULL,1,1),(699,'Need A Second Opinion?',2,10,NULL,1,1),(700,'On A Scale Of 1-10',2,10,NULL,1,1),(701,'Super!',2,10,NULL,1,1),(702,'Take Two',2,10,NULL,1,1),(703,'The Doctor Is In',2,10,NULL,1,1),(704,'The Doctor Will See You',2,10,NULL,1,1),(705,'Security In My Hands ',2,11,NULL,NULL,1),(706,'Aerial Superiority Achieved',2,11,NULL,1,1),(707,'Fly Like An Egyptian',2,11,NULL,1,1),(708,'Flying The Friendly Skies',2,11,NULL,1,1),(709,'Got You On My Radar',2,11,NULL,1,1),(710,'Leave This To A Professional',2,11,NULL,1,1),(711,'Not A Chance',2,11,NULL,1,1),(712,'Play Nice, Play Pharah',2,11,NULL,1,1),(713,'Rocket Jump?',2,11,NULL,1,1),(714,'Shot Down',2,11,NULL,1,1),(715,'Sorry, But I Need To Jet',2,11,NULL,1,1),(716,'What Are You Looking At',2,12,NULL,NULL,1),(717,'Dead Man Walking',2,12,NULL,1,1),(718,'Give Me A Break',2,12,NULL,1,1),(719,'Haven\'t I Killed You',2,12,NULL,1,1),(720,'I\'m Back In Black',2,12,NULL,1,1),(721,'If It Lives, I Can Kill It',2,12,NULL,1,1),(722,'Next',2,12,NULL,1,1),(723,'Psychopath',2,12,NULL,1,1),(724,'Seen A Ghost?',2,12,NULL,1,1),(725,'Too Easy',2,12,NULL,1,1),(726,'Was That All?',2,12,NULL,1,1),(727,'I Salute You',2,13,NULL,NULL,1),(728,'Are You Afraid?',2,13,NULL,1,1),(729,'Bring Me Another',2,13,NULL,1,1),(730,'Catch Phrase!',2,13,NULL,1,1),(731,'Crusader Online',2,13,NULL,1,1),(732,'Crushing Machine',2,13,NULL,1,1),(733,'German Engineering',2,13,NULL,1,1),(734,'Honor And Glory',2,13,NULL,1,1),(735,'Respect Your Elders',2,13,NULL,1,1),(736,'Show You How It\'s Done',2,13,NULL,1,1),(737,'This Old Dog',2,13,NULL,1,1),(738,'The Apocalypse',2,14,NULL,NULL,1),(739,'Candy From A Baby',2,14,NULL,1,1),(740,'Got Something To Say?',2,14,NULL,1,1),(741,'Hahaha!',2,14,NULL,1,1),(742,'Hook, Line, And Sinker',2,14,NULL,1,1),(743,'Life Is Pain, So Is Death',2,14,NULL,1,1),(744,'Piece Of Cake',2,14,NULL,1,1),(745,'Push Off',2,14,NULL,1,1),(746,'Say \"Bacon\"...',2,14,NULL,1,1),(747,'Violence Is The Answer',2,14,NULL,1,1),(748,'I\'ve Still Got It',2,15,NULL,NULL,1),(749,'Get Off My Lawn',2,15,NULL,1,1),(750,'I\'m An Army Of One',2,15,NULL,1,1),(751,'I Didn\'t Start This War...',2,15,NULL,1,1),(752,'Not On My Watch',2,15,NULL,1,1),(753,'Old Soldiers',2,15,NULL,1,1),(754,'Smells Like Victory',2,15,NULL,1,1),(755,'That\'s \"Sir\" To You',2,15,NULL,1,1),(756,'What Are You Lookin\' At?',2,15,NULL,1,1),(757,'You\'re The Other One',2,15,NULL,1,1),(758,'You Didn\'t Make The Cut',2,15,NULL,1,1),(759,'Such A Lack Of Imagination',2,16,NULL,NULL,1),(760,'Everything By Design',2,16,NULL,1,1),(761,'Exquisite',2,16,NULL,1,1),(762,'How Unsightly',2,16,NULL,1,1),(763,'I Don\'t Think So',2,16,NULL,1,1),(764,'Impressive',2,16,NULL,1,1),(765,'Perfect Harmony',2,16,NULL,1,1),(766,'Precisely',2,16,NULL,1,1),(767,'Put You In Your Place',2,16,NULL,1,1),(768,'Welcome To My Reality',2,16,NULL,1,1),(769,'Why Do You Struggle?',2,16,NULL,1,1),(770,'Hard Work Pays Off',2,17,NULL,NULL,1),(771,'A Chicken Out Of A Feather',2,17,NULL,1,1),(772,'Completion Date?',2,17,NULL,1,1),(773,'Don\'t Get Caught',2,17,NULL,1,1),(774,'Engineers',2,17,NULL,1,1),(775,'I\'m Giving It All I\'ve Got!',2,17,NULL,1,1),(776,'I\'m Swedish!',2,17,NULL,1,1),(777,'Leave This To An Expert',2,17,NULL,1,1),(778,'Let\'s Not Buy The Pig',2,17,NULL,1,1),(779,'Some Assembly Required',2,17,NULL,1,1),(780,'Working As Intended',2,17,NULL,1,1),(781,'You Got It',2,18,NULL,NULL,1),(782,'Aw, Rubbish',2,18,NULL,1,1),(783,'Be Right Back!',2,18,NULL,1,1),(784,'Check Me Out',2,18,NULL,1,1),(785,'Cheers, Love!',2,18,NULL,1,1),(786,'DÃ©jÃ Vu',2,18,NULL,1,1),(787,'Keep Calm',2,18,NULL,1,1),(788,'She Shoots, She Scores',2,18,NULL,1,1),(789,'The World Needs Heroes',2,18,NULL,1,1),(790,'Under Control',2,18,NULL,1,1),(791,'You Need A Time Out',2,18,NULL,1,1),(792,'A Single Death',2,19,NULL,NULL,1),(793,'Encore?',2,19,NULL,1,1),(794,'Let Them Eat Cake',2,19,NULL,1,1),(795,'Look For The Woman',2,19,NULL,1,1),(796,'Magnifique',2,19,NULL,1,1),(797,'One Shot, One Kill',2,19,NULL,1,1),(798,'Ouh La La',2,19,NULL,1,1),(799,'Step Into My Parlor...',2,19,NULL,1,1),(800,'That\'s How It Is',2,19,NULL,1,1),(801,'To Life, To Death',2,19,NULL,1,1),(802,'What\'s An Aimbot?',2,19,NULL,1,1),(803,'Curious',2,20,NULL,NULL,1),(804,'...Excuse Me',2,20,NULL,1,1),(805,'Don\'t Get Me Angry',2,20,NULL,1,1),(806,'How Embarrassing!',2,20,NULL,1,1),(807,'I Do Not Want A Banana',2,20,NULL,1,1),(808,'Natural Selection',2,20,NULL,1,1),(809,'No Monkey Business',2,20,NULL,1,1),(810,'Peanut Butter?',2,20,NULL,1,1),(811,'Sorry About That!',2,20,NULL,1,1),(812,'The Power Of Science!',2,20,NULL,1,1),(813,'We Have A Problem',2,20,NULL,1,1),(814,'Strong As The Mountain',2,21,NULL,NULL,1),(815,'Get Down, Give Me 20',2,21,NULL,1,1),(816,'I Am Mother Russia',2,21,NULL,1,1),(817,'I Can Bench More Than You',2,21,NULL,1,1),(818,'I Will Break You',2,21,NULL,1,1),(819,'In Russia, Game Play You',2,21,NULL,1,1),(820,'Need Personal Training?',2,21,NULL,1,1),(821,'No Mercy',2,21,NULL,1,1),(822,'Siberian Bear',2,21,NULL,1,1),(823,'Together We Are Strong',2,21,NULL,1,1),(824,'Welcome To The Gun Show',2,21,NULL,1,1),(825,'We Are In Harmony',2,22,NULL,NULL,1),(826,'Death Is Whimsical Today',2,22,NULL,1,1),(827,'Do I Think?',2,22,NULL,1,1),(828,'Free Your Mind',2,22,NULL,1,1),(829,'Hello, World!',2,22,NULL,1,1),(830,'I Dreamt I Was A Butterfly',2,22,NULL,1,1),(831,'I Think, Therefore I Am',2,22,NULL,1,1),(832,'I Will Not Juggle',2,22,NULL,1,1),(833,'Ones And Zeroes',2,22,NULL,1,1),(834,'Peace And Blessings',2,22,NULL,1,1),(835,'The Iris Embraces You',2,22,NULL,1,1),(836,'Default (Black)',3,NULL,NULL,NULL,2),(837,'Default (White)',3,NULL,NULL,NULL,2),(838,'Bastion',3,NULL,NULL,NULL,2),(839,'Ganymede',3,NULL,NULL,NULL,2),(840,'Tank Crossing',3,NULL,NULL,NULL,2),(841,'D.Va',3,NULL,NULL,NULL,2),(842,'Bunny',3,NULL,NULL,NULL,2),(843,'Charm',3,NULL,NULL,NULL,2),(844,'Genji',3,NULL,NULL,NULL,2),(845,'God of War',3,NULL,NULL,NULL,2),(846,'Nin',3,NULL,NULL,NULL,2),(847,'Hanzo',3,NULL,NULL,NULL,2),(848,'Shimada',3,NULL,NULL,NULL,2),(849,'Storm',3,NULL,NULL,NULL,2),(850,'Junkrat',3,NULL,NULL,NULL,2),(851,'Ahhhh!',3,NULL,NULL,NULL,2),(852,'Bomb',3,NULL,NULL,NULL,2),(853,'Lúcio',3,NULL,NULL,NULL,2),(854,'Frog',3,NULL,NULL,NULL,2),(855,'Kambô',3,NULL,NULL,NULL,2),(856,'McCree',3,NULL,NULL,NULL,2),(857,'Badge',3,NULL,NULL,NULL,2),(858,'Deadeye',3,NULL,NULL,NULL,2),(859,'Mei',3,NULL,NULL,NULL,2),(860,'Hairpin',3,NULL,NULL,NULL,2),(861,'Snowball',3,NULL,NULL,NULL,2),(862,'Mercy',3,NULL,NULL,NULL,2),(863,'Guardian Angel',3,NULL,NULL,NULL,2),(864,'Valkyrie',3,NULL,NULL,NULL,2),(865,'Pharah',3,NULL,NULL,NULL,2),(866,'Raptora',3,NULL,NULL,NULL,2),(867,'Wadjet',3,NULL,NULL,NULL,2),(868,'Reaper',3,NULL,NULL,NULL,2),(869,'Emblem',3,NULL,NULL,NULL,2),(870,'Soul',3,NULL,NULL,NULL,2),(871,'Reinhardt',3,NULL,NULL,NULL,2),(872,'Lionhardt',3,NULL,NULL,NULL,2),(873,'Scar',3,NULL,NULL,NULL,2),(874,'Roadhog',3,NULL,NULL,NULL,2),(875,'Hook',3,NULL,NULL,NULL,2),(876,'Piggy',3,NULL,NULL,NULL,2),(877,'Soldier: 76',3,NULL,NULL,NULL,2),(878,'Strike-Commander',3,NULL,NULL,NULL,2),(879,'76',3,NULL,NULL,NULL,2),(880,'Symmetra',3,NULL,NULL,NULL,2),(881,'Sentry',3,NULL,NULL,NULL,2),(882,'Vishkar',3,NULL,NULL,NULL,2),(883,'Torbjörn',3,NULL,NULL,NULL,2),(884,'Forge',3,NULL,NULL,NULL,2),(885,'Gears',3,NULL,NULL,NULL,2),(886,'Tracer',3,NULL,NULL,NULL,2),(887,'Patch',3,NULL,NULL,NULL,2),(888,'Pulse Bomb',3,NULL,NULL,NULL,2),(889,'Widowmaker',3,NULL,NULL,NULL,2),(890,'Baiser',3,NULL,NULL,NULL,2),(891,'Grappling Hook',3,NULL,NULL,NULL,2),(892,'Winston',3,NULL,NULL,NULL,2),(893,'Lunar Ops',3,NULL,NULL,NULL,2),(894,'Peanut Butter',3,NULL,NULL,NULL,2),(895,'Zarya',3,NULL,NULL,NULL,2),(896,'Particle Barrier',3,NULL,NULL,NULL,2),(897,'512',3,NULL,NULL,NULL,2),(898,'Zenyatta',3,NULL,NULL,NULL,2),(899,'Harmony',3,NULL,NULL,NULL,2),(900,'Meditation',3,NULL,NULL,NULL,2),(901,'16-Bit Hero',3,NULL,NULL,NULL,2),(902,'Anubis',3,NULL,NULL,NULL,2),(903,'Bao',3,NULL,NULL,NULL,2),(904,'Capsule',3,NULL,NULL,NULL,2),(905,'Cheers',3,NULL,NULL,NULL,2),(906,'Colossus',3,NULL,NULL,NULL,2),(907,'Credit',3,NULL,NULL,NULL,2),(908,'Demolition',3,NULL,NULL,NULL,2),(909,'Elephant',3,NULL,NULL,NULL,2),(910,'Happy Squid',3,NULL,NULL,NULL,2),(911,'Kofi Aromo',3,NULL,NULL,NULL,2),(912,'Loot Box',3,NULL,NULL,NULL,2),(913,'Los Muertos',3,NULL,NULL,NULL,2),(914,'Mama Pig\'s',3,NULL,NULL,NULL,2),(915,'Mariachi',3,NULL,NULL,NULL,2),(916,'Mech',3,NULL,NULL,NULL,2),(917,'Pachimari',3,NULL,NULL,NULL,2),(918,'Pharaoh',3,NULL,NULL,NULL,2),(919,'Pinata',3,NULL,NULL,NULL,2),(920,'Ramen',3,NULL,NULL,NULL,2),(921,'Rhino',3,NULL,NULL,NULL,2),(922,'Route 66',3,NULL,NULL,NULL,2),(923,'Sakura',3,NULL,NULL,NULL,2),(924,'Scooter',3,NULL,NULL,NULL,2),(925,'Six-Gun Killer',3,NULL,NULL,NULL,2),(926,'Syvatogor',3,NULL,NULL,NULL,2),(927,'They Came From Beyond The Moon',3,NULL,NULL,NULL,2),(928,'Totem',3,NULL,NULL,NULL,2),(929,'Training Bot',3,NULL,NULL,NULL,2),(930,'Vivi',3,NULL,NULL,NULL,2),(931,'Alliance',3,NULL,NULL,NULL,2),(932,'Barbarian',3,NULL,NULL,NULL,2),(933,'Crusader',3,NULL,NULL,NULL,2),(934,'Dark Lady',3,NULL,NULL,NULL,2),(935,'Diablo',3,NULL,NULL,NULL,2),(936,'Dominion',3,NULL,NULL,NULL,2),(937,'For The Horde',3,NULL,NULL,NULL,2),(938,'Garrosh',3,NULL,NULL,NULL,2),(939,'Hearthstone',3,NULL,NULL,NULL,2),(940,'Hierarch',3,NULL,NULL,NULL,2),(941,'Jaina',3,NULL,NULL,NULL,2),(942,'Jim',3,NULL,NULL,NULL,2),(943,'Lich King',3,NULL,NULL,NULL,2),(944,'Monk',3,NULL,NULL,NULL,2),(945,'Murloc',3,NULL,NULL,NULL,2),(946,'Nexus',3,NULL,NULL,NULL,2),(947,'Protoss',3,NULL,NULL,NULL,2),(948,'Queen of Blades',3,NULL,NULL,NULL,2),(949,'Terran',3,NULL,NULL,NULL,2),(950,'Witch Doctor',3,NULL,NULL,NULL,2),(951,'Wizard',3,NULL,NULL,NULL,2),(952,'Zerg',3,NULL,NULL,NULL,2),(953,'Blue Scars',3,NULL,NULL,NULL,2),(954,'Hooded Lady',3,NULL,NULL,NULL,2),(955,'Spaceman Sunglasses',3,NULL,NULL,NULL,2),(956,'Top 500',3,NULL,NULL,NULL,2),(957,'Season 1 Competitor',3,NULL,NULL,NULL,2),(958,'Season 1 Hero',3,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'defense'),(1,'offense'),(4,'support'),(3,'tank');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_roles`
--

DROP TABLE IF EXISTS `sub_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_roles_name_unique` (`name`),
  KEY `sub_roles_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_roles`
--

LOCK TABLES `sub_roles` WRITE;
/*!40000 ALTER TABLE `sub_roles` DISABLE KEYS */;
INSERT INTO `sub_roles` VALUES (1,'builder'),(2,'healer'),(3,'sniper');
/*!40000 ALTER TABLE `sub_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-30 15:09:35
