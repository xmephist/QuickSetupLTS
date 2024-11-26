// Display fps
SetAlignColor(fa_left,fa_bottom,c_grey)
draw_text(0,GAME_RESOLUTION_HEIGHT,fps)

// Varlist
SetAlignColor(fa_left,fa_top,c_grey)
if varListEnable {
	
	for(var i = 0; i < array_length(varList); i++)
		{
			draw_text(0,16+(i*16-16),varList[i])
		}
}