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
			["cop_spawn_6","Grenzkontrolle","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
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
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
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
			["rebellen_1","Reb.Hauptstadt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["rebellen_pyr","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_adac) then
		{
			_return = _return + [
			["adac_spawn_1","adac Kavalla","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};		
	      if ((getPlayerUID player) in ["76561198085389364","76561197970301480","76561198066558600","76561198055857726","76561198041865710","76561198096953919","76561198080448014","76561198129770323","76561198163843876","76561198021133757","76561198066668587","76561198069582880","76561198032282495","76561198030143176","76561198123448454","76561198092029172","76561198127040844","76561198134758744","76561198103196098","76561198091090582"]) then
		{
			_return = _return + [
			["civ_kbb_spawn","KBB-Hauptquartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];	
		};
		if ((getPlayerUID player) in ["76561198066223827","76561198101218753","76561198118042556","76561198159700397","76561197992914992","76561198045654236","76561198031337441","76561198128817311","76561198035863318","76561198060948265","76561198087840033"]) then
		{
			_return = _return + [
			["civ_SHD_spawn","Geheimquartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];	
		};
		if ((getPlayerUID player) in ["76561198061513520","76561198024584446","76561197965357268","76561198077736271","76561198093318694","76561197982082310","76561198128633636","76561198015781723","76561198128669687","76561198033813521"]) then
		{
			_return = _return + [
			["civ_ace_spawn","ACE-Quartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];	
		};
		if ((getPlayerUID player) in ["76561198158693494","76561198111485097","76561198042775286","78581198091390634","78581198091390634","76561198079833984","76561198035531102","76561198095802762","76561198055431290","76561198057380203","76561198132162871","76561198148333686","76561198136042620","76561198114564485","76561198158051778"]) then
		{
			_return = _return + [
			["civ_pma_spawn","PMA-Quartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];	
		};
		if ((getPlayerUID player) in ["76561198131198365","76561198093755385","76561198081889529","76561197983985732","76561197965970585","76561198133976725"]) then
		{
			_return = _return + [
			["civ_blwa_spawn","BLWA-Quartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
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
