#include <macro.h>
//Fahrzeugversicherung vom spll3r danke fürs grundgerüst an Kevin Webb

private["_nearVehicles","_vehicle","_price"];
if(vehicle player != player) then
{
	_vehicle = vehicle player;
}
	else
{
	_nearVehicles = nearestObjects[getPos player,["Car","Air","Ship"],50];
	if(count _nearVehicles > 0) then
	{
		{
			if(!isNil "_vehicle") exitWith {}; //Kill the loop.
			_vehData = _x getVariable["vehicle_info_owners",[]];
			if(count _vehData  > 0) then
			{
				_vehOwner = (_vehData select 0) select 0;
				if((getPlayerUID player) == _vehOwner) exitWith
				{
					_vehicle = _x;
				};
			};
		} foreach _nearVehicles;
	};
};

if(isNil "_vehicle") exitWith {hint "Park dein Fahrzeug näher heran!";};
if(isNull _vehicle) exitWith {};
if(_vehicle getVariable["isInsured",false]) exitWith { hint "Dieses Fahrzeug ist bereits bei uns gemeldet."; };
if(!(_vehicle in life_vehicles)) exitWith {hint "Dass Fahrzeug scheint nicht ihnen zu gehoeren"; };
_price = switch(typeOf _vehicle) do
{
case "B_Heli_Light_01_F": {100000};
case "C_SUV_01_F": {11000};
case "C_Offroad_01_F": {4000};
case "C_Hatchback_01_sport_F": {22500};
case "O_Heli_Light_02_unarmed_F": {140000};
case "B_Quadbike_01_F": {700};
case "C_Van_01_transport_F": {12000};
case "C_Van_01_box_F": {18000};
case "C_Van_01_fuel_F": {21000};
case "I_Truck_02_transport_F": {22500};
case "I_Truck_02_covered_F": {30000};
case "B_Truck_01_fuel_F": {40000};
case "B_Truck_01_transport_F": {40000};
case "B_Truck_01_box_F": {345000};
case "B_Truck_01_covered_F": {215000};
case "O_Truck_03_fuel_F": {500000};
case "O_Truck_03_covered_F": {100000};
case "O_Truck_03_device_F": {240000}; //gerät
case "I_G_Offroad_01_F": {4500};
case "I_G_Offroad_01_armed_F": {76000};
case "O_MRAP_02_F": {140000};
case "I_Heli_Transport_02_F": {100000};
case "I_Heli_light_03_unarmed_F": {50000};
case "B_Heli_Transport_01_F": {140000};
case "C_Rubberboat": {1500};
case "C_Boat_Civil_01_F": {6600};
case "C_Boat_Civil_01_rescue_F": {6600};
case "O_SDV_01_F": {30000};
case "B_Boat_Transport_01_F": {900};
case "C_Boat_Civil_01_police_F": {6000};
case "B_SDV_01_F": {30000};
case "B_Boat_Armed_01_minigun_F": {40000};
case "B_Heli_Transport_03_F": {250000};
case "B_Heli_Transport_03_unarmed_F": {50000}; 
case "O_Heli_Transport_04_F": {50000};
case "O_Heli_Transport_04_ammo_F": {50000};
case "O_Heli_Transport_04_box_F": {50000};
case "O_Heli_Transport_04_medevac_F": {50000};
case "O_Heli_Transport_04_fuel_F": {50000};
case "O_Heli_Transport_04_bench_F": {50000};
case "O_Heli_Transport_04_repair_F": {50000}; 
case "O_Heli_Transport_04_covered_F": {50000};
case "C_Heli_Light_01_civil_F": {25000};
default { -1};
};
if(_price == -1) exitWith { hint "Sie könnnen dieses Fahrzeug leider nicht bei uns versichern."; };
if(playerSide == independent) then { _price = _price / 4; };
//_price = (_price * __GETC__(life_vip_discount));
if(life_cash < _price) exitWith { hint format["Sie brauchen mindestens eine Kontosicherheit von $%1",_price]; };
hint format["Sie haben nun ein Abbo bei uns für $%1 eingerichtet , sollte dein Fahrzeug explodieren werden wir dieses ersetzen und in ihrer Garage abstellen.",_price];
life_atmcash = life_atmcash - _price;
/*while {true} do {
    life_atmcash = life_atmcash - _price;
    systemChat "Soeben wurden dir deine Abbokosten, deiner Fahrzeugversicherung abgebucht.";
    systemChat "Zahlung alle 1,5h anfällig!";
    sleep 60;
};
*/

closeDialog 0;
_vehicle setVariable["isInsured",true,true];
[[_vehicle],"TON_fnc_vehicleInsurance",false,false] spawn life_fnc_MP; 








