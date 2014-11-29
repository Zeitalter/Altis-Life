#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file. ohmei wa des a kreiz...
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
// für jedn hanswuaschtn an andan paycheck///////
switch (__GETC__(life_coplevel)) do 
			{
	             case 1: {life_paycheck = life_paycheck + 2000;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 5500;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 10500;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 13500;}; // Rank 4
	             case 5: {life_paycheck = life_paycheck + 180000;}; // Rank 5 
	             case 6: {life_paycheck = life_paycheck + 300000;}; // Rank 6
	             case 7: {life_paycheck = life_paycheck + 9080;}; // Rank 7
	             case 8: {life_paycheck = life_paycheck + 15080;}; // Rank 7500
	             case 9: {life_paycheck = life_paycheck + 309080;}; // Rank 7500
	            };
////////////////////////////////////////
player setVariable["coplevel",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
[] spawn
{
    while {true} do
    {
        waitUntil {uniform player == "U_BG_Guerilla2_1"};
        player setObjectTextureGlobal [0,"textures\uniform\cop\cop6_co.paa"]; //Rekrut neue uniform
        waitUntil {uniform player != "U_BG_Guerilla2_1"};
    };
};
[] spawn 
{
    while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
        player setObjectTextureGlobal [0,"textures\uniform\cop\cop4.paa"]; //SEK denk i
        waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
    };
}; 
[] spawn 
{
    while {true} do
    {
        waitUntil {uniform player == "U_B_CTRG_1"}; 
        player setObjectTextureGlobal [0,"textures\uniform\cop\cop5.paa"]; // Hauptkommissar / Kappo
        waitUntil {uniform player != "U_B_CTRG_1"};
    };
}; 
[] spawn 
{
    while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam_tshirt"};
        player setObjectTextureGlobal [0,"textures\uniform\cop\cop5.paa"]; // Kommissar
        waitUntil {uniform player != "U_B_CombatUniform_mcam_tshirt"};
    };
}; 
[] spawn 
{
    while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam_vest"};
        player setObjectTextureGlobal [0,"textures\uniform\cop\cop5.paa"]; // 2014 Variante
        waitUntil {uniform player != "U_B_CombatUniform_mcam_vest"};
    };
}; 
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
