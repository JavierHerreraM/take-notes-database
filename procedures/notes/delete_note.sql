DELIMITER $$
CREATE PROCEDURE `delete_note`(note_id_value INT)
BEGIN
	DELETE FROM notes WHERE note_id = note_id_value;
END$$

DELIMITER ;
