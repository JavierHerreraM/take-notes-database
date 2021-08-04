DELIMITER $$
CREATE PROCEDURE `select_notes`(user_id_value INT, skip_number_value INT, amount_records_value INT)
BEGIN
	IF skip_number_value IS NULL OR amount_records_value IS NULL THEN
		SELECT note_id, title, text FROM notes WHERE user_id = user_id_value;
	ELSE
		SELECT note_id, title, text FROM notes WHERE user_id = user_id_value LIMIT skip_number_value, amount_records_value;
	END IF;
END$$

DELIMITER ;
