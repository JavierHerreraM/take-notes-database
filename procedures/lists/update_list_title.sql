DELIMITER $$
CREATE PROCEDURE update_list_title(list_id_value INT, title_value VARCHAR(45))
BEGIN
	UPDATE lists SET title=title_value WHERE list_id = list_id_value;
END$$

DELIMITER ;
