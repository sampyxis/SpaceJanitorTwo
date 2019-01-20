/// @description  switch rooms

// Grab the vars

back_room = room_get_name(room);
show_debug_message(back_room);

// Go to the next room
room_goto(to_room);