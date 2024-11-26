#region Camera
if g.gameCamera = noone
	{
		g.gameCamera = camera_create_view(0,0,GAME_RESOLUTION_WIDTH,GAME_RESOLUTION_HEIGHT)
		camera_apply(g.gameCamera)
	}
#endregion

if keyboard_check_pressed(vk_space)
{
	setVarList(["test1","test2","test3","test4","test5"])
}

if keyboard_check(vk_escape)
{
	game_end()
}