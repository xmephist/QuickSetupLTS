// Basic Save and Load functions

function saveGameData()
	{
		ds_map_secure_save(g.gameFlag,"qsSave.qss")
		return 1;
	}
	
function loadGameData()
	{
		g.gameFlag = ds_map_secure_load("qsSave.qss")
		return 1;
	}