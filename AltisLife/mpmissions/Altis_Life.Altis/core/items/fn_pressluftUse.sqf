//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////

/*
    File: fn_pickaxeUse.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
    case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = 6;};       //den Wert ändern für die Abbauanzahl
    case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = 6;};           //den Wert ändern für die Abbauanzahl
    case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 8;};              //den Wert ändern für die Abbauanzahl
    case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 9;};             //den Wert ändern für die Abbauanzahl
    case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 5;};  //den Wert ändern für die Abbauanzahl
    case (player distance (getMarkerPos "oil_2") < 40) : {_mine = "oilu"; _val = 5;};                 //den Wert ändern für die Abbauanzahl
    case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = 6;};              //den Wert ändern für die Abbauanzahl
    default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint "Du bist nicht in der Nähe einer Schürfstelle!";};
if(!license_civ_ingi) exitWith {hint "Du kannst den Presslufthammer nicht benutzen. Du bist kein Ingenieur, mach zuerst deine Ausbildung!";};
if(life_inv_pickaxe > 0) exitWith {hint "Du darfst nur mit einem Abbaugerät arbeiten!";};
_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "Dein Inventar ist voll."};
delay_pickaxe = true;
life_action_in_Use = true;
for "_i" from 0 to 1 do
{
    player playMove "AinvPknlMstpSnonWnonDnon_medic_1";                                    //Die Bewegung die er beim Arbeiten macht bei mir die Reperaturbewegung
    waitUntil{animationState player != "AinvPknlMstpSnonWnonDnon_medic_1";};      //Die Bewegung die er beim Arbeiten macht bei mir die Reperaturbewegung
    sleep 2.5;
};
if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
    _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
    titleText[format["Du hast %2 %1 abgebaut.",_itemName,_diff],"PLAIN"];
};
sleep 2.5;
delay_pickaxe = false;
life_action_in_Use = false;
