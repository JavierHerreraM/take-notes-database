CREATE DEFINER=`root`@`localhost` PROCEDURE `update_todo_title`(todo_id_value INT, title_value VARCHAR(45))
BEGIN
	UPDATE todo SET title=title_value WHERE todo_id = todo_id_value;
END