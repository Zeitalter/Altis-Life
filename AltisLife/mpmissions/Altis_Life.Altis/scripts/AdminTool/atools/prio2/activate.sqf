
waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561197992914992"]) then {
	sleep 30;
	player addaction [("<t color=""#FF0000"">" + ("Com Menu") +"</t>"),"scripts\AdminTool\atools\prio2\Admin-Pfad.sqf","",5,false,true,"",""];
};
