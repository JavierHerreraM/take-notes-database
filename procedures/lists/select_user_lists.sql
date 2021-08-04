DELIMITER $$
CREATE PROCEDURE select_user_lists(user_id_value INT)
BEGIN
	SELECT l.list_id, l.title, i.item, i.item_id
	FROM lists l
	RIGHT JOIN list_items i
	ON l.list_id = i.list_id
	WHERE l.user_id = user_id_value;
END$$

DELIMITER ;
