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
(1, 'Vehicle', '2024-09-04 19:27:37.000000', 'A vehicle powered by a Microverse-based powercell and a dark-matter engine. Equipped with advanced features like a disintegrator gun, laser minigun, invisibility stealth, and a cloning pod, it’s designed for interdimensional travel and extreme combat. The cruiser also boasts an AI, repair bots, and various weapons for all situations. Perfect for cosmic adventures.', 'Space Cruiser', 600000000, 'space_cruiser.jpg'),
(2, 'Weapon', '2024-09-04 19:27:37.000000', '\r\nNeutrino Bomb is a powerful device that radiates lethal neutrinos upon detonation. Capable of passing through matter, it delivers a fatal dose to an entire population in an instant. Ideal for extreme, high-impact scenarios.', 'Neutrino Bomb', 30000000, 'neutrino_bomb.jpg'),
(3, 'Weapon', '2024-09-04 19:27:37.000000', ' The ultimate travel device, shooting green, fluidic portals onto any surface. It enables seamless travel across universes, dimensions, and realities. Perfect for interdimensional exploration and quick escapes.', 'Portal Gun', 999999999999.99, 'portal_gun.jpg'),
(4, 'Weapon', '2024-09-04 19:27:37.000000', 'Freezes organic targets into fragile icy statues, with reversible effects. Ideal for immobilizing subjects, though caution is needed to avoid shattering. ', 'Freeze Ray', 2000000, 'freeze_ray.jpg'),
(5, 'Device', '2024-09-04 19:27:37.000000', 'A helmet that can increase the intelligence of anything that wears it. ', 'Cognition Amplifier', 70000000, 'cognition_amplifier.jpg'),
(6, 'Device', '2024-09-04 19:27:37.000000', 'The dream inceptor is an earpiece that allows its users to transport their consciousness inside of other people\'s dreams. One of them goes on the ear of a sleeping person, and the other goes on someone else. When activated, they will both go to sleep and be sent into the same dream realm together.', 'Dream Inceptor', 5500000, '1734484826300 dream-inceptor-crop-1501106435616.jpg'),
(7, 'Weapon', '2024-09-04 19:27:37.000000', 'Reduces humans to microscopic size, enabling exploration and precision in miniature environments. ', 'Shrink Ray', 3000000, 'shrink_ray.jpg'),
(8, 'Device', '2024-09-04 19:27:37.000000', 'A highly unstable, energy-dense substance capable of manipulating gravity and space-time. Perfect for advanced scientific applications and reality-bending experiments.', 'Dark Matter', 500000000, 'dark_matter.jpg'),
(9, 'Device', '2024-09-04 19:27:37.000000', 'A box that is able to create a Meeseeks which will stop at nothing to complete simple tasks. Meeseeks Boxes don\'t seem to have been created by Rick as Mr. Meeseeks has been seen through the galaxy.', 'Meeseeks Box', 15000000, '1734481512421 MeeseeksBox.webp'),
(10, 'Device', '2024-09-04 19:27:37.000000', 'A device designed for unknown applications, the Ionic Defibulizer delivers powerful ionic energy. While its true purpose remains a mystery, its explosive potential is unmatched—ideal for those who require extreme measures. Handle with caution!', 'Ionic Defibulizer', 710000, '1734481630206 f212427510dfef8dc44ea37893e72da8.jpg'),
(11, 'Device', '2024-09-04 19:27:37.000000', 'A box that captures and contains demonic spirits, preventing possession of new bodies.  Ideal for paranormal containment.', 'Demonic Alien Containment Box', 1500000, 'demonic_alien_containment_box.jpg'),
(12, 'Potion', '2024-09-04 19:27:37.000000', 'A powerful concoction made from vole extract and Morty’s DNA, designed to make anyone fall in love—except close relatives. If used on someone with the flu, it becomes contagious, causing mass infatuation with Morty. Perfect for extreme love scenarios.', 'Love Potion', 3000000, '1734481776800 S1e6_love_potion.webp'),
(13, 'Potion', '2024-09-04 19:27:37.000000', 'Reverses infatuation using a mix of genetic samples, initially turning subjects into mantis-men. Refined for safer results, it restores normal behavior and eliminates unwanted affection.', 'Love Antidote', 2500000, '1734489211103 rick antidote.png'),
(14, 'Device', '2024-09-04 19:27:37.000000', 'Interdimensional Cable offers TV from every reality, delivering endless channels and shows from countless dimensions for the ultimate viewing experience.', 'Inter Dimensional Cable', 4000000, 'inter_dimensional_cable.jpg'),
(15, 'Device', '2024-09-04 19:27:37.000000', 'The goggles work by synching the user\'s eyes to the genetic code found across countless realities. When the user wears the goggles, they see their alternate dimension lives in the first-person.', 'Interdimensional Goggles', 2000000, 'interdimensional_goggles.jpg'),
(16, 'Device', '2024-09-04 19:27:37.000000', 'A detector made by Rick via analyzing a cursed microscope which would have lowered his IQ. This invention detects curses.', 'Curse Detector', 500000, '1734488073369 curse detector.png'),
(17, 'Device', '2024-09-04 19:27:37.000000', 'A device made by Rick, which when broken, transported the entire house to dimension 35-C.', 'House Transporter', 1500000, '1734489567947 house transponder.png'),
(18, 'Device', '2024-09-04 19:27:37.000000', 'A device that stops time.', 'Time Stopper', 3000000, 'time_stopper.jpg'),
(19, 'Device', '2024-09-04 19:27:37.000000', 'A device that detects split possibilities, enabling users to understand alternative outcomes and scenarios in various situations.', 'Split Possibility Detector', 4000000, 'split_possibility_detector.jpg'),
(20, 'Device', '2024-09-04 19:27:37.000000', 'A versatile device that translates any language into English, including communication with animals, bridging the gap between species and making universal understanding possible.', 'Translator', 52000, 'translator.jpg'),
(21, 'Weapon', '2024-09-04 19:27:37.000000', 'This watch fires a green blast that vaporizes a target near instantly, while Rick also used a snake holster on his leg to release snakes while he fired to make it appear that the watch turned its victims into snakes.', 'Particle Beam Wrist Watch', 200000, 'particle_beam_wrist_watch.jpg'),
(22, 'Device', '2024-09-04 19:27:37.000000', 'The microverse battery is a gadget developed by Rick to supply power to his flying ship. It contains a miniature universe in which some organic and intelligent life has developed. Rick introduced electricity to the miniature planet inside the Microverse in form of kinetic devices which the inhabitants then use to power their homes and devices, and unknowingly, Rick\'s car.', 'Microverse Battery', 5000000, 'microverse_battery.jpg'),
(23, 'Device', '2024-09-04 19:27:37.000000', 'Sanchez Ski Shoes are engineered for extreme conditions, offering superior traction and control in high-speed environments. Built with advanced technology for durability and peak performance in challenging adventures.', 'Sanchez Ski Shoes', 1500000, '1734489816173 sanchez ski shoes.png'),
(24, 'Device', '2024-09-04 19:27:37.000000', 'Operation Phoenix is a secret cloning fail-safe, designed to ensure survival across any circumstance. Hidden beneath the user’s residence, it transfers the user\'s consciousness into one of many cloned bodies upon death. Perfect for immortality and contingency planning.', 'Operation Phoenix', 700000000000, '1734482388295 ProjectPheonix.webp'),
(25, 'Armor', '2024-09-04 19:27:37.000000', 'A full-body armor that protects the user from basic contusion/cutting weapons, as well as enhances the user\'s strength and resilience to inhuman levels. It also includes missiles, energy guns, a flame thrower, a non-lethal electrical blast, arm-mounted melee blades, and a rocket propulsion system.', 'Combat Suit', 8000000, '1734710609929 combatsuit.png'),
(26, 'Armor', '2024-09-04 19:27:37.000000', 'A primitive, yet functional, wooden battle armor designed for tactical combat. Capable of carrying creatures like eagles or snakes, it can also throw rocks and handle various battle scenarios. Ideal for Stone Age-style engagements.', 'Wooden Combat Suits', 2000, 'wooden_combat_suits.jpg'),
(27, 'Weapon', '2024-09-04 19:27:37.000000', 'Fire energy bolts to neutralize targets with precision. Ideal for high-tech defense and strategic control.', 'Futuristic Guns', 30000, 'futuristic_guns.jpg'),
(28, 'Weapon', '2024-09-04 19:27:37.000000', 'A versatile weapon used by Rick, capable of firing powerful energy blasts.', 'Ray Gun', 150000, 'ray_gun.jpg'),
(29, 'Device', '2024-09-04 19:27:37.000000', 'An injector designed to enhance muscle growth and physical capabilities instantly.', 'Muscle Injector', 1500000, 'muscle_injector.jpg'),
(30, 'Armor', '2024-09-04 19:27:37.000000', 'A nanomesh designed to enhance the wearer\'s skin, making it more resistant to damage and environmental effects.', ' Nanofiber-Defended Mesh', 7000000, '1734710579346 nanofiber defends mesh.png'),
(31, 'Device', '2024-09-04 19:27:37.000000', 'A specialized gun that uses advanced technology to influence reproductive processes.', 'Impregnation Gun', 19000000, 'impregnation_gun.jpg'),
(32, 'Device', '2024-09-04 19:27:37.000000', 'Advanced drones equipped with high-tech capabilities for various tactical operations.', 'Voltron Drones', 4200000, '1734711201236 2024-12-20_12-09.png'),
(33, 'Device', '2024-09-04 19:27:37.000000', 'A device that can erase specific memories from an individual\'s mind.', 'Memory Eraser', 22000000, 'memory_eraser.jpg'),
(34, 'Device', '2024-09-04 19:27:37.000000', 'The Bubble Gun traps individuals or objects in an unbreakable, forcefield-protected bubble, creating a secure, isolated space with no escape. Ideal for containment in extreme situations.', 'Bubble Gum', 8000000, 'bubble_gum.jpg'),
(35, 'Device', '2024-09-04 19:27:37.000000', 'A robotic arm that can be attached to various surfaces or worn by users for enhanced functionality.', 'Attachable Robot Arm', 810000, 'attachable_robot_arm.jpg'),
(36, 'Weapon', '2024-09-04 19:27:37.000000', 'A versatile whip with advanced technology for combat or utility purposes.', 'Whip', 18000, 'whip.jpg'),
(37, 'Device', '2024-09-04 19:27:37.000000', 'Restraints that are completely invisible until activated, restricting movement without being seen. Perfect for stealthy captures.', 'Invisible Cuffs', 13760, '1734487813561 invisibility cuffs.png');

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
