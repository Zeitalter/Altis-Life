/////////////////////////////////////////////
//////////Ersteller: spll3r//////////////////
//////////Edit by Heisenberg////////////////
////////////////////////////////////////////
#include <macro.h>
if (isServer) exitwith {};    // Nur auf Clienten
if (playerSide != west) exitwith {}; //Nur bei Cops
switch true do {

	//SEK Uniformen
    case ((__GETC__(life_coplevel)) > 9):
    {
        if(uniform player == "U_B_CombatUniform_mcam_worn") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop4.paa"];
        };
    };
    default
	{
		if(uniform player == "U_BG_Guerilla2_1") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop6_co.paa"];
        };
		if(uniform player == "U_B_CTRG_1") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop5.paa"];
        };
		if(uniform player == "U_B_CombatUniform_mcam_vest") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop5.paa"];
        };
		if(uniform player == "U_B_CombatUniform_mcam_tshirt") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop5.paa"];
        };
	};
  };




