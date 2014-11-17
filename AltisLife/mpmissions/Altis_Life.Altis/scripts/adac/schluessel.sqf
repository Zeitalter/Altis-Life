#include <macro.h>
/*
	Schluesselmacher by spll3r thx to BlackLagoon 
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_vehownerid","_costful_impound"];
_vehicle = cursorTarget;

//if(license_civ_adac) then 
//{
	if(player distance cursorTarget > 10) exitWith {};
	// ##16 
	if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {};

	if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
	{
	addaction ["Schluessel anfertigen","scripts\adacschluessel.sqf"];
	};
//};