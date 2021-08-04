----- User procedures -----

CALL insert_user(username, password, first_name, last_name);
CALL select_user(username);
CALL update_user_password(username, password);
CALL delete_user(username);

----- Notes procedures -----

CALL insert_note(username, title_value, body_value);
CALL select_notes(user_id, skip_records_number, amount_records_number);
CALL update_note(note_id, title_value, text_note_id);

----- Lists procedures -----

CALL insert_list(user_id, title_value);
CALL insert_list_item(list_id, body_value);
CALL select_user_lists(user_id);
CALL update_list_title(list_id, title_value);
CALL update_list_item(item_id, body_value);
CALL delete_list_item(item_id);
CALL delete_list(list_id);

----- todo procedures -----

CALL insert_todo(user_id, title_value);
CALL insert_todo_item(todo_id, body_value);
CALL select_user_todo(user_id);
CALL update_todo_title(todo_id, title_value);
CALL update_todo_item(item_id, body_value);
CALL delete_todo_item(item_id);
CALL delete_todo(todo_id);