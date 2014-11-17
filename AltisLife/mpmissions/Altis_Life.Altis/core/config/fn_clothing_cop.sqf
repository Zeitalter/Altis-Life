#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store. des wa vieleicht a gschiss mid dem gschmarre do
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms///////////////////////////////////////////////////////////////
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Cop Uniform",25]; // da anzug fia de, de no grea hinta de ohrn san
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt","Kommissar",350]; //Kommissar
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_B_CTRG_1","Uniform2014",1250]; //Hauptkommissar / Kappo U_B_survival_uniform U_I_HeliPilotCoveralls
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_worn","SEK Uniform",550];  //SEK
		};
	};
	
	//Hats///////////////////////////////////////////////////////////////////////////
case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret  pushBack ["H_Beret_blk_POLICE","Barret Polizei",75];
			_ret  pushBack ["H_Cap_police","Basecap Polizei",75];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret  pushBack ["H_Beret_blk_POLICE","Barret Polizei",75];

		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret  pushBack ["H_HelmetSpecB_blk","SF Schwarz",100];
			_ret  pushBack ["H_Watchcap_blk",nil,100];
			_ret  pushBack ["H_Bandanna_gry","Bandanna Grau",100];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret  pushBack ["H_Watchcap_cbr",nil,100];
			_ret  pushBack ["H_Watchcap_blk",nil,100];
			_ret  pushBack ["H_Watchcap_khk",nil,100];
			_ret  pushBack ["H_Booniehat_khk_hs",nil,100];
			_ret  pushBack ["H_Booniehat_khk",nil,100];
			_ret  pushBack ["H_ShemagOpen_khk",nil,100];
			_ret  pushBack ["H_ShemagOpen_tan",nil,100];
			_ret  pushBack ["H_MilCap_gry",nil,100];
			_ret  pushBack ["H_Cap_headphones","Rangemaster Cap",100];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret  pushBack ["H_Beret_Colonel","Barret Komissar",100];
			_ret  pushBack ["H_Bandanna_khk_hs","Bandana Headset",100];
			_ret  pushBack ["H_MilCap_oucamo","Militärs Mütze",550];
			_ret  pushBack ["H_Cap_headphones","Rangemaster Cap",75];	
		};
		if(__GETC__(life_coplevel) > 5) then 
		{
			_ret  pushBack ["H_Beret_02","Barret Nato",550];
			_ret  pushBack ["H_HelmetB_light_snakeskin","ECH Snake",550];
			_ret  pushBack ["H_HelmetB_light_black","ECH Schwarz",550];
			_ret  pushBack ["H_HelmetB_light_sand","ECH Sand",550]; 
			_ret  pushBack ["H_CrewHelmetHeli_B","SEK Gesichtsschutz",550];
			_ret  pushBack ["H_PilotHelmetHeli_B","SEK-Helm DIN65515",550];
			_ret  pushBack ["H_HelmetCrew_I","SEK-Helm DIN8114",550];    
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			
		};
	};
	
	//Glasses////////////////////////////////////////////////////////////////////////
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
			["G_Spectacles_Tinted",nil,250],
			["G_Diving","Taucherbrille",55],
			["G_Bandanna_shades",nil,250],
			["G_Bandanna_khk",nil,250],
			["G_Bandanna_oli",nil,250],
			["G_Bandanna_aviator",nil,250],
			["G_Bandanna_blk",nil,250],
			["G_Bandanna_sport",nil,250],
			["G_Combat",nil,250],
			["G_Balaclava_combat",nil,250],
			["G_Balaclava_lowprofile",nil,250],
			["G_Balaclava_blk",nil,250]
			
		];
	};
	
	//Vest///////////////////////////////////////////////////////////////////////////
	case 3:
	{
		_ret  pushBack ["V_Rangemaster_belt",nil,800];
		_ret  pushBack ["V_TacVest_blk_POLICE",nil,800];
		_ret  pushBack ["V_TacVestIR_blk","Traenengasweste",950];
		if(__GETC__(life_coplevel) > 0) then
		{
		    _ret  pushBack ["V_RebreatherIA","Tauchgerät",550];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret  pushBack ["V_TacVest_blk_POLICE","Polizei Schwarz",550];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret  pushBack ["V_TacVestIR_blk","Traenengas Schutzweste",550];  //tr�nengasschutzweste 	V_TacVestIR_blk
			_ret  pushBack ["V_TacVest_khk","Polizei Braun",550];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret  pushBack ["V_Rangemaster_belt",nil,750];
			_ret  pushBack ["V_Chestrig_khk",nil,750];
			_ret  pushBack ["V_HarnessO_brn",nil,750];
			_ret  pushBack ["V_HarnessO_gry",nil,750];
			_ret  pushBack ["V_TacVest_blk_POLICE",nil,750];
			_ret  pushBack ["V_TacVest_brn",nil,750];
			_ret  pushBack ["V_TacVestIR_blk","Traenengas Schutzweste",750];
			_ret  pushBack ["V_RebreatherB",nil,750];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret  pushBack ["V_PlateCarrier1_blk","SF Weste",550];
			_ret  pushBack ["V_PlateCarrierSpec_rgr","SF Weste Grün",550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
	
		};
		if(__GETC__(life_coplevel) > 6) then
		{
	
		};
	};
	
	//Backpacks//////////////////////////////////////////////////////////////////////
	case 4:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret  pushBack ["B_AssaultPack_cbr",nil,2500];
			_ret  pushBack ["B_Kitbag_sgg",nil,800];
			_ret  pushBack ["B_Kitbag_cbr",nil,4500];
			_ret  pushBack ["B_Kitbag_mcamo",nil,4500];
			_ret  pushBack ["B_Bergen_blk",nil,800];
			_ret  pushBack ["B_Bergen_sgg",nil,4500];
			_ret  pushBack ["B_FieldPack_blk",nil,800];
			_ret  pushBack ["B_OutdoorPack_blk",nil,800];
			_ret  pushBack ["B_HuntingBackpack",nil,800];
			_ret  pushBack ["B_TacticalPack_oli",nil,3500];
			_ret  pushBack ["B_Carryall_oli",nil,5000];
			_ret  pushBack ["B_Carryall_khk",nil,5000];	
		};
		if(__GETC__(life_coplevel) > 2) then
		{
	
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret  pushBack ["B_UAV_01_backpack_F",nil,50000];
		};
		if(__GETC__(life_coplevel) == 4) then
			{
			_ret  pushBack ["B_AssaultPack_blk",nil,5000];	
			_ret  pushBack ["B_AssaultPack_rgr",nil,5000];	
			_ret  pushBack ["B_Carryall_cbr",nil,5000];	
			_ret  pushBack ["B_Carryall_mcamo",nil,5000];	
			_ret  pushBack ["B_Kitbag_rgr",nil,5000];	
			_ret  pushBack ["B_Kitbag_mcamo",nil,5000];	
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			
		};
	};
};

_ret;