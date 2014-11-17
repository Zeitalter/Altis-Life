waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198087840033"]) then {
	sleep 30;
	player addaction [("<t color=""#FF0280"">" + ("Quester Menu") +"</t>"),"scripts\AdminTool\atools\prio3\Admin-Pfad.sqf","",5,false,true,"",""];
};