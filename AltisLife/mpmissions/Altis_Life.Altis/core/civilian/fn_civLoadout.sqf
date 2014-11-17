#include <macro.h>
/*
	File: fn_civLoadout.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
	
	Description:
	Loads the civs out with the default gear. des is vo mia 
*/
private["_clothings", "_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_redwhite","U_C_Commoner1_1"];
player addUniform (_clothings select (floor(random (count _clothings))));

/* ITEMS */
player addHeadgear "H_Hat_blue"; 
player addBackpack "B_FieldPack_oucamo";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player assignItem "H_Cap_blu";
player addweapon "NVGoggles";
player addItem "FirstAidKit"; //bearbeitet

//wenn a adac is dann woast as eh
if(license_civ_adac) then
			{
				player addUniform "U_Rangemaster";
				player addHeadgear "H_Cap_tan";
				player addBackpack "B_FieldPack_oucamo_Repair";
				player addItem "ItemMap";
				player assignItem "ItemMap";
				player addItem "ItemCompass";
				player assignItem "ItemCompass";
				player addItem "ItemWatch";
				player assignItem "ItemWatch";
				player assignItem "H_Cap_blu";
				player addweapon "NVGoggles";
				player addItem "FirstAidKit"; //bearbeitet
				
	player setObjectTextureGlobal [0,"textures\uniform\adac\recruit_uniform_adac.paa"];
			};
			
[] call life_fnc_saveGear;
[] spawn life_fnc_updateClothing;   
				