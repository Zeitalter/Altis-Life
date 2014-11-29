#include <macro.h>
/*
	File: fn_clothing_med.sqf
	Author original file fn_clothing_cop.sqf: Bryan "Tonic" Boardwine
        Modifi by Warsheep
	
	Description:
	Master config file for med clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Notarzt Ausruestung"];

_ret = [];
switch (_filter) do
{
	//Uniforms///////////////////////////////////////////////////////////////
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Notarzt Anwaerter",25]; // da anzug fia de, de no grea hinta de ohrn san
		if(__GETC__(life_mediclevel) > 1) then
		{
			_ret pushBack ["U_C_WorkerCoveralls","Notarzt",350]; //do groﬂﬂe sanni
		};
	};
	//Hats
	case 1:
	{
		_ret = 
		[
		];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret  = 
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;