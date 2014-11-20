/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiss";};
			case 3: {_color = "Blau";};
			case 4: {_color = "DunkelRot";};
			case 5: {_color = "Blau / Weiss"};
			case 6: {_color = "Badmobil"};
			case 7: {_color = "Rockstar Lila"};
			case 8: {_color = "Sticker Beige"};
			case 9: {_color = "Unicorn"};
			case 10: {_color = "Ambulanz"};
			case 11: {_color = "Polizei"};
		};
	};
	
	case "C_Offroad_01_repair_f" :
	{
		switch (_index) do
		{
			case 0: {_color = "adac";};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Gruen";};
			case 2: {_color = "Blau";};
			case 3: {_color = "DunkelBlau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiss"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Badmobil"};
			case 9: {_color = "Unicorn"};
			case 10: {_color = "Polizei"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "DunkelBlau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz-Weiss"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Gruen"};
			case 6: {_color = "RedGull"};
			case 7: {_color = "Drache"};
			case 8: {_color = "Unicorn"};
			case 9: {_color = "Polizei"};
			case 10: {_color = "Grenzgaenger"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "adac";};
			case 1: {_color = "DunkelRot";};
			case 2: {_color = "Schwarz";};
			case 3: {_color = "Silber";};
			case 4: {_color = "Orange";};
			case 5: {_color = "Ghostrider";};
			case 6: {_color = "Monster Energy";};
			case 7: {_color = "Gruenes Tribal";};
			case 8: {_color = "Nyan";};
			case 9: {_color = "B M W X6";};
			case 10: {_color = "Ambulanz";};
			case 11: {_color = "Polizei"};
			case 12: {_color = "SEK"};
		};
	};
/*if(license_civ_adac) then
{
	case "C_SUV_01_F":
	{
		
      switch (_index) do
	   {
			case 0: {_color = "adac"};
	   };
	};
}; */ 			

	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Blau"};
			case 3: {_color = "Rot"};
			case 4: {_color = "Weiss"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Camo"};
			case 7: {_color = "Digi Desert"};
			case 8: {_color = "Rebell"};
			case 9: {_color = "Polizei"};
		};
	};
	
	case "B_MRAP_01_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Schwarz"};
	        	case 2: {_color = "Winter"};
	        	case 3: {_color = "Schwarz-Blau"};
	        	case 4: {_color = "Jungle Camo"};
	        	case 5: {_color = "Polizei"};
			case 6: {_color = "SEK"};
		};
	};
	
	case "O_MRAP_02_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "adac"};
			case 1: {_color = "Winter"};
			case 2: {_color = "Ambulanz"};
			case 3: {_color = "Polizei"};
			case 4: {_color = "Rebellen Tarnfleck"};			
		};
	};
	
	case "O_MRAP_02_hmg_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "O_Truck_03_device_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "Baufahrzeug"};
		};
	};
	
		case "I_MRAP_03_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "Winter"};
			case 1: {_color = "SEK"};
			case 2: {_color = "Wüste"};
		};
	};
	
	case "I_MRAP_03_hmg_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Gefangenentransporter"};
		};
	};
	
	case "I_Truck_02_transport_F": //B_Truck_01_transport_F
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "B_Truck_01_transport_F": //B_Truck_01_transport_F
	{
		switch (_index) do
		{
			case 0: {_color = "adac"};
			case 1: {_color = "rost"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Blau"};
			case 2: {_color = "Rot"};
			case 3: {_color = "Blaue Linie"};
			case 4: {_color = "Elliptisch"};
			case 5: {_color = "Wuetend"};
			case 6: {_color = "Jeans Blau"};
			case 7: {_color = "Rote Linie"};
			case 8: {_color = "Sonnenuntergang"};
			case 9: {_color = "Vrana"};
			case 10: {_color = "Blaue Wellen"};
			case 11: {_color = "Digital"};
			case 12: {_color = "Digital Gruen"};
			case 13: {_color = "Ambulanz"};
			case 14: {_color = "Polizei"};
			case 15: {_color = "SEK"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "adac"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Weiss / Blau"};
			case 3: {_color = "Digital Wueste"};
			case 4: {_color = "Digital Gruen"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "I_Heli_Transport_02_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_Heli_Transport_01_F":   
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
			case 1: {_color = "camo"};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ambulanz"};
			case 1: {_color = "Polizei"};
		};
	};

	case "B_Boat_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "C_Boat_Civil_01_police_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "B_Boat_Armed_01_minigun_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "B_SDV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
};

_color;