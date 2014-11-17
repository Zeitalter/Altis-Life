
waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198035863318","76561198066223827","76561198128817311"]) then {
	sleep 30;
	player addaction [("<t color=""#FF2350"">" + ("Admin Menu") +"</t>"),"scripts\AdminTool\atools\prio1\Admin-Pfad.sqf","",5,false,true,"",""];
	sleep 1200
	exitWith {};
};
