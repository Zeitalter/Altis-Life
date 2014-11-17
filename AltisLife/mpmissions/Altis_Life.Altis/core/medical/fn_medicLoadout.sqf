/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
player addUniform "U_Rangemaster";
player addBackpack "B_Kitbag_cbr";
player addItem "Medikit";
player addItem "NVGoggles";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "FirstAidKit";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

player setObjectTextureGlobal [0,"textures\uniform\medic\standard_kleidung.paa"];