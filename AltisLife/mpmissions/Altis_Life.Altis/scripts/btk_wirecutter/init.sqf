// Wait until the player exists
waitUntil {(isDedicated) || !(isNull player)};


// No dedicated
if (isDedicated) exitWith {};


// Add readme note
_null = player createDiarySubject ["BTK", "BTK"];
_null = player createDiaryRecord ["BTK", ["BTK Wirecutter", format["BTK Wirecutter<br />Version: 0.91<br />Author: sxp2high (BTK) (bufu@mail.nu)<br /><br />Description<br />Enables you to cut certain fences. When near a compatible fence, an action will be available to cut it.<br /><br />Cutting a fence:<br />- Requires a Toolbox.<br />- Will take 10-20 seconds.<br />- Can be aborted by moving a few steps away from the fence.<br /><br />Controls<br />Action menu"]]];


// Hide fence function
BTK_fnc_wirecutterHideFence = {

	private ["_fence","_do"];

	_fence = _this select 0;
	_do = _this select 1;
	
	_fence hideObject _do;

};


// Say function
BTK_fnc_wirecutterSay = {

	private ["_source","_sound","_radius"];

	_source = _this select 0;
	_sound = _this select 1;
	_radius = _this select 2;
	
	_source say [_sound, _radius];

};


// Remove cutter function, SPAWN this one
BTK_fnc_wirecutterRemoveCutter = {
	
	_cutter = _this select 0;
	
	player playActionNow "Gear";
	sleep 1;
	deTach _cutter;
	sleep 0.1;
	deleteVehicle _cutter;

};


// Respawn, re-add action
BTK_fnc_wirecutterRespawn = {
	waitUntil {(alive player)};
	btk_wirecutter_busy = false;
	_action = player addAction [format [("<t>" + ("Cut Fence") + "</t>")], "scripts\btk_wirecutter\cut.sqf", ["cut"], 4000, false, false, "", "btk_wirecutter_show_action && (player == _target)"];
};


// Define fence types
btk_wirecutter_fence_types = ["Land_New_WiredFence_10m_F", "Land_New_WiredFence_5m_F", "Land_Razorwire_F"];


// Variables
btk_wirecutter_show_action = false;
btk_wirecutter_busy = false;


// Add action
_action = player addAction [format [("<t>" + ("Zaun aufschneiden") + "</t>")], "scripts\btk_wirecutter\cut.sqf", ["cut"], 4000, false, false, "", "btk_wirecutter_show_action && (player == _target)"];


// Add eventhandler
_eh = player addEventHandler ["killed", { _null = [(_this select 0)] spawn BTK_fnc_wirecutterRespawn; }];


// Flow
[] spawn {

	sleep 0.1;

	while {true} do {
	
		_nearFences = nearestObjects [player, btk_wirecutter_fence_types, 3];

		btk_wirecutter_show_action = if (!(btk_wirecutter_busy) && ("ToolKit" in (items player)) && ((count _nearFences) > 0)) then { true; } else { false; };

		sleep 0.7;
	
	};

};