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
							["B_FieldPack_ocamo",nil,3000]
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
                        ["Rangefinder",nil,1000]
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
				["Ausrüstungs Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000], // arifle_MXC_F 
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MXC_F","MXC (Meister-Anwaerter)",25000],
						["30Rnd_65x39_caseless_mag",nil,200],
						["hgun_P07_F",nil,7500],
						["16Rnd_9x21_Mag",nil,50],
						["muzzle_snds_L",nil,650],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,2500],
						["acc_pointer_IR",nil,2500],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,2000],
						["B_UavTerminal",nil,2000]
					]
				];
			};
		};
	};

	case "cop_streife":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Wachtmeister Ausrüstungs Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000], // arifle_MXC_F 
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MXC_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,200], // SMG_02_F  arifle_MX_GL_Black_F 
						["arifle_MX_GL_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150], //3Rnd_Smoke_Grenade_shell	
						["3Rnd_Smoke_Grenade_shell","Rauch",180], 
						["SMG_02_F",nil,15000],
						["30Rnd_9x21_Mag",nil,25],
						["hgun_P07_F",nil,7500],
						["16Rnd_9x21_Mag",nil,50],
						["muzzle_snds_L",nil,650],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,2500],
						["acc_pointer_IR",nil,2500],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,2000]
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
			case (__GETC__(life_coplevel) < 4): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Kommissar Ausrüstungs Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_P07_F",nil,7500],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MXC_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["SMG_02_ACO_F",nil,30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MX_SW_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag",nil,1500],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,2500],
						["acc_pointer_IR",nil,2500],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000],
						["1Rnd_Smoke_Grenade_shell",nil,5000],
						["1Rnd_SmokePurple_Grenade_shell",nil,6000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6500],
						["UGL_FlareWhite_F",nil,1000],
						["muzzle_snds_B",nil,4750],
						["muzzle_snds_M",nil,1750],
						["muzzle_snds_H_MG",nil,3750],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_L",nil,650],
						["HandGrenade_Stone","M 7290 Blendgranate",1700],
						["SmokeShellGreen","FOX CS-Gas",1700], //SmokeShellGreen					
						["Rangefinder",nil,150],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,2000]
					]
				];
			};
		};
	};

	case "cop_hkommissar":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["Hauptkommissar Ausrüstungs Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_P07_F",nil,7500],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MXC_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["SMG_02_ACO_F",nil,30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MX_SW_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag",nil,1500],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,250], // srifle_EBR_F 
						["srifle_EBR_F",nil,25000],
						["20Rnd_762x51_Mag",nil,250],
						["LMG_Mk200_F",nil,25000],
						["200Rnd_65x39_cased_Box",nil,250],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,2500],
						["acc_pointer_IR",nil,2500],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000],
						["1Rnd_Smoke_Grenade_shell",nil,5000],
						["1Rnd_SmokePurple_Grenade_shell",nil,6000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6500],
						["UGL_FlareWhite_F",nil,1000],
						["muzzle_snds_B",nil,4750],
						["muzzle_snds_M",nil,1750],
						["muzzle_snds_H_MG",nil,3750],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_L",nil,650],
						["HandGrenade_Stone","M 7290 Blendgranate",1700],
						["SmokeShellGreen","FOX CS-Gas",1700], //SmokeShellGreen					
						["Rangefinder",nil,150],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_chef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist leider kein Polizist!"};
			case (__GETC__(life_coplevel) < 6): {"Du besitzt leider nicht den erforderlichen Rang!"};
			default
			{
				["PolizeiChef Ausrüstungs Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_P07_F",nil,7500],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_Katiba_F",nil,60000],
						["arifle_Katiba_GL_F",nil,90000],
						["30Rnd_65x39_caseless_green",nil,275],
						["arifle_MXC_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["SMG_02_ACO_F",nil,30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MX_SW_Black_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag",nil,1500],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["arifle_MX_GL_Holo_pointer_snds_F","MX + Rauchwerfer",50250], 
						["3Rnd_SmokeGreen_Grenade_shell","Rauchwand",1250],
						["30Rnd_65x39_caseless_mag",nil,250],
						["LMG_Zafir_F",nil,70000],
						["150Rnd_762x51_Box",nil,700],
						["launch_RPG32_F",nil,100000],
						["RPG32_F",nil,1000],
						["RPG32_HE_F",nil,2000],
						["srifle_GM6_F",nil,100000],
						["5Rnd_127x108_Mag",nil,1000],
						["5Rnd_127x108_APDS_Mag",nil,2000],
						["acc_flashlight",nil,750], 
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,2500],
						["acc_pointer_IR",nil,2500], 
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000], //optic_MRCO
						["optic_Nightstalker",nil,9000],
						["1Rnd_Smoke_Grenade_shell",nil,5000],
						["1Rnd_SmokePurple_Grenade_shell",nil,6000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,6500],
						["UGL_FlareWhite_F",nil,1000],
						["muzzle_snds_B",nil,4750],
						["muzzle_snds_M",nil,1750],
						["muzzle_snds_H_MG",nil,3750],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_L",nil,650],
						["HandGrenade_Stone","M 7290 Blendgranate",1700],
						["SmokeShellGreen","FOX CS-Gas",1700], //SmokeShellGreen
						["Rangefinder",nil,150],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]
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
						["srifle_GM6_camo_F",nil,4000000],
						["5Rnd_127x108_Mag",nil,5000],
						["5Rnd_127x108_APDS_Mag","Panzerbrechend",150000],
						["launch_RPG32_F",nil,4000000],
						["RPG32_F",nil,10000],
						["RPG32_HE_F",nil,15000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,20000],
						["optic_Hamr",nil,5000],
						["optic_SOS",nil,20000],
						["optic_LRPS",nil,30000],
						["optic_NVS",nil,50000],
						["optic_tws_mg","Thermalvisier",75000], //  optic_tws_mg 
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
						["NVGoggles",nil,2000]					
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
						["30Rnd_9x21_Mag",nil,75]
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
				["Chemlight_blue",nil,300]
			]
		];
	};
};
