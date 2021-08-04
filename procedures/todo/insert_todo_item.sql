CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_todo_item`(todo_id_value INT, body_value VARCHAR(255))
BEGIN
	INSERT INTO todo_items VALUES (NULL, todo_id_value, body_value);
END
