#macro g global // Use this as a shortcut for global, if you're lazy like me

#macro GAME_WINDOW_TITLE "QuickSetupLTS"
#macro GAME_RESOLUTION_WIDTH 800
#macro GAME_RESOLUTION_HEIGHT 600
g.GAME_RESOLUTION_SCALE = 1

#macro DEBUG_ENABLE true
#macro DEBUG_FLAG_OUTPUT true


#macro START_ROOM r_test

g.gameVolume = {
	music : 100,
	sound : 100
};

g.emitter = {
	music : audio_emitter_create(),
	sound : audio_emitter_create()
}

g.music = {
	music : noone,
	target : sx_nothing,
	playing : sx_nothing,
	loop : false
}

g.sound = noone;

g.gameFlags = ds_map_create();