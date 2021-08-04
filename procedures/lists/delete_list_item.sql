DELIMITER $$
CREATE PROCEDURE delete_list_item(item_id_value INT)
BEGIN
	DELETE FROM list_items WHERE item_id = item_id_value;
END$$

DELIMITER ;
