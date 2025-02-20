const RESPAWN_DELAY = 0.1; //set the delay time (in seconds) for respawn

/////////////////////////
/////////////////////////

//ensure event is wrapped in table to prevent accidental script stacking
InstantRespawnTable <- {
	//only validate player entites one time (not per death)
	function OnGameEvent_player_activate(params)
	{
		GetPlayerFromUserID(params.userid).ValidateScriptScope();
	}
	
	//on death, do fire by handle to force respawn with variable delay
	function OnGameEvent_player_death(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		EntFireByHandle(player, "RunScriptCode", "self.ForceRespawn()", RESPAWN_DELAY, null null);
	}
};

__CollectGameEventCallbacks(InstantRespawnTable);
