#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};

case "med_shop": 
	{
			_return set[count _return,
			["C_Offroad_01_F",5000]];
			
	if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
			_return set[count _return,
			["C_Van_01_box_F",38000]];
		};
	if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["I_Truck_02_medical_F",75000]];
		};
	if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_MRAP_02_F",25000]];
		};
	};
	
case "med_air_hs": 
	{
	if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",70000]];
		};
	if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
	};
		
case "adac_shop":
	{
	      if(license_civ_adac) then
			{
				_return set[count _return,
				["C_Offroad_01_repair_f",5000]];
				_return set[count _return,
				["C_SUV_01_F",13230]];
				_return set[count _return,
				["O_MRAP_02_F",15000]];
				_return set[count _return,
				["B_Truck_01_transport_F",23000]]; //B_Truck_01_transport_F
				_return set[count _return,
				["O_Heli_Light_02_unarmed_F",5300]]; //B_Truck_01_transport_F
			};
	 };
	 	
case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",25000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",45000],
			["C_Van_01_transport_F",75000],
			["C_Hatchback_01_sport_F",100000] 
		];
	};
	
case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",100000],
			["I_Truck_02_transport_F",200000],
			["I_Truck_02_covered_F",250000],
			["B_Truck_01_transport_F",1000000],
			["O_Truck_03_transport_F",750000],
			["O_Truck_03_covered_F",850000],
			["B_Truck_01_box_F",1250000],
			["O_Truck_03_device_F",1850000],
			["O_Truck_03_fuel_F",550000] 
		];	
	};
	
	
case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",25000],
			["I_MRAP_03_F",3700000],
			["O_MRAP_02_F",3160000],
			["B_MRAP_01_F",2330000],
			["B_Truck_01_mover_F",600000],
			["O_Truck_03_transport_F",750000],
			["B_G_Offroad_01_armed_F",3400000],
			["B_Heli_Light_01_F",1000000],
			["O_Heli_Light_02_unarmed_F",2330000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",5660000]];
			_return set[count _return,
			["O_Heli_Light_02_F",40000000]];
		};
	};
	
case "cop_car":
	{
		if(! license_cop_sek) then
		{
	       		_return set[count _return,
				["C_Offroad_01_F",5000]];
		
			if(__GETC__(life_coplevel) > 1) then
			{
				_return set[count _return,
				["C_Hatchback_01_F",10100]];
				_return set[count _return,
				["C_Hatchback_01_sport_F",20000]];
				_return set[count _return,
				["C_SUV_01_F",30000]];
			};
			if(__GETC__(life_coplevel) > 2) then
			{
				_return set[count _return,
				["B_MRAP_01_F",75000]];
				_return set[count _return,
				["I_Truck_02_covered_F",40000]];
			};
			if(__GETC__(life_coplevel) > 3) then 
			{
				_return set[count _return,   
				["O_MRAP_02_F",95000]];
			};
			if(__GETC__(life_coplevel) > 4) then
			{
				_return set[count _return,
				["O_MRAP_02_hmg_F",150000]];
			};
		};
	 };
	
case "sek_car":
	{
	     if(license_cop_sek) then
		{
			if(__GETC__(life_coplevel) > 6) then
			{
				_return set[count _return,
				["C_SUV_01_F",35000]];
				_return set[count _return,   
				["B_MRAP_01_F",80000]];
			};
			if(__GETC__(life_coplevel) > 7) then
			{
				_return set[count _return,   
				["I_MRAP_03_F",120000]];
			};
			if(__GETC__(life_coplevel) > 8) then
			{
				_return set[count _return,
				["I_MRAP_03_hmg_F",250000]];
			};
		};
	 };
	
case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",750000],
			["O_Heli_Light_02_unarmed_F",1200000],
			["I_Heli_Transport_02_F",2300000]
			["B_Heli_Light_01_F",1330000],
			["O_Heli_Light_02_unarmed_F",3000000],
			["I_Heli_Transport_02_F",4660000]
		];
	};
case "cop_air":
	{
		if(! license_cop_sek) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",70000]];

			if(__GETC__(life_coplevel) > 2) then
			{
				_return set[count _return,
				["I_Heli_light_03_unarmed_F",200000]];
			};
			if(__GETC__(life_coplevel) > 5) then
			{
				_return set[count _return,
				["O_Heli_Attack_02_black_F",250000]];
			};
		};
	};
case "sek_air":
	{
	    if(license_cop_sek) then
		{
			if(__GETC__(life_coplevel) > 6) then
			{
				_return set[count _return,   
				["B_Heli_Light_01_F",75000]];
			};
			if(__GETC__(life_coplevel) > 6) then
			{
				_return set[count _return,
				["B_Heli_Transport_01_F",280000]];
			};
		};
	 };
	 case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",10000]
		];
	};

case "cop_ship":
	{
		_return set[count _return,
		["B_Boat_Transport_01_F",5000]];
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Boat_Civil_01_police_F",15000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_SDV_01_F",25000]];
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",75000]];
		};
	};
};

_return;
