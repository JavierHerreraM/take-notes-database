CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_todo`(user_id_value INT, title_value VARCHAR(45))
BEGIN
	INSERT INTO todo VALUES (NULL, user_id_value, title_value);
END