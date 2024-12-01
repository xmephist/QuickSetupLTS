function setFlag(flag,data)
	{
		g.gameFlag[? flag] = data
		if DEBUG_FLAG_OUTPUT then dbg("Flag '"+string(flag)+"' set to '"+string(data)+"'")
	}
	
function getFlag(flag)
	{
		if ds_map_exists(g.gameFlag,flag)
		{
			return g.gameFlag[? flag];
		} else {
			if DEBUG_FLAG_OUTPUT then dbg("Flag '"+string(flag)+"' does not exist")
		}
	}