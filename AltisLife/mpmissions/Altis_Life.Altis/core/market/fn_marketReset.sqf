/*

	Resets market by calling marketConfiguration

*/

[] call life_fnc_marketconfiguration;

//[[0,format["ADMIN: %1 a réglé les prix du marché par défaut.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

hint "Market prices reset.";