DELIMITER $$
CREATE PROCEDURE insert_list(user_id_value INT, title_value VARCHAR(45))
BEGIN
	INSERT INTO lists VALUES (NULL, user_id_value, title_value);
END$$

DELIMITER ;
