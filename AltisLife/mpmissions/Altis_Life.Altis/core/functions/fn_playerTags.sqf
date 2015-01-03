#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];
_units = _units - [player];

{
	private["_name", "_text", "_icon", "_hasName", "_goggles", "_headgear", "_uniform"];
	_name = _x getVariable ["realname", name _x];
	_hasName = if(!isNil {(_x getVariable "realname")}) then {true} else {false};

	_goggles = 
	[
		"G_Bandanna_blk",
		"G_Balaclava_lowprofile",
		"G_Balaclava_combat",
		"G_Balaclava_oli",
		"G_Bandanna_beast",
		"G_Bandanna_tan",
		"G_Bandanna_sport",
		"G_Bandanna_aviator",
		"G_Bandanna_oli",
		"G_Bandanna_shades"
	];
	
	_headgear = 
	[
		"H_Shemag_olive",
		"H_Shemag_khk",
		"H_Shemag_tan",
		"H_Shemag_olive_hs",
		"H_ShemagOpen_khk",
		"H_ShemagOpen_tan"
	];

	_uniform =
	[
		"U_O_GhillieSuit"
	];
	
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		
		if(count _sPos > 1 && {_distance < 15}) then {
					_text = "";
					_icon = "";
					
			switch (true) do {
				//Maskiert
				case ((goggles _x) in _goggles): {_text = format["<t color='#333333'>Maskierter Spieler</t>"];};
				case ((headgear _x) in _headgear): {_text = format["<t color='#333333'>Maskierter Spieler</t>"];};
				case ((uniform _x) in _uniform) : {_text = format["<t color='#333333'>Maskierter Spieler</t>"];};
				
				//My Group
				case (_x in (units grpPlayer) && playerSide == civilian): {
					_groupname = (group _x) getVariable ["gang_name",""];
					_text = format["<t color='#00FF00'>%1</t><br/><t size='0.8' color='#00FF00'>%2</t>", _name, _groupname];
				};
				
				//Dead Players
				case (!alive _x): {
					_text = format["<t color='#333333'>%1</t>", _name];
				};
				
				//Cops
				case(_x getVariable["coplevel", 0] > 0) : {
					switch (_x getVariable["coplevel", 0]) do {
						case (1) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Rekrut</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (2) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Wachtmeister</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (3) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Kommissar</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (4) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Oberkommissar</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (5) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Hauptkommissar</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (6) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Polizeirat</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (7) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Polizeioberrat</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (8) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Polizeidirektor</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						case (9) : {_icon = "textures\marke.paa";_text = format["<img image='%2' size='1'/><t color='#0099FF'> Polizeipräsident</t><br/><t color='#FFFFFF'><t size='1.2'>%1</t>", _name, _icon];};
						//case (9) : {_icon = "icons\general_gs2.paa";_text = format["<t color='#0000FF'><img image='%2' size='1'></img> [General]</t><br/><t color='#0000FF'><t size='1.2'>%1</t>", _name, _icon];};
						default {};
					};
				};
				/*
				case (!isNil {(_x getVariable "rank")}): {format["<img image='%1' size='1'></img> %2",switch ((_x getVariable "rank")) do {
					case 2: {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"}; 
					case 3: {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
					case 4: {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
					case 5: {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
					case 6: {"\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa"};
					case 7: {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};
					case 8: {"\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa"};
					default {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
					},_x getVariable ["realname",name _x]]};
				*/
				//Medics
				/*
				case(_x getVariable["mediclevel", 0] > 0): {
					switch (_x getVariable["mediclevel", 0]) do {
						case (1) : {_icon = "a3\ui_f\data\map\MapControl\hospital_ca.paa";_text = format["<t color='#FF0000'><img image='%2' size='1'></img> Medic-Anwärter</t><br/><t color='#FF0000'><t size='1.2'>%1</t>", _name, _icon];};
						case (2) : {_icon = "a3\ui_f\data\map\MapControl\hospital_ca.paa";_text = format["<t color='#FF0000'><img image='%2' size='1'></img> Sanitäter</t><br/><t color='#FF0000'><t size='1.2'>%1</t>", _name, _icon];};
						case (3) : {_icon = "a3\ui_f\data\map\MapControl\hospital_ca.paa";_text = format["<t color='#FF0000'><img image='%2' size='1'></img> Notarzt</t><br/><t color='#FF0000'><t size='1.2'>%1</t>", _name, _icon];};
						case (4) : {_icon = "a3\ui_f\data\map\MapControl\hospital_ca.paa";_text = format["<t color='#FF0000'><img image='%2' size='1'></img> Chefarzt</t><br/><t color='#FF0000'><t size='1.2'>%1</t>", _name, _icon];};
						case (5) : {_icon = "a3\ui_f\data\map\MapControl\hospital_ca.paa";_text = format["<t color='#FF0000'><img image='%2' size='1'></img> Chefarzt</t><br/><t color='#FF0000'><t size='1.2'>%1</t>", _name, _icon];};
						default {};
					};
				};
				*/
				//case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x getVariable ["name","Unknown Player"]]};
				
				default {
					//Others with gang
					if(!isNil {(group _x) getVariable "gang_name"}) then {
						_groupname = (group _x) getVariable ["gang_name",""];
						_text = format["<t color='#B6B6B6'>%1</t><br/><t size='0.8' color='#B6B6B6'>%2</t>", _name, _groupname];
					//Normaly Civilians
					} else {
						_text = format["<t color='#FFFFFF'>%1</t>", _name];
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;