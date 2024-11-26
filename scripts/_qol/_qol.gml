// These are a collection of quality of life functions so that you don't
// need to type out longer built-in function names.

#region show_debug_message() Alternative

function dbg(_input,important = 0,ignoreCaller = false)
	{
		// Object name that is calling.
		var obj = "Unknown Object: "
		if !ignoreCaller
		{
			with(self)
				{
					obj = object_get_name(object_index)+": "
				}
		}
		
		// Do not output if release
		if !DEBUG_ENABLE then return;
		
		// Put everything together
		var wholeInp = obj+string(_input)
		
		// Output
		if !important then show_debug_message(wholeInp) else show_message(wholeInp)
	}

// Prints a DS Grid using dbg()
function dbgGrid(dsGrid)
	{
		var data = array_create(ds_grid_height(dsGrid),"Y")
		for(var a = 0; a < ds_grid_height(dsGrid); a++)
			{
				data[a] = array_create(ds_grid_width(dsGrid),"X")
				var temp = []
				for(var b = 0; b < ds_grid_width(dsGrid); b++)
					{
						array_push(data[a],dsGrid[# b,a])
					}
			}
		dbg(data)
	}

// Prints a DS List using dbg()
function dbgList(dsList)
	{
		var data = array_create(ds_list_size(dsList))
		
		for(var a = 0; a < ds_list_size(dsList); a++)
			{
				data[a] = dsList[| a]
			}
			
		dbg(data)
	}

#endregion

#region

function SetAlign(halign,valign)
	{
		draw_set_halign(halign)
		draw_set_valign(valign)
	}

function SetAlignColor(halign,valign,color)
	{
		draw_set_halign(halign)
		draw_set_valign(valign)
		draw_set_color(color)
	}


#endregion