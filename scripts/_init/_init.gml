#macro GAME_RESOLUTION_WIDTH 800
#macro GAME_RESOLUTION_HEIGHT 600
#macro GAME_RESOLUTION_SCALE 1

#macro DEBUG_ENABLE false
#macro DEBUG_FLAG_OUTPUT true

#macro g global // Use this as a shortcut for global, if you're lazy like me

g.gameVolume = {
	music : 100,
	sound : 100
};

g.emitter = {
	music : audio_emitter_create(),
	sound : audio_emitter_create()
}