USE take_notes;
DELIMITER $$
CREATE PROCEDURE `delete_todo_item`(item_id_value INT)
BEGIN
	DELETE FROM todo_items WHERE item_id = item_id_value;
END$$

DELIMITER ;
