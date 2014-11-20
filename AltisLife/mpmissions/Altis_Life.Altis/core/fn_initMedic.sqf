#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};
///////////////////////////////////////////////////
switch (__GETC__(life_medlevel)) do 
			 {
	             case 1: {life_paycheck = life_paycheck + 6500;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 10500;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 25500;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 100000;}; // Rank 4
	             case 5: {life_paycheck = life_paycheck + 100000;}; // Rank 5
	             };
////////////////////////////////////////
[] call life_fnc_medicLoadout;
[] call life_fnc_spawnMenu;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	[] spawn
	{
	    	while {true} do
    		{
        		waitUntil {uniform player == "U_Rangemaster"};
        		player setObjectTextureGlobal [0,"textures\uniform\medic\standard_kleidung.paa"]; //Rekrut
        		waitUntil {uniform player != "U_Rangemaster"};
    		};
	};
	
	[] spawn
	{
	    	while {true} do
    		{
        		waitUntil {uniform player == "U_C_WorkerCoveralls"};
        		player setObjectTextureGlobal [0,"textures\uniform\medic\med.paa"]; //Rekrut
        		waitUntil {uniform player != "U_C_WorkerCoveralls"};
    		};
	};

/*
if((__GETC__(life_medicLevel)) < 2)
{
	[] spawn
	{
	    	while {true} do
    		{
        		waitUntil {uniform player == "U_Rangemaster"};
        		player setObjectTextureGlobal [0,"textures\uniform\medic\sanitäter_kleidung.paa"]; //Rekrut
        		waitUntil {uniform player != "U_Rangemaster"};
    		};
	};
};

if((__GETC__(life_medicLevel)) < 3)
{
	[] spawn
	{
	    	while {true} do
    		{
        		waitUntil {uniform player == "U_Rangemaster"};
        		player setObjectTextureGlobal [0,"textures\uniform\medic\notarzt_kleidung.paa"]; //Rekrut
        		waitUntil {uniform player != "U_Rangemaster"};
    		};
	};
};

if((__GETC__(life_medicLevel)) < 4
{
	[] spawn
	{
	    	while {true} do
    		{
        		waitUntil {uniform player == "U_Rangemaster"};
        		player setObjectTextureGlobal [0,"textures\uniform\medic\chefarzt_kleidung.paa"]; //Rekrut
        		waitUntil {uniform player != "U_Rangemaster"};
    		};
	};
};
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.