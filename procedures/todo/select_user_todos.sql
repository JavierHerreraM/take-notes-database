CREATE DEFINER=`root`@`localhost` PROCEDURE `select_user_todos`(user_id_value INT)
BEGIN
	SELECT t.todo_id, t.title, i.item, i.item_id
	FROM todo t
	RIGHT JOIN todo_items i
	ON t.todo_id = i.todo_id
	WHERE t.user_id = user_id_value;
END