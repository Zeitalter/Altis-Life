/*
 Helicopter crash v1.0
	Script code By BangaBob
	
 Credit: KillzoneKid for object locality.
 
 Description - Use this script for to simulate a survivable helicopter crash. Works on in MP & SP.
 
 Instructions: - Add this code into your init.sqf - null=[] execVM "heliCrash\crashInit.sqf"; 
 Arguments: [HeliName,Survive] spawn H8_crashNow
 
	HeliName (Object) = Name of helicopter you wish to crash
	Survive (Boolean) = True (Survive) | False {Don't Survive)
*/

H8_crashNow = {
	if (isServer) then{
		_heli=(_this select 0);
		_survive=[_this, 1, TRUE] call BIS_fnc_param;
		0=[_heli,_survive] spawn H8_fnc_heliInit;
		};
};


H8_fnc_handleDamage = {
	player addEventHandler ["HandleDamage", {false}];
};


H8_fnc_say2D = {
	_source = (_this select 0);
	_sound = (_this select 1);
	
		_source say2D _sound;
};


H8_fnc_eject = {
 _heli = (_this select 0);

	moveOut player;
	titleText ["","BLACK IN",1];
	enableCamShake false;
player setpos [(getPosASL _heli select 0),(getPosASL _heli select 1),(getPosASL _heli select 2)+4];

	_dir =		getDir player;
	_speed = 	20;
	
	player setVelocity[
			(sin _dir * _speed), 
			(cos _dir * _speed), 
			0];
 	_hndl = ppEffectCreate ["DynamicBlur", 450];
	_hndl ppEffectEnable true;
		_n=50;
		_hndl ppEffectAdjust [_n];
		_hndl ppEffectCommit 0;
 player switchMove "AidlPpneMstpSnonWnonDnon_AI"; 
 
_startTime = 	time + 10;
waitUntil {isTouchingGround player or time > _startTime or ((getPosASLW player) select 2) < 1};

		
_relD = 	[player,_heli] call BIS_fnc_dirTo;

player say2D "ring"; 
player setDir _relD;

 for "_i" from _n to 0 step -1 do{
	_hndl ppEffectAdjust [_i];
	_hndl ppEffectCommit 0;
 sleep 0.04;
		};
		
		
player removeAllEventHandlers "HandleDamage";
};


H8_fnc_smoke = {
_heli = (_this select 0);
		_smoke=_heli getVariable "smoke";
				if (!isNil ("_smoke")) then{
				detach _smoke;
				_smoke setPos [0,0,0];
					};
};


H8_fnc_setHit = {
private ["_power","_sound","_freq"];
_heli=(_this select 0);
_crewMembers=(_this select 1);

	_hitPoints =	["HitAvionics","HitEngine","HitHRotor"];
	_hitPoints =	_hitPoints call BIS_fnc_arrayShuffle;
	
	_freq = 4;
	_power = 0;
				{
		_hitPoint = _x;
					
	for "_h" from 0.4 to 1.1 step 0.1 do {
		_heli setHit [getText(configFile >> "cfgVehicles" >> (typeOf  _heli) >> "HitPoints" >> _hitPoint >> "name"), _h];
			sleep 0.1;
				};
				
	 if (_hitPoint == "HitAvionics")then{
			_sound = "warning";
						};
						
	 if (_hitPoint == "HitEngine")then{
			[[_heli,"engineBang"],"H8_fnc_say2D",_crewMembers] call BIS_fnc_MP;
			_smoke = "test_EmptyObjectForSmoke" createVehicle (getPosASL _heli);
			_smoke attachTo [_heli,[0,0,0]];
				_heli setVariable ["smoke",_smoke,true];
			
					_sound = "engineFailure";
						_heli setHit ["Glass1", 1];
							_power = _power + 3;
							};
						
	 if (_hitPoint == "HitHRotor")then{
		_sound = "warning2";
		_power = _power + 3;
						};
							
		if (_power > 4)then{
			_freq = _freq - 0.5;
				};
				
	if ((_heli getVariable "deadHeli")) exitWith {};

[[_heli,_sound],"H8_fnc_say2D",_crewMembers] call BIS_fnc_MP;
[[_power,_freq],"H8_fnc_camShake",_crewMembers] call BIS_fnc_MP;

		sleep (1.5 + random 1);

				}foreach  _hitPoints;
};


H8_fnc_camShake = {
 _power = (_this select 0);
 _freq = (_this select 1);

	enableCamShake true;
	addCamShake [_power, 30, _freq];	
};


H8_fnc_heliInit = {
private ["_heli"];
    _heli = _this select 0;
	_survive = (_this select 1);

	
    if (local _heli) then {
		_heli enableCopilot false;
		_heli lock true;
		_crewMembers =		[]; 
				{
			_crew=_x;
		if (isPlayer _crew)then{
			_crewMembers set [count _crewMembers,_crew];
						};
				}forEach crew _heli; 

		if (_survive) then {
	[[],"H8_fnc_handleDamage",_crewMembers] call BIS_fnc_MP;
					};
					
	0=[_heli,_crewMembers] spawn H8_fnc_setHit;
		_heli setVariable ["deadHeli",false];	
		
waitUntil {(((getPosATL _heli) select 2) < 15) OR (velocity _heli select 2 < - 13) OR ((getPosASLW _heli)select 2) < 10};

	[[_heli,"pullUp"],"H8_fnc_say2D",_crewMembers] call BIS_fnc_MP;
	
_startTime = 	time + 10;
waitUntil {(((getPosATL _heli) select 2) < 2) OR time > _startTime OR ((getPosASLW _heli) select 2) < 1}; 

	_heli setVariable ["deadHeli",true];
	_heli lock false;
	
		if (_survive)then{
	[[_heli],"H8_fnc_eject",_crewMembers] call BIS_fnc_MP;
			};
			
	_heli setDamage 1;
	
		[[_heli],"H8_fnc_smoke",true] call BIS_fnc_MP;
	
sleep 2;

_rating=(rating player);
 if (_rating < 0)
	then{
 _rating = 	_rating - _rating * 2; // CALCULATE RESET SCORE
 player addRating _rating;
	};
		
    } else {
        PVsetPilot = _this;
        if (isDedicated) then {
            (owner _heli) publicVariableClient "PVsetPilot";
        } else {
            publicVariableServer "PVsetPilot";
        };
    };
};


"PVsetPilot" addPublicVariableEventHandler {
    (_this select 1) spawn H8_fnc_heliInit;
};
