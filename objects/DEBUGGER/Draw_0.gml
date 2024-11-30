if drawDebugOverlay
	{
		// This displays the names of objects at their objects position
		// Add the tag "NoDebug" to an object to exclude it from being drawn
		
		draw_set_font(f_main)
		SetAlignColor(fa_left,fa_top,c_white)
		with(all) 
			{
				var doDraw = true;
				draw_set_font(f_main);
		
				var arr = asset_get_tags(object_get_name(object_index));
				
				for(var i = 0; i < array_length(arr); i++)
					{
						if arr[i] = "NoDebug"
							{
								doDraw = false;
								break;
							}
					}
				
				draw_set_color(c_white);
				if doDraw then draw_text(x,y,object_get_name(object_index));
			}
	}