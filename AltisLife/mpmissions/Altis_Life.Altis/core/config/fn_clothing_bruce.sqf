/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Blaues Hemd",250],
		["U_C_Poloshirt_burgundy","Poloshirt olive",275],
		["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiss",150],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
		["U_C_Poloshirt_stripped","Poloshirt gestreift",125],
		["U_C_Poloshirt_tricolour","Poloshirt dunkel",350],
		["U_C_Poor_2","dreckige Kleidung",250],
		["U_IG_Guerilla2_2","Gr�n gestreiftes shirt",650],
		["U_IG_Guerilla3_1","Braune Jacke",735],
		["U_IG_Guerilla2_3","Ranger Kleidung",1200],
		["U_C_HunterBody_grn","Pfadfinder",1500],
		["U_C_WorkerCoveralls","Mechaniker Kleidung",2500],
		["U_OrestesBody","Surf Style",1100],
		["U_NikosAgedBody","pink",5000],
		["U_C_PriestBody","Pfarrer",5000],
		["U_C_Journalist","Journalist",5000],
		["U_C_Scientist","Laboranzug",5000]   
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			//["H_BandMask_blk","Hat & Bandanna",300],  
			//["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150],
			["H_Cap_headphones",nil,150],
			["H_Cap_blk_Raven",nil,150],
			["H_Cap_press",nil,150],
			["H_MilCap_gry",nil,150],
			["H_Cap_press",nil,150],
			["H_Watchcap_blk",nil,150]
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
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30]
                  //["G_Balaclava_oli",nil,20], 
                  //["G_Bandanna_aviator",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		[
		      ["V_HarnessOSpec_brn","Schutzweste",1000]  
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