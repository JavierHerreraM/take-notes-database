CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_todo`(todo_id_value INT)
BEGIN
	DELETE FROM todo WHERE todo_id = todo_id_value;
END