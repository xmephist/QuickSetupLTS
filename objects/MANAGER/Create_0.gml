display_set_gui_size(GAME_RESOLUTION_WIDTH,GAME_RESOLUTION_HEIGHT);
window_set_size(g.GAME_RESOLUTION_SCALE*GAME_RESOLUTION_WIDTH,g.GAME_RESOLUTION_SCALE*GAME_RESOLUTION_HEIGHT);
window_center()

g.gameCamera = noone;

window_set_caption(GAME_WINDOW_TITLE)
// run this last
room_goto(START_ROOM);

fadeFrames = 50

#region Music() Demo -- Remove this!
swapMusic = [
	mx_testMusic1,
	mx_testMusic2
];
swapFlag = false
swapTimer = 0;
#endregion
#region varList Demo -- Remove this!
varlistdemo = false
#endregion