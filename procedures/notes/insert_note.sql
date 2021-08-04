DELIMITER $$
CREATE PROCEDURE `insert_note`(username_value VARCHAR(45), title_value VARCHAR(45), body_value TEXT)
BEGIN
	INSERT INTO notes VALUES (NULL, (SELECT user_id from users WHERE username = username_value), title_value, body_value);
END$$

DELIMITER ;
