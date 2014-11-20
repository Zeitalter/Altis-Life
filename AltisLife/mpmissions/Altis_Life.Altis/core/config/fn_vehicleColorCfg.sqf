/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["textures\fahrzeug\zivilisten\offroad\badmobil.paa","civ"],
			["textures\fahrzeug\zivilisten\offroad\rocklila.paa","civ"],
			["textures\fahrzeug\zivilisten\offroad\stickbeige.paa","civ"],
			["textures\fahrzeug\donator\offroad\unicorn.paa","donator"],
			["textures\fahrzeug\notarzt\offroad.paa","med"],
			["textures\fahrzeug\polizei\offroad.paa","cop"]
		];
	};
	
	case "C_Offroad_01_repair_f":
	{
		_ret = 
		[
			["textures\fahrzeug\adac\offroad_adac.paa","civ"]
		];
	};

	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\fahrzeug\zivilisten\hatchback\badmobil.paa","civ"],
			["textures\fahrzeug\donator\hatchback\unicorn.paa","donator"],
			["textures\fahrzeug\polizei\hatchback.paa","cop"]
		];
	};
	
	case "C_Hatchback_01_sport_F": //textures\fahrzeug\taxi
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\fahrzeug\zivilisten\hatchback_s\redgull.paa","civ"],
			["textures\fahrzeug\zivilisten\hatchback_s\dragon.paa","civ"],
			["textures\fahrzeug\donator\hatchback\unicorn.paa","donator"],
			["textures\fahrzeug\polizei\hatchback.paa","cop"],
			["textures\fahrzeug\zivilisten\hatchback_s\grenzgaenger.paa","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["textures\fahrzeug\adac\suv_adac3.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\fahrzeug\zivilisten\suv\fire_suv.paa","civ"],
			["textures\fahrzeug\zivilisten\suv\monster.paa","civ"],
			["textures\fahrzeug\zivilisten\suv\tribal.paa","civ"],
			["textures\fahrzeug\zivilisten\suv\nyan_suv.paa","civ"],
			["textures\fahrzeug\zivilisten\suv\X6_suv.paa","civ"],
			["textures\fahrzeug\notarzt\suv.paa","med"],
			["textures\fahrzeug\polizei\suv.paa","cop"],
			["textures\fahrzeug\sek\suv.paa","sek"]
		];
		
		if(license_civ_adac) then 
		{ 
		_ret = 
		[
			["textures\fahrzeug\adac\suv_adac3.paa","civ"]
		];
		}; 
		/* else {
		if(! license_civ_adac) then 
		{ 
		_ret = 
		[
			["textures\fahrzeug\adac\suv_adac3.paa","cop"]
		];
		};  */
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_fuel_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["textures\fahrzeug\polizei\quadbike_Polizei.paa","cop"]
		];
	};
	
	case "B_MRAP_01_F":   
	{
		_ret = 
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","civ"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\fahrzeug\rebellen\hunter\winter_front.paa","reb","textures\fahrzeug\rebellen\hunter\winter_hinten.paa"],
			["textures\fahrzeug\rebellen\hunter\graywolf_front.paa","reb","textures\fahrzeug\rebellen\hunter\graywolf_hinten.paa"],
			["textures\fahrzeug\rebellen\hunter\jungle_front.paa","reb","textures\fahrzeug\rebellen\hunter\jungle_hinten.paa"],
			["textures\fahrzeug\polizei\hunter_front.paa","cop","textures\fahrzeug\polizei\hunter_hinten.paa"],
			["textures\fahrzeug\sek\hunter_front.paa","sek","textures\fahrzeug\sek\hunter_hinten.paa"]
		];
	};
	
	case "O_MRAP_02_F":      
	{
		_ret = 
		[
			["textures\fahrzeug\adac\Ifrit_adac2_Front.paa","sek","textures\fahrzeug\adac\Ifrit_adac2_hinten.paa"],
			["textures\fahrzeug\rebellen\ifrit\winter_front.paa","reb","textures\fahrzeug\rebellen\ifrit\winter_hinten.paa"],
			["textures\fahrzeug\notarzt\ifrit_front.paa","med","textures\fahrzeug\notarzt\ifrit_hinten.paa"],
			["textures\fahrzeug\polizei\ifrit_front.paa","cop","textures\fahrzeug\polizei\ifrit_hinten.paa"],
			["textures\fahrzeug\adac\Ifrit_adac2_Front.paa","civ","textures\fahrzeug\adac\Ifrit_adac2_hinten.paa"],
			["textures\fahrzeug\adac\Ifrit_adac2_Front.paa","cop","textures\fahrzeug\adac\Ifrit_adac2_hinten.paa"],
			["textures\fahrzeug\rebellen\ifrit\mbt_02_ext01_co.paa","reb","textures\fahrzeug\rebellen\ifrit\mbt_02_ext02_co.paa"]
		];
		if(license_civ_adac) then 
		{ 
		_ret = 
		[
			["textures\fahrzeug\adac\Ifrit_adac2_Front.paa","civ","textures\fahrzeug\adac\Ifrit_adac2_hinten.paa"]
		];
		};
		/*if(! license_civ_adac) then 
		{ 
		_ret = 
		[
			["textures\fahrzeug\adac\Ifrit_adac2_Front.paa","cop","textures\fahrzeug\adac\Ifrit_adac2_hinten.paa"]
		];
		};  */
	};
	
	case "O_MRAP_02_hmg_F":      
	{
		_ret = 
		[
			["textures\fahrzeug\polizei\ifrit_front.paa","cop","textures\fahrzeug\polizei\ifrit_hinten.paa"]
		];
	};
	
	case "O_Truck_03_device_F":    
	{
		_ret = 
		[
			["textures\fahrzeug\zivilisten\tempest\baufahrzeug_front.paa","civ","textures\fahrzeug\zivilisten\tempest\baufahrzeug_hinten.paa"]
		];
	};
	
		case "I_MRAP_03_F":    
	{
		_ret = 
		[
			["textures\fahrzeug\rebellen\strider\camo.paa","reb"],
			["textures\fahrzeug\sek\strider.paa","sek"],
			["textures\fahrzeug\rebellen\strider\striderw.paa","reb"]
		];
	};
	
	case "I_MRAP_03_hmg_F":    
	{
		_ret = 
		[
			["textures\fahrzeug\sek\strider.paa","sek"]
		];
	};
	
	case "I_Truck_02_covered_F":  
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\fahrzeug\polizei\truck_front.paa","cop","textures\fahrzeug\polizei\truck_hinten.paa"]
		];
	};
	
	case "I_Truck_02_transport_F": // B_Truck_01_transport_F 
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_Truck_01_transport_F":  
	{
		_ret = 
		[
			["textures\fahrzeug\adac\hemtt_mover_adac.paa","med"],
			["textures\fahrzeug\zivilisten\hemett\hemett.paa","civ"]
		];
		if(license_civ_adac) then 
		{ 
		_ret = 
		[
			["textures\fahrzeug\adac\hemtt_mover_adac.paa","civ"]
		];
		};
	};
	
	case "B_Heli_Light_01_F": 
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["textures\fahrzeug\notarzt\hummingbird.paa","med"],
			["textures\fahrzeug\polizei\hummingbird.paa","cop"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","sek"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["textures\fahrzeug\adac\orca_adac1.paa","cop"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["textures\fahrzeug\adac\orca_adac1.paa","cop"]
		];
		if(license_civ_adac) then 
		{ 
		_ret = 
		[
			["textures\fahrzeug\adac\orca_adac1.paa","civ"]
		];
		};
		/*if(! license_civ_adac) then 
		{ 
		_ret = 
		[
			["textures\fahrzeug\adac\orca_adac1.paa","cop"]
		];
		}; */
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};
	
	case "B_Heli_Transport_01_F":
	{
		_ret =
		[
			["textures\fahrzeug\sek\ghosthawk_front.paa","sek","textures\fahrzeug\sek\ghosthawk_hinten.paa"],
			["textures\fahrzeug\rebellen\ghost\hex_j_ext01_co.paa","reb","textures\fahrzeug\rebellen\ghost\hex_j_ext02_co.paa"]
		];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_ret =
		[
			["textures\fahrzeug\notarzt\hellcat.paa","med"],
			["textures\fahrzeug\polizei\hellcat.paa","cop"]
		];
	};
	
	case "B_Boat_Transport_01_F":
	{
		_ret = 
		[
			["textures\fahrzeug\polizei\boot.paa","cop"]
		];
	};
	
	case "C_Boat_Civil_01_police_F":
	{
		_ret = 
		[
			["textures\fahrzeug\polizei\motorboot.paa","cop"]
		];
	};
	
	case "B_Boat_Armed_01_minigun_F":
	{
		_ret = 
		[
			["textures\fahrzeug\polizei\speedboot.paa","cop"]
		];
	};
	
	case "B_SDV_01_F":
	{
		_ret = 
		[
			["textures\fahrzeug\polizei\uboot.paa","cop"]
		];
	};
};

_ret;