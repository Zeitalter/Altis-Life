
hint "Werkzeug wird vorbereitet ...";
sleep 2;
if(player canAdd "ToolKit") then
{
//Add item
["ToolKit",true,false,true,false] call life_fnc_handleItem;
//Hotfix in for cop gear
if(playerSide == civilian) then
{
[] call life_fnc_saveGear;
};
hint "Das entsprechende Werkzeug wurde in deinem Rucksack abgelegt";
}
else
{
[true,"profiwerkzeug",1] call life_fnc_handleInv;
hint "Kein Werkzeug gefunden.";
sleep 3;
hint "Versuch es erneut.";
};