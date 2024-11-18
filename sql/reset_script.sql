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
    IF TIMESTAMPDIFF(MINUTE, last_mod, CURRENT_TIMESTAMP) >= 180 THEN
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

-- Verify setup
SHOW EVENTS;
SHOW TRIGGERS;