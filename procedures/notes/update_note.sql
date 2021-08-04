CREATE DEFINER=`root`@`localhost` PROCEDURE `update_note`(note_id_value INT, title_value VARCHAR(45), text_value TEXT)
BEGIN
	UPDATE notes SET title=title_value, text=text_value WHERE note_id = note_id_value;
END