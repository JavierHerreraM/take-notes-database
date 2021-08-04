DELIMITER $$
CREATE PROCEDURE `insert_user`(username VARCHAR(45), user_password VARCHAR(255), first_name VARCHAR(45), last_name VARCHAR(45))
BEGIN
	INSERT INTO users() VALUES(NULL, username, user_password, first_name, last_name);
END$$

DELIMITER ;
