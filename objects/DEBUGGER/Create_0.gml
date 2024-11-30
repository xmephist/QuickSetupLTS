if !DEBUG_ENABLE {instance_destroy(id);}

varList = [];
varListEnable = false;

drawDebugOverlay = false;

debugOverlay = [ // Update this in Step
	""
];

alarm_set(0,50)