// These systems are not very flexable but they are great for basic needs.
// You'll need to make your own music system if you need multi-channel /
// dynamic music.
function Music(snd = sx_nothing, pitch = 1, loops = true)
	{
		g.music.target = snd
		g.music.loop = loops
		audio_emitter_pitch(g.emitter.music,pitch)
	}
	
function Sound(snd = sx_nothing, pitch = 1, loops = false)
	{
		g.sound = audio_play_sound_on(g.emitter.sound,snd,loops,0,1,0,pitch)
	}