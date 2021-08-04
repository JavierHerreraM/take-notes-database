DELIMITER $$
CREATE PROCEDURE `delete_user`(username_value VARCHAR(255))
BEGIN
	DELETE FROM users WHERE username = username_value;
END$$

DELIMITER ;
