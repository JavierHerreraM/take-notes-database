DELIMITER $$
CREATE PROCEDURE delete_list(list_id_value INT)
BEGIN
	DELETE FROM lists WHERE list_id = list_id_value;
END$$

DELIMITER ;
