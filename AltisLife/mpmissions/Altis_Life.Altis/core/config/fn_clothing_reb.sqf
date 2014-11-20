/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_O_CombatUniform_ocamo",nil,15610],
			["U_B_PilotCoveralls",nil,15610],
			["U_O_CombatUniform_oucamo",nil,15610],
			["U_I_CombatUniform","Gorka-Tarnanzug",15610], //U_B_CTRG_2
			["U_B_CTRG_2","Sithkampfanzug",15610],
			["U_IG_Guerilla1_1",nil,15610],
			["U_IG_leader","Guerilla Leader",15340],
			["U_O_GhillieSuit",nil,50000]
		];
	};
	
	//Hats  H_HelmetB 
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_HelmetB",nil,650],
			["H_HelmetB_camo",nil,650],
			["H_HelmetB_light",nil,650],
			["H_HelmetIA",nil,650],
			["H_Helmet_Kerry",nil,650],
			["H_HelmetCrew_B",nil,650],
			["H_PilotHelmetFighter_B",nil,650],
			["H_PilotHelmetHeli_I",nil,650],
			["H_CrewHelmetHeli_I",nil,650],
			["H_HelmetLeaderO_ocamo",nil,650],
			["H_BandMask_demon",nil,650],
			["H_Watchcap_camo",nil,650],
			["H_TurbanO_blk",nil,650],
			["H_Hat_camo",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,25],
                  ["G_Balaclava_lowprofile",nil,20],
                  ["G_Balaclava_oli",nil,20],
			["G_Balaclava_combat",nil,20],
			["G_Bandanna_aviator",nil,20],
			["G_Bandanna_beast",nil,20],
			["G_Bandanna_tan",nil,10],
			["G_Bandanna_sport",nil,100],
			["G_Bandanna_blk",nil,30],
			["G_Bandanna_oli",nil,55],
               	["G_Bandanna_shades",nil,55]
		];
	};
	
	//Vest  V_BandollierB_oli 
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500],
			["V_BandollierB_oli",nil,4500],
			["V_PlateCarrier3_rgr",nil,4500],
			["V_Chestrig_rgr",nil,4500],
			["V_TacVest_oli",nil,4500],
			["V_TacVest_camo",nil,4500],
			["V_HarnessOGL_brn",nil,4500],
			["V_PlateCarrierIA2_dgtl",nil,4500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};