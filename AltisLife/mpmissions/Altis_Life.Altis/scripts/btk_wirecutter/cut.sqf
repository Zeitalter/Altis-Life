// Executed from action


// Paremeter
_player = _this select 1;


// Check again for near fences
_nearFences = nearestObjects [player, btk_wirecutter_fence_types, 3];


// Only caller
if (!(local _player)) exitWith {};


// No fence nearby?
if ((count _nearFences) == 0) exitWith {
	[] spawn { hint "Kein Zaun in der Nähe!"; sleep 5; hintSilent ""; };
};


// Already destroyed?
if (!((damage (_nearFences select 0)) < 1)) exitWith {
	[] spawn { hint "Der Zaun ist bereits zerstört!"; sleep 5; hintSilent ""; };
};


// Flag as busy (Hides action)
btk_wirecutter_busy = true;


// Variables
_fence = (_nearFences select 0);
_loops = (6 + (round (random 4)));
_playerPos = (getPosATL _player);


// Destroyed fence type
_destroyedFence = switch ((typeOf _fence)) do {
	//case ("Land_New_WiredFence_10m_F") : { "Land_New_WiredFence_10m_Dam_F"; };
	//case ("Land_New_WiredFence_5m_F") : { "Land_New_WiredFence_5m_Dam_F"; };
	default { ""; };
};


// Take cutter out
player playActionNow "Gear";
sleep 1;


// Create cutter and attach
_cutter = createVehicle ["Land_Pliers_F", _playerPos, [], 0, "NONE"];
_cutter attachTo [_player, [-0.05, -0.05, 0.05], "LeftHandMiddle1"];
_cutter setVectorUp [1, 0, 0];


// Cutting the fence
for "_j" from 1 to _loops do {
	
	// Player died or moved away?
	if (!(alive _player) || ((_player distance _playerPos) > 0.5)) exitWith {
		btk_wirecutter_busy = false;
		_null = [_cutter] spawn BTK_fnc_wirecutterRemoveCutter;
	};
	
	// Cut anim/sound
	_player playActionNow "PutDown";
	sleep 0.2;
	[[_player, "btk_cut", 5], "BTK_fnc_wirecutterSay"] call BIS_fnc_MP;

	sleep (1.3 + (random 0.7));

};


// Check again
if (!(alive _player) || ((_player distance _playerPos) > 0.5)) exitWith {
	btk_wirecutter_busy = false;
	_null = [_cutter] spawn BTK_fnc_wirecutterRemoveCutter;
};


// Hide and destroy
[[_fence, true], "BTK_fnc_wirecutterHideFence", nil, true] call BIS_fnc_MP;
_fence setDamage 1;


// Create destroyed fence, if available
if (_destroyedFence != "") then {

	_pos = getPosATL _fence;
	_dir = getDir _fence;
	_vectorUp = vectorUp _fence;
	_vectorDir = vectorDir _fence;

	_dFence = createVehicle [_destroyedFence, _pos, [], 0, "NONE"];
	_dFence setDir _dir;
	_dFence setPosATL [(_pos select 0), (_pos select 1), (_pos select 2) - 0.1];
	_dFence setVectorDirAndUp [_vectorDir, _vectorUp];

};


// Remove cutter
_null = [_cutter] spawn BTK_fnc_wirecutterRemoveCutter;


// Done, re-enable action
btk_wirecutter_busy = false;