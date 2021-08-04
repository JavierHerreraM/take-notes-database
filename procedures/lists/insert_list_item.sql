DELIMITER $$
CREATE PROCEDURE insert_list_item(list_id_value INT, body_value VARCHAR(255))
BEGIN
	INSERT INTO list_items VALUES (NULL, list_id_value, body_value);
END$$

DELIMITER ;
