//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: spll3r
//////////////////////////////////////////////////////////////////

_price = 8750;
if(life_cash < _price) exitWith {hint "Du hast nicht genug Geld dabei!";};
if(life_hunger < 85) exitWith {hint "Geh etwas essen bevor du trainierst!";};
if(life_thirst < 85) exitWith {hint "Geh etwas trinken bevor du trainierst!";};
life_cash = life_cash - _price;
life_thirst = life_thirst - 80;
life_hunger = life_hunger - 80;
[] call life_fnc_hudUpdate;
player setFatigue 0;
[] spawn
{
life_redgull_effect = time;
titleText["Trainiere...","PLAIN"];
player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
sleep 14;
titleText["Du hast deine Kondition verbessert und kannst nun eine Stunde lang rennen! Denk daran, etwas zu essen und trinken!","PLAIN"];
player enableFatigue false;
waitUntil {!alive player OR ((time - life_redgull_effect) > (60 * 60))};
player enableFatigue true;
};

//hoff ma moi des haut so hi
