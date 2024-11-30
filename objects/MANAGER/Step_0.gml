#region Basic Camera
if g.gameCamera = noone
	{
		g.gameCamera = camera_create_view(0,0,GAME_RESOLUTION_WIDTH,GAME_RESOLUTION_HEIGHT)
		camera_apply(g.gameCamera)
	}
#endregion

// Quick end game thing
if keyboard_check(vk_escape) && DEBUG_ENABLE
{
	game_end()
}

#region Music Handler

audio_emitter_gain(g.emitter.music,g.gameVolume.music/100)
audio_emitter_gain(g.emitter.sound,g.gameVolume.sound/100)

if g.music.target != g.music.playing
	{
		// If theres nothing playing, don't wait for the fade.
		if g.music.playing = sx_nothing {
			audio_sound_gain(g.music.music,0,0)
		} else {
			// Fade if there's music playing
			audio_sound_gain(g.music.music,0,fadeFrames)
		}
		
		// If the music is no longer audible, stop the old music and play the new music
		if audio_sound_get_gain(g.music.music) <= 0
			{
				audio_stop_sound(g.music.music)
				g.music.music = audio_play_sound_on(g.emitter.music,g.music.target,g.music.loop,0,g.gameVolume.music/100)
				g.music.playing = g.music.target
			}
		
		
	}

#endregion

#region Music() Demo -- Remove this!
swapTimer++
if swapTimer >= 400 {
	swapTimer = 0
	swapFlag = !swapFlag
}
Music(swapMusic[swapFlag])
#endregion
#region varList() Demo -- Remove this!
if keyboard_check_pressed(vk_space)
	{
		varlistdemo = true
	}
	
if varlistdemo
	{
		setVarList([
			"current_time: "+string(current_time),
			"os_type: "+string(os_type),
			"time: "+string(date_time_of(date_current_datetime()))
		])
	}
#endregion