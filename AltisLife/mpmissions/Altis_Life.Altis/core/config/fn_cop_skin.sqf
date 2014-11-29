#include <macro.h>
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (_unit == player) then
{
	if (playerSide == west) then
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 1) : {player setObjectTextureGlobal [0, "textures\uniform\cop\cop6_co.paa"]; };

            case (__GETC__(life_coplevel) == 2) : {player setObjectTextureGlobal [0, "textures\uniform\cop\cop5.paa"]; };

            case (__GETC__(life_coplevel) == 3) : {player setObjectTextureGlobal [0, "textures\uniform\cop\cop5.paa"]; };

            case (__GETC__(life_coplevel) == 4) : {player setObjectTextureGlobal [0, "textures\uniform\cop\cop5.paa"]; };

            case (__GETC__(life_coplevel) == 5) : {player setObjectTextureGlobal [0, "textures\uniform\cop\cop5.paa"]; };

            case (__GETC__(life_coplevel) == 6) : {player setObjectTextureGlobal [0, "textures\uniform\cop\cop4.paa"]; };

            case (__GETC__(life_coplevel) == 7) : {player setObjectTextureGlobal [0, "textures\uniform\cop\cop4.paa"]; };
			
		};
	};
};
