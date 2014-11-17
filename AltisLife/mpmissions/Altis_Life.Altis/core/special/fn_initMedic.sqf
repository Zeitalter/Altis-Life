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