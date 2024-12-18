-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: rickstoredb
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `inventions`
--

DROP TABLE IF EXISTS `inventions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventions`
--

LOCK TABLES `inventions` WRITE;
/*!40000 ALTER TABLE `inventions` DISABLE KEYS */;

INSERT INTO `inventions` (`id`, `category`, `created_at`, `description`, `name`, `price`, `image_file_name`) VALUES
(1, 'Vehicle', '2024-09-04 19:27:37.000000', 'Rick\'s space cruiser is a flying vehicle (especially car) created by Rick. Rick pieced the ship together from materials found in the garage of the Smith Residence. The ship is shaped like a UFO and features wheels on the underside for landings. The interior of the ship is commonly full of empty bottles of alcohol.', 'Space Cruiser', 1500000, 'space_cruiser.jpg'),
(2, 'Weapon', '2024-09-04 19:27:37.000000', 'The neutrino bomb was a powerful bomb invented by Rick in the Pilot episode, that presumably radiates a lethal amount of neutrinos when detonated. Because neutrinos can pass through matter almost unimpeded, a sufficient intensity of neutrinos will travel through the earth and deliver a lethal dose to the entire population in a fraction of a second.', 'Neutrino Bomb', 5000000, 'neutrino_bomb.jpg'),
(3, 'Weapon', '2024-09-04 19:27:37.000000', 'The Portal Gun is Rick\'s most-used invention. It is a gun that shoots green, fluidic portals onto any surface and allows the user(s) to travel between different universes, dimensions and realities. Initially built by Rick for travel to and from Dimension C-137. Due to the infinite number of locations, one could use the portal gun to travel anywhere.', 'Portal Gun', 50000000, 'portal_gun.jpg'),
(4, 'Weapon', '2024-09-04 19:27:37.000000', 'The Freeze ray was one of Rick\'s devices. It could freeze organic targets until they became an icy statue. The effects were reversible but made the target extremely fragile and prone to shattering. Frank Palicky was killed when Rick froze him with the ray and he subsequently shattered when he was tipped over. In the Rick and Morty Simpsons couch gag, it is used on the Simpsons\' neighbor, Ned Flanders.', 'Freeze Ray', 2000000, 'freeze_ray.jpg'),
(5, 'Device', '2024-09-04 19:27:37.000000', 'The Cognition Amplifier is a helmet that can increase the intelligence of anything that wears it. In the episode \'Lawnmower Dog,\' Rick used it on Snuffles to make him intelligent enough to understand and better communicate with humans.', 'Cognition Amplifier', 1000000, 'cognition_amplifier.jpg'),
(6, 'Device', '2024-09-04 19:27:37.000000', 'The dream inceptor is an earpiece that allows its users to transport their consciousness inside of other people\'s dreams. One of them goes on the ear of a sleeping person, and the other goes on someone else. When activated, they will both go to sleep and be sent into the same dream realm together.', 'Dream Inceptor', 3500000, '1734484826300 dream-inceptor-crop-1501106435616.jpg'),
(7, 'Weapon', '2024-09-04 19:27:37.000000', 'Rick\'s shrink ray was a complex device that could shrink a human down to microscopic size in the episode \'Anatomy Park.\' Rick used this to shrink Morty, so he could enter Ruben\'s body and save Dr. Xenon Bloom who was having difficulty with problems in Anatomy Park, located inside Ruben. Its counterpart, a growth/enlarge ray, is located inside of Ruben in the colon.', 'Shrink Ray', 3000000, 'shrink_ray.jpg'),
(8, 'Device', '2024-09-04 19:27:37.000000', 'Dark matter is a form of matter that has been unsolved by scientists. Rick knows the formula on how to create concentrated dark matter as a fuel source to enable faster space travel, and the formula is a secret that the Zigerions have long sought to steal from him. However, in the episode \'M. Night Shaym-Aliens!,\' he fooled the Zigerions into believing that the formula included water and cesium. When they attempted to follow his fake recipe, Rick had escaped and the Zigerions had blown themselves up.', 'Dark Matter', 4000000, 'dark_matter.jpg'),
(9, 'Device', '2024-09-04 19:27:37.000000', 'The Meeseeks Box is a box that is able to create a Meeseeks which will stop at nothing to complete simple tasks. Meeseeks Boxes don\'t seem to have been created by Rick as Mr. Meeseeks has been seen through the galaxy.', 'Meeseeks Box', 1000000, '1734481512421 MeeseeksBox.webp'),
(10, 'Device', '2024-09-04 19:27:37.000000', 'The ionic defibulizer was an invention with an unknown purpose seen in the episode Rick Potion 9. It exploded however, upon completion, killing both the Rick and the Morty of the dimension in which it was finished.', 'Ionic Defibulizer', 2000000, '1734481630206 f212427510dfef8dc44ea37893e72da8.jpg'),
(11, 'Device', '2024-09-04 19:27:37.000000', 'The demonic alien containment box was used in the episode Meeseeks and Destroy. It\'s a box that can capture the demonic spirits that were possessing the clones of Beth, Summer, and Jerry so that they would not possess anyone else\'s bodies. It may be a parody on the ghost traps from Ghostbusters.', 'Demonic Alien Containment Box', 1500000, 'demonic_alien_containment_box.jpg'),
(12, 'Potion', '2024-09-04 19:27:37.000000', 'In the episode \'Rick Potion #9,\' Rick gave Morty a potion that would make Jessica fall in love with him. The potion is extracted from a vole and the DNA from a strand of Morty\'s hair. The love potion would work on anyone it infects except for people who are genetically related to him. If this is used on someone with the flu, it will piggyback on the influenza and become a contagious pathogen, spreading and causing everyone in the world except the Smith family to fall completely in love with Morty.', 'Love Potion', 3000000, '1734481776800 S1e6_love_potion.webp'),
(13, 'Potion', '2024-09-04 19:27:37.000000', 'Rick used a gaseous antidote on the city\'s population to turn them back to normal again, but he messed up somewhere and turned them all into mantis-men that were still in love with Morty and now wanted to eat his head. His first attempt at an antidote resulted in this because of Rick reasoning that since praying mantis females eat their mate\'s head while mating, praying mantis DNA should be the main ingredient in an anti-love potion. The second attempt included many more genetic samples from a menagerie of organisms, wrongly assuming that using it on the infatuated mantis-men would restore their humanity.', 'Love Antidote', 2500000, '1734489211103 rick antidote.png'),
(14, 'Device', '2024-09-04 19:27:37.000000', 'In the episode \'Rixty Minutes\', Rick installed this after complaining about the quality of TV and Jerry challenges him to provide anything better, installing a cable box that shows television from every conceivable reality.', 'Inter Dimensional Cable', 4000000, 'inter_dimensional_cable.jpg'),
(15, 'Device', '2024-09-04 19:27:37.000000', 'The goggles work by synching the user\'s eyes to the genetic code found across countless realities. When the user wears the goggles, they see their alternate dimension lives in the first-person.', 'Interdimensional Goggles', 2000000, 'interdimensional_goggles.jpg'),
(16, 'Device', '2024-09-04 19:27:37.000000', 'A detector made by Rick via analyzing a cursed microscope which would have lowered his IQ. This invention detects curses.', 'Curse Detector', 500000, '1734488073369 curse detector.png'),
(17, 'Device', '2024-09-04 19:27:37.000000', 'A device made by Rick, which when broken, transported the entire house to dimension 35-C.', 'House Transporter', 1500000, '1734489567947 house transponder.png'),
(18, 'Device', '2024-09-04 19:27:37.000000', 'A device that stops time. Rick used it to give him, Morty, and Summer time to repair the house.', 'Time Stopper', 3000000, 'time_stopper.jpg'),
(19, 'Device', '2024-09-04 19:27:37.000000', 'A device that detects split possibilities, enabling users to understand alternative outcomes and scenarios in various situations.', 'Split Possibility Detector', 4000000, 'split_possibility_detector.jpg'),
(20, 'Device', '2024-09-04 19:27:37.000000', 'A device that changes any language to English.', 'Translator', 1000000, 'translator.jpg'),
(21, 'Weapon', '2024-09-04 19:27:37.000000', 'Introduced in \'Get Schwifty,\' this watch fires a green blast that vaporizes a target near instantly, while Rick also used a snake holster on his leg to release snakes while he fired to make it appear that the watch turned its victims into snakes.', 'Particle Beam Wrist Watch', 3500000, 'particle_beam_wrist_watch.jpg'),
(22, 'Device', '2024-09-04 19:27:37.000000', 'The microverse battery is a gadget developed by Rick to supply power to his flying ship. It contains a miniature universe in which some organic and intelligent life has developed. Rick introduced electricity to the miniature planet inside the Microverse in form of kinetic devices which the inhabitants then use to power their homes and devices, and unknowingly, Rick\'s car.', 'Microverse Battery', 5000000, 'microverse_battery.jpg'),
(23, 'Device', '2024-09-04 19:27:37.000000', 'Specialized shoes designed for extreme conditions, allowing Rick to perform in high-speed and challenging environments.', 'Sanchez Ski Shoes', 1500000, '1734489816173 sanchez ski shoes.png'),
(24, 'Device', '2024-09-04 19:27:37.000000', 'Operation Phoenix was a secret cloning project created by Rick that could be found underneath the garage of the Smith Residence. Rick originally designed it as a fail-safe that transfers his brain into one of the many cloned bodies of himself whenever he gets killed.', 'Operation Phoenix', 10000000, '1734482388295 ProjectPheonix.webp'),
(25, 'Armor', '2024-09-04 19:27:37.000000', 'The Combat Suit is a full-body armor (except for the face) that protects the user from basic contusion/cutting weapons, as well as enhances the user\'s strength and resilience to inhuman levels. It also includes missiles, energy guns, a flame thrower, a non-lethal electrical blast, arm-mounted melee blades, and a rocket propulsion system.', 'Combat Suit', 8000000, 'combat_suit.jpg'),
(26, 'Armor', '2024-09-04 19:27:37.000000', 'A separate pair of primarily wooden combat suits appears in \'The Ricks Must Be Crazy,\' created by Rick and Zeep Xanflorp in the Tinyverse to stalk wildlife and attack each other.', 'Wooden Combat Suits', 2000000, 'wooden_combat_suits.jpg'),
(27, 'Weapon', '2024-09-04 19:27:37.000000', 'Rick has his own ray guns or laser guns that he most surely created himself. Rick\'s personal sidearm fires a red or green energy bolt that can either mutilate a target with bloody wounds or vaporize them. Some guns can even cause a target to explode into gore.', 'Futuristic Guns', 3000000, 'futuristic_guns.jpg'),
(28, 'Weapon', '2024-09-04 19:27:37.000000', 'A versatile weapon used by Rick, capable of firing powerful energy blasts.', 'Ray Gun', 2500000, 'ray_gun.jpg'),
(29, 'Device', '2024-09-04 19:27:37.000000', 'An injector designed to enhance muscle growth and physical capabilities instantly.', 'Muscle Injector', 1500000, 'muscle_injector.jpg'),
(30, 'Armor', '2024-09-04 19:27:37.000000', 'A nanomesh designed to enhance the wearer\'s skin, making it more resistant to damage and environmental effects.', 'Epidermis Nanomesh', 2000000, '1734490018338 nanomesh.jpg'),
(31, 'Device', '2024-09-04 19:27:37.000000', 'A specialized gun that uses advanced technology to influence reproductive processes.', 'Impregnation Gun', 2000000, 'impregnation_gun.jpg'),
(32, 'Device', '2024-09-04 19:27:37.000000', 'Advanced drones equipped with high-tech capabilities for various tactical operations.', 'Voltron Drones', 3500000, 'voltron_drones.jpg'),
(33, 'Device', '2024-09-04 19:27:37.000000', 'A device that can erase specific memories from an individual\'s mind.', 'Memory Eraser', 2500000, 'memory_eraser.jpg'),
(34, 'Device', '2024-09-04 19:27:37.000000', 'Special bubble gum with unique properties that can alter reality or provide special effects.', 'Bubble Gum', 1000000, 'bubble_gum.jpg'),
(35, 'Device', '2024-09-04 19:27:37.000000', 'A robotic arm that can be attached to various surfaces or worn by users for enhanced functionality.', 'Attachable Robot Arm', 1500000, 'attachable_robot_arm.jpg'),
(36, 'Weapon', '2024-09-04 19:27:37.000000', 'A versatile whip with advanced technology for combat or utility purposes.', 'Whip', 1000000, 'whip.jpg'),
(37, 'Device', '2024-09-04 19:27:37.000000', 'Restraints that are completely invisible until activated, restricting movement without being seen. Perfect for stealthy captures.', 'Invisible Cuffs', 1111111, '1734487813561 invisibility cuffs.png');

/*!40000 ALTER TABLE `inventions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 19:21:58

-- RESET DB
-- This is used for reset db every 10 minutes because user can make crud operations in frontend for all data.

SELECT 'Starting the reset process...';


-- Disable foreign keys
SET FOREIGN_KEY_CHECKS = 0;

-- Drop existing items to avoid conflicts
DROP EVENT IF EXISTS reset_after_inactivity;
DROP TRIGGER IF EXISTS update_last_modification;
DROP TRIGGER IF EXISTS update_last_modification_update;
DROP TRIGGER IF EXISTS update_last_modification_delete;
DROP TABLE IF EXISTS last_modification;
DROP TABLE IF EXISTS inventions_backup;
-- Enable event scheduler
-- SET GLOBAL event_scheduler = ON;

-- Create tracking table for last modification
CREATE TABLE IF NOT EXISTS last_modification (
    id INT PRIMARY KEY DEFAULT 1,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT single_row CHECK (id = 1)
);

-- Insert initial record
INSERT IGNORE INTO last_modification (id) VALUES (1);

-- Create backup table for inventions if it doesn't exist
CREATE TABLE IF NOT EXISTS inventions_backup (
    id INT NOT NULL AUTO_INCREMENT,
    category VARCHAR(255) DEFAULT NULL,
    created_at DATETIME(6) DEFAULT NULL,
    description TEXT,
    name VARCHAR(255) DEFAULT NULL,
    price DOUBLE NOT NULL,
    image_file_name VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (id)
) AS SELECT * FROM inventions WHERE 1=0;

-- Populate backup table with current data
TRUNCATE TABLE inventions_backup;
INSERT INTO inventions_backup SELECT * FROM inventions;

-- Create triggers
DELIMITER $$

CREATE TRIGGER update_last_modification
AFTER INSERT ON inventions
FOR EACH ROW
BEGIN
    UPDATE last_modification SET last_modified = CURRENT_TIMESTAMP WHERE id = 1;
END$$

CREATE TRIGGER update_last_modification_update
AFTER UPDATE ON inventions
FOR EACH ROW
BEGIN
    UPDATE last_modification SET last_modified = CURRENT_TIMESTAMP WHERE id = 1;
END$$

CREATE TRIGGER update_last_modification_delete
AFTER DELETE ON inventions
FOR EACH ROW
BEGIN
    UPDATE last_modification SET last_modified = CURRENT_TIMESTAMP WHERE id = 1;
END$$

DELIMITER ;

-- Create event to reset after inactivity
DELIMITER $$

CREATE EVENT reset_after_inactivity
ON SCHEDULE EVERY 1 MINUTE
DO
BEGIN
    DECLARE last_mod TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN END;

    -- Get last modified timestamp from last_modification table
    SELECT last_modified INTO last_mod FROM last_modification WHERE id = 1;

    -- Check if more than 30 minutes have passed since last modification
    IF TIMESTAMPDIFF(MINUTE, last_mod, CURRENT_TIMESTAMP) >= 10 THEN
        SET foreign_key_checks = 0;
        -- Reset table if inactive for more than 30 minutes
        TRUNCATE TABLE inventions;
        INSERT INTO inventions SELECT * FROM inventions_backup;
        UPDATE last_modification SET last_modified = CURRENT_TIMESTAMP WHERE id = 1;
        SET foreign_key_checks = 1;
    END IF;
END$$

DELIMITER ;

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

SELECT 'Finished the reset process.';


-- Verify setup
SHOW EVENTS;
SHOW TRIGGERS;
