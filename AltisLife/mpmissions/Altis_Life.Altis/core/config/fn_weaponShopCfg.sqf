#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
		{
			switch (true) do 
			{
				case (playerSide != independent): {"Du bist leider kein Sanitäter!"};
				default {
					["Sanitäter Shop",
						[
							["ItemGPS",nil,100],
							["Binocular",nil,150],
							["ToolKit",nil,250],
							["FirstAidKit",nil,150],
							["Medikit",nil,500],
							["NVGoggles",nil,1200],
							["B_FieldPack_ocamo",nil,3000],
							["ItemRadio","Handy",500]
						]
					];
				};
			};
		};
		
	case "adac_all":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist leider kein ADAC!"};
			case (!license_civ_adac): {"Sie sind nicht beim ADAC registriert!"};
            default
            {
                ["Altis ADAC-Shop",
                    [    
                        ["ItemCompass",nil,10],
                        ["ItemGPS",nil,100],
                        ["ItemMap",nil,10],
                        ["ItemWatch",nil,10],
                        ["ToolKit",nil,50],
                        ["FirstAidKit",nil,50],
                        ["NVGoggles",nil,900],
                        ["Rangefinder",nil,1000],
                        ["ItemRadio","Handy",500]
                    ]
                ];
            };
        };
    };	
		
	case "cop_rekrut":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			default
			{
				["Rekrut Ausrüstung",
					[
						["hgun_Pistol_heavy_01_snds_F","Gasdruck Pistole",7500], //FourFive
						["11Rnd_45ACP_Mag","10g NBR Geschosse",10],
						["SMG_02_F",nil,15000], 	//Sting
						["30Rnd_9x21_Mag",nil,25],
						["ItemGPS",nil,100],
						["ItemMap",nil,10],
						["ItemCompass",nil,10],
						["ItemWatch",nil,10],
						["Binocular",nil,150],
						["Rangefinder","Radarmessgerät",2000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["ItemRadio","Handy",500] 
					]
				];
			};
		};
	};
	
	case "cop_wachtmeister":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Wachtmeister Ausrüstung",
					[
						["hgun_Pistol_heavy_01_snds_F","Gasdruck Pistole",7500], //FourFive
						["11Rnd_45ACP_Mag","10g NBR Geschosse",10],
						["ItemGPS",nil,100],
						["ItemMap",nil,10],
						["ItemCompass",nil,10],
						["ItemWatch",nil,10],
						["Binocular",nil,150],
						["Rangefinder","Radarmessgerät",2000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						//["","---------------------",0],
						["SMG_02_F",nil,15000], 	//Sting
						["30Rnd_9x21_Mag",nil,25],
						["optic_MRD","GDP-Zielvorrichtung",350],
						["muzzle_snds_L",nil,650],
						["optic_Aco",nil,650],
						["optic_ACO_grn",nil,650],
						["acc_pointer_IR",nil,650],
						["acc_flashlight",nil,650],
						["optic_DMS",nil,650],
						["optic_MRCO",nil,650],
						["optic_Hamr",nil,650],
						["optic_Arco",nil,650],
						["ItemRadio","Handy",500]
					]
				];
			};
		};
	};
	
	case "cop_kommissar":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Kommissar Ausrüstung",
					[
						["hgun_Pistol_heavy_01_snds_F","Gasdruck Pistole",7500], //FourFive
						["11Rnd_45ACP_Mag","10g NBR Geschosse",10],
						["ItemGPS",nil,100],
						["ItemMap",nil,10],
						["ItemCompass",nil,10],
						["ItemWatch",nil,10],
						["Binocular",nil,150],
						["Rangefinder","Radarmessgerät",2000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						//["","---------------------",0],
						["SMG_02_F",nil,15000], 	//Sting
						["30Rnd_9x21_Mag",nil,25],
						["optic_MRD","GDP-Zielvorrichtung",350],
						["muzzle_snds_L",nil,650],
						["optic_Aco",nil,650],
						["optic_ACO_grn",nil,650],
						["acc_pointer_IR",nil,650],
						["acc_flashlight",nil,650],
						//["","---------------------",0],
						["arifle_MXC_F",nil,25000],	//MXC
						["arifle_MXC_Black_F",nil,25000],	//MXC Black
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["SMG_01_F",nil,25000], //Vermin
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,200],
						["HandGrenade_Stone","Blendgranate",500],
						["optic_Holosight",nil,650],
						["optic_NVS",nil,1000],
						["optic_DMS",nil,650],
						["optic_MRCO",nil,650],
						["optic_Hamr",nil,650],
						["optic_Arco",nil,650],
						["muzzle_snds_H",nil,650],
						["muzzle_snds_acp",nil,650],
						["SmokeShell",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellRed",nil,100],
						["SmokeShellPurple",nil,100],
						["SmokeShellOrange",nil,100],
						["SmokeShellBlue",nil,100],
						["B_UavTerminal",nil,2000],
						["ItemRadio","Handy",500]
					]
				];
			};
		};
	};
	
	case "cop_oberkommissar":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Oberkommissar Ausrüstung",
					[
						["hgun_Pistol_heavy_01_snds_F","Gasdruck Pistole",7500], //FourFive
						["11Rnd_45ACP_Mag","10g NBR Geschosse",10],
						["ItemGPS",nil,100],
						["ItemMap",nil,10],
						["ItemCompass",nil,10],
						["ItemWatch",nil,10],
						["Binocular",nil,150],
						["Rangefinder","Radarmessgerät",2000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						//["-","---------------------",0],
						["SMG_02_F",nil,15000], 	//Sting
						["30Rnd_9x21_Mag",nil,25],
						["optic_MRD","GDP-Zielvorrichtung",350],
						["muzzle_snds_L",nil,650],
						["optic_Aco",nil,650],
						["optic_ACO_grn",nil,650],
						["acc_pointer_IR",nil,650],
						["acc_flashlight",nil,650],
						//["-","---------------------",0],
						["arifle_MXC_F",nil,25000],	//MXC
						["arifle_MXC_Black_F",nil,25000],	//MXC Black
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["SMG_01_F",nil,25000], //Vermin
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,200], //SatchelCharge_Remote_Mag
						["HandGrenade_Stone","Blendgranate",500],
						["SatchelCharge_Remote_Mag","Sprengstoff",200000],
						["optic_Holosight",nil,650],
						["optic_NVS",nil,1000],
						["muzzle_snds_H",nil,650],
						["muzzle_snds_acp",nil,650],
						["SmokeShell",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellRed",nil,100],
						["SmokeShellPurple",nil,100],
						["SmokeShellOrange",nil,100],
						["SmokeShellBlue",nil,100],
						["B_UavTerminal",nil,2000],
						//["-","---------------------",0],
						["arifle_MX_F",nil,30000], //MX
						["arifle_MX_Black_F",nil,30000], //MX Black
						["SmokeShellGreen","CS-Gasgranate",500], //SmokeShellGreen	
						["optic_DMS",nil,650],
						["optic_MRCO",nil,650],
						["optic_Hamr",nil,650],
						["optic_Arco",nil,650],
						["ItemRadio","Handy",500]
					]
				];
			};
		};
	};
	
	case "cop_hauptkommissar":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Hauptkommissar Ausrüstung",
					[
						["hgun_Pistol_heavy_01_snds_F","Gasdruck Pistole",7500], //FourFive
						["11Rnd_45ACP_Mag","10g NBR Geschosse",10],
						["ItemGPS",nil,100],
						["ItemMap",nil,10],
						["ItemCompass",nil,10],
						["ItemWatch",nil,10],
						["Binocular",nil,150],
						["Rangefinder","Radarmessgerät",2000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						//["-","---------------------",0],
						["SMG_02_F",nil,15000], 	//Sting
						["30Rnd_9x21_Mag",nil,25],
						["optic_MRD","GDP-Zielvorrichtung",350],
						["muzzle_snds_L",nil,650],
						["optic_Aco",nil,650],
						["optic_ACO_grn",nil,650],
						["acc_pointer_IR",nil,650],
						["acc_flashlight",nil,650],
						//["-","---------------------",0],
						["arifle_MXC_F",nil,25000],	//MXC
						["arifle_MXC_Black_F",nil,25000],	//MXC Black
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["SMG_01_F",nil,25000], //Vermin
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,200],
						["HandGrenade_Stone","Blendgranate",500],
						["optic_Holosight",nil,650],
						["optic_NVS",nil,1000],
						["muzzle_snds_H",nil,650],
						["muzzle_snds_acp",nil,650],
						["SmokeShell",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellRed",nil,100],
						["SmokeShellPurple",nil,100],
						["SmokeShellOrange",nil,100],
						["SmokeShellBlue",nil,100],
						["B_UavTerminal",nil,2000],
						//["-","---------------------",0],
						["arifle_MX_F",nil,30000], //MX
						["arifle_MX_Black_F",nil,30000], //MX Black
						["SmokeShellGreen","CS-Gasgranate",500], //SmokeShellGreen
						["SatchelCharge_Remote_Mag","Sprengstoff",500],	
												//["-","---------------------",0],
						["hgun_Pistol_heavy_02_F","NBR Pistole",15000], //Zubr
						["6Rnd_45ACP_Cylinder","20g NBR Geschoss",50],
						["optic_Yorris","NBR-Zielvorrichtung",500],
						["arifle_MXM_F",nil,35000], //MXM 
						["arifle_MXM_Black_F",nil,35000], //MXM Black
						["arifle_MX_GL_F",nil,40000], //MX3GL
						["arifle_MX_GL_Black_F",nil,40000], //MX3GL Black
						["arifle_MX_SW_F",nil,50000], //MXSW
						["arifle_MX_SW_Black_F",nil,50000], //MXSW Black
						["100Rnd_65x39_caseless_mag",nil,600],
						["100Rnd_65x39_caseless_mag_Tracer",nil,600],
						["UGL_FlareWhite_F",nil,100],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["srifle_LRR_F",nil,200000],
						["7Rnd_408_Mag",nil,2000],
						["launch_RPG32_F","HE Raketenwerfer",20000],
                        		["RPG32_F","HE Rakete",7000],
						["optic_SOS",nil,1000],
						["optic_DMS",nil,650],
						["optic_MRCO",nil,650],
						["optic_Hamr",nil,650],
						["optic_Arco",nil,650],
						["ItemRadio","Handy",500]
						
					]
				];
			};
		};
	};
	
	case "cop_polizeirat":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 6): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Polzeirat Ausrüstung",
					[
						["hgun_Pistol_heavy_01_snds_F","Gasdruck Pistole",7500], //FourFive
						["11Rnd_45ACP_Mag","10g NBR Geschosse",10],
						["ItemGPS",nil,100],
						["ItemMap",nil,10],
						["ItemCompass",nil,10],
						["ItemWatch",nil,10],
						["Binocular",nil,150],
						["Rangefinder","Radarmessgerät",2000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						//["-","---------------------",0],
						["SMG_02_F",nil,15000], 	//Sting
						["30Rnd_9x21_Mag",nil,25],
						["optic_MRD","GDP-Zielvorrichtung",350],
						["muzzle_snds_L",nil,650],
						["optic_Aco",nil,650],
						["optic_ACO_grn",nil,650],
						["acc_pointer_IR",nil,650],
						["acc_flashlight",nil,650],
						//["-","---------------------",0],
						["arifle_MXC_F",nil,25000],	//MXC
						["arifle_MXC_Black_F",nil,25000],	//MXC Black
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["SMG_01_F",nil,25000], //Vermin
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,200],
						["HandGrenade_Stone","Blendgranate",500],
						["optic_Holosight",nil,650],
						["optic_NVS",nil,1000],
						["muzzle_snds_H",nil,650],
						["muzzle_snds_acp",nil,650],
						["SmokeShell",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellRed",nil,100],
						["SmokeShellPurple",nil,100],
						["SmokeShellOrange",nil,100],
						["SmokeShellBlue",nil,100],
						["B_UavTerminal",nil,2000],
						//["-","---------------------",0],
						["arifle_MX_F",nil,30000], //MX
						["arifle_MX_Black_F",nil,30000], //MX Black
						["SmokeShellGreen","CS-Gasgranate",500], //SmokeShellGreen
						["SatchelCharge_Remote_Mag","Sprengstoff",500],	
						["optic_DMS",nil,650],
						["optic_MRCO",nil,650],
						["optic_Hamr",nil,650],
						["optic_Arco",nil,650],
						//["-","---------------------",0],
						["hgun_Pistol_heavy_02_F","NBR Pistole",15000], //Zubr
						["6Rnd_45ACP_Cylinder","20g NBR Geschoss",50],
						["optic_Yorris","NBR-Zielvorrichtung",500],
						["arifle_MXM_F",nil,35000], //MXM 
						["arifle_MXM_Black_F",nil,35000], //MXM Black
						["arifle_MX_GL_F",nil,40000], //MX3GL
						["arifle_MX_GL_Black_F",nil,40000], //MX3GL Black
						["arifle_MX_SW_F",nil,50000], //MXSW
						["arifle_MX_SW_Black_F",nil,50000], //MXSW Black
						["100Rnd_65x39_caseless_mag",nil,600],
						["100Rnd_65x39_caseless_mag_Tracer",nil,600],
						["optic_SOS",nil,1000],
						["UGL_FlareWhite_F",nil,100],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						//["-","---------------------",0],
						["LMG_Mk200_F",nil,60000], //Mk200
						["200Rnd_65x39_cased_Box",nil,1200],
						["200Rnd_65x39_cased_Box_Tracer",nil,1200],
						["srifle_EBR_F",nil,40000], //Mk18
						["20Rnd_762x51_Mag",nil,100],
						["muzzle_snds_H_MG",nil,650],
						["muzzle_snds_B",nil,650],
						["srifle_LRR_F",nil,200000],
						["7Rnd_408_Mag",nil,2000],
						["launch_RPG32_F","HE Raketenwerfer",20000],
                        		["RPG32_F","HE Rakete",7000],
                        		["ItemRadio","Handy",500]
					]
				];
			};
		};
	};
	
	case "cop_polizeioberrat":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 7): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Polzeioberrat Ausrüstung",
					[
						["hgun_Pistol_heavy_01_snds_F","Gasdruck Pistole",7500], //FourFive
						["11Rnd_45ACP_Mag","10g NBR Geschosse",10],
						["ItemGPS",nil,100],
						["ItemMap",nil,10],
						["ItemCompass",nil,10],
						["ItemWatch",nil,10],
						["Binocular",nil,150],
						["Rangefinder","Radarmessgerät",2000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						//["-","---------------------",0],
						["SMG_02_F",nil,15000], 	//Sting
						["30Rnd_9x21_Mag",nil,25],
						["optic_MRD","GDP-Zielvorrichtung",350],
						["muzzle_snds_L",nil,650],
						["optic_Aco",nil,650],
						["optic_ACO_grn",nil,650],
						["acc_pointer_IR",nil,650],
						["acc_flashlight",nil,650],
						//["-","---------------------",0],
						["arifle_MXC_F",nil,25000],	//MXC
						["arifle_MXC_Black_F",nil,25000],	//MXC Black
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["SMG_01_F",nil,25000], //Vermin
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,200],
						["HandGrenade_Stone","Blendgranate",500],
						["SatchelCharge_Remote_Mag","Sprengstoff",500],
						["optic_Holosight",nil,650],
						["optic_NVS",nil,1000],
						["muzzle_snds_H",nil,650],
						["muzzle_snds_acp",nil,650],
						["SmokeShell",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellRed",nil,100],
						["SmokeShellPurple",nil,100],
						["SmokeShellOrange",nil,100],
						["SmokeShellBlue",nil,100],
						["B_UavTerminal",nil,2000],
						//["-","---------------------",0],
						["arifle_MX_F",nil,30000], //MX
						["arifle_MX_Black_F",nil,30000], //MX Black
						["SmokeShellGreen","CS-Gasgranate",500], //SmokeShellGreen	
						["optic_DMS",nil,650],
						["optic_MRCO",nil,650],
						["optic_Hamr",nil,650],
						["optic_Arco",nil,650],
						["-","---------------------",0],
						["hgun_Pistol_heavy_02_F","NBR Pistole",15000], //Zubr
						["6Rnd_45ACP_Cylinder","20g NBR Geschoss",50],
						["optic_Yorris","NBR-Zielvorrichtung",500],
						["arifle_MXM_F",nil,35000], //MXM 
						["arifle_MXM_Black_F",nil,35000], //MXM Black
						["arifle_MX_GL_F",nil,40000], //MX3GL
						["arifle_MX_GL_Black_F",nil,40000], //MX3GL Black
						["arifle_MX_SW_F",nil,50000], //MXSW
						["arifle_MX_SW_Black_F",nil,50000], //MXSW Black
						["100Rnd_65x39_caseless_mag",nil,600],
						["100Rnd_65x39_caseless_mag_Tracer",nil,600],
						["optic_SOS",nil,1000],
						["UGL_FlareWhite_F",nil,100],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						//["-","---------------------",0],
						["LMG_Mk200_F",nil,60000], //Mk200
						["200Rnd_65x39_cased_Box",nil,1200],
						["200Rnd_65x39_cased_Box_Tracer",nil,1200],
						["srifle_EBR_F",nil,40000], //Mk18
						["20Rnd_762x51_Mag",nil,100],
						["muzzle_snds_H_MG",nil,650],
						["muzzle_snds_B",nil,650],
						//["-","---------------------",0],
						["LMG_Zafir_F",nil,65000], //Zafir
						["150Rnd_762x51_Box",nil,1000],
						["150Rnd_762x51_Box_Tracer",nil,1000],
						//["srifle_LRR_F",nil,100000], //M320LRR
						//["7Rnd_408_Mag",nil,500],
						//["srifle_GM6_F",nil,100000], //GM6Lynx
						//["5Rnd_127x108_Mag",nil,1000],
						//["5Rnd_127x108_APDS_Mag",nil,5000],
						["optic_LRPS",nil,2000],
						["srifle_LRR_F",nil,200000],
						["7Rnd_408_Mag",nil,2000],
						["launch_RPG32_F","HE Raketenwerfer",20000],
                        		["RPG32_F","HE Rakete",7000],
                        		["ItemRadio","Handy",500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist leider kein Zivilist!"};
			case (!license_civ_rebel): {"Lass dir erst etwas über Rebellen beibringen. Komm mit einer Lizenz wieder."};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["arifle_TRG20_F",nil,35000],
						["30Rnd_65x39_caseless_green",nil,275],
						["arifle_Mk20C_F",nil,40000],
						["30Rnd_556x45_Stanag",nil,100],
						["arifle_Katiba_F",nil,60000],
						["arifle_Katiba_GL_F",nil,90000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_EBR_F",nil,150000],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_DMR_01_F",nil,250000],
						["10Rnd_762x51_Mag",nil,500],
						["LMG_Zafir_F",nil,1500000],
						["150Rnd_762x51_Box_Tracer",nil,7000],
						["LMG_Mk200_F",nil,750000],
						["200Rnd_65x39_cased_Box",nil,4000],
						//["srifle_GM6_camo_F",nil,4000000],
						//["5Rnd_127x108_Mag",nil,5000],
						//["5Rnd_127x108_APDS_Mag","Panzerbrechend",150000],
						//["launch_RPG32_F",nil,4000000],
						//["RPG32_F",nil,10000],
						//["RPG32_HE_F",nil,15000],
						["SatchelCharge_Remote_Mag","Sprengstoff",1500000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,20000],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,20000],
						["optic_LRPS",nil,30000],
						["optic_NVS",nil,50000],
						//["optic_tws_mg","Thermalvisier",75000], //  optic_tws_mg 
						["acc_flashlight",nil,1000],
						["1Rnd_Smoke_Grenade_shell",nil,5000],
						["1Rnd_SmokePurple_Grenade_shell",nil,6000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6500],
						["UGL_FlareWhite_F",nil,1000],
						["Rangefinder",nil,150],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,150],
						//["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemRadio","Handy",500]					
					]
				];
			};
		};
	};
	
	case "schwarzm_wep":
    {
        switch(true) do
        {
           case (playerSide != civilian): {"Du bist leider kein Zivilist!"};
			case (!license_civ_schwarzm): {"Lass dir erst etwas über den Schwarzmarkt beibringen. Komm mit einer Lizenz wieder."};
			default
            {
                ["Schwarzemarkt Waffen", // arifle_MXM_Black_F 
                    [    
                        ["arifle_MXM_Black_F","Sturmgewehr S:MXM",400000],
                        ["30Rnd_65x39_caseless_mag","6.5mm Kugelmagazin",3500],
                        ["srifle_GM6_F","HochPrz.Gewehr",2500000],
                        ["5Rnd_127x108_Mag","Durchlademagazin",25000],
                        ["launch_RPG32_F","HE Raketenwerfer",2000000],
                        ["RPG32_F","HE Rakete",75000],
                        ["SatchelCharge_Remote_Mag","Sprengstoff",1500000], 
                        ["APERSTripMine_Wire_Mag","Stolperdrahtfalle",3500000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,20000],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,20000],
						["optic_LRPS",nil,30000],
						["optic_NVS",nil,50000],
                        ["muzzle_snds_H","Schalldaempfer 6.5",200000],
				["muzzle_snds_L","Schalldaempfer 9.0",200000],
				["muzzle_snds_M","Schalldaempfer 5.56",200000],  
				["muzzle_snds_B","Schalldaempfer 7.62",200000],
				["muzzle_snds_B","Schalldaempfer 7.62",200000],
				["acc_pointer_IR","Laserpointer ",100000],
                        ["ToolKit",nil,50],
                        ["FirstAidKit",nil,50],
                        ["NVGoggles",nil,1000],
                        ["hgun_ACPC2_snds_F","Schalldaempfer H&K",10000],
                        ["9Rnd_45ACP_Mag","Pistolen-Magazin",100],
                        ["Rangefinder",nil,1000]
                    ]
                ];
            };
        };
    };
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist leider kein Zivilist!"};
			case (!license_civ_gun): {"Lern erstmal den Umgang mit Waffen. Komm mit einem Waffenschein wieder."};
			default
			{
				["Billy Joe's Firearms",
					[
						["arifle_sdar_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,20000],
						["optic_LRPS",nil,30000],
						["optic_NVS",nil,50000],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist leider kein Zivilist!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,20000],
						["optic_LRPS",nil,30000],
						["optic_NVS",nil,50000],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["ItemRadio","Handy",500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[	
				["Rangefinder",nil,150],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit","KFZ-Koffer",3000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300],
				["ItemRadio","Handy",500]
			]
		];
	};
	
	case "MediaLaden":
	{
		["Media Laden",
			[	
				["Rangefinder","Lasermessger�t",150],
				["Binocular",nil,150],
				["ItemGPS","GPS Touch",100],
				["ItemRadio","Handy",500]
			]
		];
	};
	
};








