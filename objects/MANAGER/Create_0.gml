display_set_gui_size(GAME_RESOLUTION_WIDTH,GAME_RESOLUTION_HEIGHT);
window_set_size(GAME_RESOLUTION_WIDTH,GAME_RESOLUTION_HEIGHT);
window_center()

g.gameCamera = noone;

window_set_caption(GAME_WINDOW_TITLE)
// run this last
room_goto(START_ROOM);