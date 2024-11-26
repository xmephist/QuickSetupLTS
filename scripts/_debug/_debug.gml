
function setVarList(array)
	{
		if instance_exists(DEBUGGER)
		{
			DEBUGGER.varList = array
			DEBUGGER.varListEnable = true
		}
	}
	
function varListDisable()
	{
		if instance_exists(DEBUGGER)
		{
			DEBUGGER.varListEnable = false
		}
	}