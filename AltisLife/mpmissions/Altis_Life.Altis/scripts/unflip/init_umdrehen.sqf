// mei unflip script mit scpecial thanks zum norrin :) ! spll3r !


_unit = player;


//if (!local _unit) exitWith {};

_d = 0;

while {true} do
{	
	
	if (count (nearestObjects [player, ["Car"], 5]) > 0) then 
	{	
	
		_vcl = nearestObjects [player, ["Car"], 5] select 0;
		
		if (_d == 0 && (count (crew _vcl))== 0 && ((vectorUp _vcl) select 2) < 0.5) then
		{
			AinvPknlMstpSnonWnonDnon_medic_1 = player addAction ["Fahrzeug drehen", "scripts\unflip\umdrehen.sqf",_vcl, 0, true, true];
			_d = 1;
		};	
	};
	
	if (_d == 1 && count (nearestObjects [player, ["Car"], 5]) == 0 || !alive player) then 
	{
		player removeAction AinvPknlMstpSnonWnonDnon_medic_1;
		_d = 0;
	};
	sleep 1;
};

if(true)exitWith {};


	