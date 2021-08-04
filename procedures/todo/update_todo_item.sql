USE take_notes;
DELIMITER $$
CREATE PROCEDURE `update_todo_item`(item_id_value INT, item_value VARCHAR(255))
BEGIN
	UPDATE todo_items SET item=item_value WHERE item_id=item_id_value;
END$$

DELIMITER ;
