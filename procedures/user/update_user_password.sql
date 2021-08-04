DELIMITER $$
CREATE PROCEDURE `update_user_password`(username_value VARCHAR(45), password_value VARCHAR(255))
BEGIN
	UPDATE users SET password = password_value WHERE username = username_value;
END$$

DELIMITER ;
