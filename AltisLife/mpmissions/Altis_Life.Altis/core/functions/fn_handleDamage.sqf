/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//NBR Gummigeschoss
if(!isNull _source) then {
	if(_source != _unit) then {
		_curMag = currentMagazine _source;
		if (_curMag in ["11Rnd_45ACP_Mag","6Rnd_45ACP_Cylinder"] && _projectile in ["B_45ACP_Ball"]) then {
			if((side _source == west && playerSide != west)) then {
				private["_isVehicle","_isQuad"];
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf(vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				//_damage = false;	
				
				if(_isVehicle || _isQuad) then {
					player action ["Eject",vehicle player];
					[_unit,_source] spawn life_fnc_handleDowned;
				} else {
					[_unit,_source] spawn life_fnc_handleDowned;
				};
			};
			
			if(side _source == west && playerSide == west) then {
				_damage = false;
			};
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;