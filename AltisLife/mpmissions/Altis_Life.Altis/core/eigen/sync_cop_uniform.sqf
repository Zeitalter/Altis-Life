/////////////////////////////////////////////
//////////Ersteller: spll3r//////////////////
////////////////////////////////////////////
#include <macro.h>
if (isServer) exitwith {};    // Nur auf Clienten
if (playerSide != west) exitwith {}; //Nur bei Cops
switch (__GETC__(life_coplevel)) do {

    case 1:
    {
        if(uniform player == "U_Rangemaster") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop2.paa"];
        };
    };
        
    case 2:
    {
        if(uniform player == "U_B_CombatUniform_mcam_tshirt") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop3.paa"];
        };
    };
    case 3:
    {
        if(uniform player == "U_B_CombatUniform_mcam_worn") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop4.paa"];
        };
    };
    case 4:
    {
        if(uniform player == "U_B_CTRG_1") then {
            player setObjectTextureGlobal [0,"textures\uniform\cop\cop5.paa"];
        };
    };
  };




