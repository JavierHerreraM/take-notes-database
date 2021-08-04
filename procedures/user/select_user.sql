DELIMITER $$
CREATE PROCEDURE `select_user`(username_value VARCHAR(45))
BEGIN
	SELECT user_id, username, first_name, last_name FROM users WHERE username = username_value;
END$$

DELIMITER ;
