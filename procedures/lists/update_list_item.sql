DELIMITER $$
CREATE PROCEDURE update_list_item(item_id_value INT, item_value VARCHAR(255))
BEGIN
	UPDATE list_items SET item=item_value WHERE item_id=item_id_value;
END$$

DELIMITER ;
