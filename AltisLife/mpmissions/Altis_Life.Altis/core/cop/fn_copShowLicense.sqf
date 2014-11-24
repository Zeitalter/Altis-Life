/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/509-Turorial-Polizeimarke-zeigen/

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message","_coplevel","_rang","_nr"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Du bist kein Cop!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

_nr = round(random 999999);

switch ( _coplevel ) do
{
	case 1: { _rang = "Rang 1 - Recruit"; };
	case 2: { _rang = "Rang 2 - Officer"; };
	case 3: { _rang = "Rang 3 - Detective"; };
	case 4: { _rang = "Rang 4 - Lieutenant"; };
	case 5: { _rang = "Rang 5 - Major"; };
	case 6: { _rang = "Rang 6 - Chief"; };
	default {_rank =  "Error";};
};

_message = format["<t size='1.6'>ALTIS POLIZEI<br/>DIENSTAUSWEIS</t><br/><br/><t shadow='false'><img size='10 color='#FFFFFF' image='textures\marke.paa'/></t><br/><br/><t size='1.6'><t color='#0099FF'>%1</t></t><br/><br/><t size='1.2'>%2</t><br/><t size='1'>Dienstnr. PP%3</t>", name player, _rang, _nr];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
