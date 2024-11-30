function drawDataList(array)
	{
		for(var i = 0; i < array_length(array); i++)
		{
			draw_set_color(c_black);
			Alpha(.5);
			draw_rectangle(0,16+(i*16-16)+3,string_width(array[i]),16+(i*16-16)+string_height(array[i])-3,0);
			Alpha();
			
			SetAlignColor(fa_left,fa_top,c_white);
			draw_text(0,16+(i*16-16),array[i]);
		}
	}

// Display fps

Color(make_color_hsv(current_time/50,255,255))
SetAlign(fa_left,fa_bottom);
draw_text(0,GAME_RESOLUTION_HEIGHT,DEBUG_ENABLE?fps: "");

SetAlign(fa_right,fa_bottom);
draw_text(GAME_RESOLUTION_WIDTH,GAME_RESOLUTION_HEIGHT,DEBUG_ENABLE?"development": "") //i dont care


// Debug Variable List
if varListEnable {
	drawDataList(varList);
}

if drawDebugOverlay {
	drawDataList(debugOverlay);
}
