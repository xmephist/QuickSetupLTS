debugOverlay = [ // Update this in Step
	"Debug Overlay\n",
	"FPS: "+string(fps),
	"Object Count: "+string(instance_count),
	
	
];

if keyboard_check_pressed(192) // Press ` / ~ key to open debug overlay
	{
		drawDebugOverlay = !drawDebugOverlay;
		dbg("Toggle Debug Overlay");
	}
	
