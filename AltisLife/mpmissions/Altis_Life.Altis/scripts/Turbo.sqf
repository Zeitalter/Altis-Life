// script by spll3r, thx for if part to gg
//
//////////////////////////////////////////////////////////////
if (isNull player) exitwith {} ;

fn_Turbo =
{
	_veh = vehicle player;
	_speed = speed _veh;
	_velXM = velocityModelSpace _veh select 0;
	_velYM = velocityModelSpace _veh select 1;
	if(_speed <= 1 || _speed >= 180 || _velXM > _velYM) exitWith {};
	_dir = direction _veh;
	_velX = velocity _veh select 0;
	_velY = velocity _veh select 1;
	_velZ = velocity _veh select 2;
	_speedBoost = 0.1;
	
	_veh setVelocity [(((sin(_dir)) * _speedBoost) + _velX),(((cos(_dir)) * _speedBoost) + _velY),_velZ];
};

dokeyDown={
	   private ["_r","_key_delay"] ;
        _key_delay  = 0.01;// MAX TIME BETWEEN KEY PRESSES 
     // player setvariable ["key",false];// ENABLE THIS LINE FOR SINGLE KEYPRESS BY REMOVING // AT THE START OF THE LINE
   _r = false ; 
	   if (player getvariable["key",true] and (_this select 1)  == 46) exitwith {player setvariable["key",false]; [_key_delay] spawn {sleep (_this select 0);player setvariable["key",true]; };_r};
	  if ((_this select 1)  == 42 and speed player >1) then {
	   if(vehicle player != player && vehicle player == "C_Hatchback_01_sport_F" && isTouchingGround vehicle player && driver vehicle player == player) then {
	   call fn_Turbo;
   };
    _r=true;
      };
     _r;
} ;




waituntil {!(IsNull (findDisplay 46))};
(FindDisplay 46) displayAddEventHandler ["keydown","_this call dokeyDown"];  
