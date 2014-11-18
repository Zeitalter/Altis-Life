/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_2","Sofia HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Luftwaffenstützpunkt","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_5","Autobahn Kontrollposten","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_6","Kontrollposten Echo","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};

	case civilian:
	{
		_return = [];
				
		if(count life_tent > 0) then {
		_markerLocal = createMarkerLocal[format["civ_spawn_tent_%1",getPlayerUID player],life_tent select 1];
		_markerLocal setMarkerShapeLocal "ICON";
		_markerLocal setMarkerTypeLocal "hd_destroy";
		_markerLocal setMarkerColorLocal "ColorBlack";
		_markerLocal setMarkerTextLocal "Zelt";
		
		_return = [[format["civ_spawn_tent_%1",getPlayerUID player],"Zelt","\a3\ui_f\data\map\locationtypes\vegetationbroadleaf_ca.paa"]];
		};
		
		_return = _return + [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};
		if(license_civ_rebel) then
		{
			_return = _return + [
			["rebellen_1","Reb.Hauptposten","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["rebellen_pyr","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_adac) then
		{
			_return = _return + [
			["adac_spawn_1","adac Kavalla","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};		
	      if ((getPlayerUID player) in ["76561198021133757","76561198066668587","76561198069582880","76561198032282495","76561198030143176","76561198123448454","76561198092029172","76561198127040844","76561198134758744","76561198103196098","76561198091090582"]) then
		{
			_return = _return + [
			["civ_kbb_spawn","KBB-Hauptquartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];	
		};
		if ((getPlayerUID player) in ["76561198122478669","76561198046457260","76561198066771135","76561198111038559","76561198152140505","76561198150971155","76561198131300747","76561198132522077","76561198060311501","76561198137130908","76561198015492899","76561198090791470","76561197979142822","76561197985732202","76561198035863318","76561198066223827","76561198149479164","76561197992914992","76561198112544012","76561198019802229","76561198020766381","76561198143500980","76561198031529752"]) then
		{
			_return = _return + [
			["civ_DF_spawn","Die Firma-Quartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];	
		};
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
