/*
File : fn_warn.sqf
Create : Heisenberg
*/

private["_targets"];

_targets = player nearEntities ["Man",50];

If (PrimaryWeapon Player != "") Then { 
  [[player],"life_fnc_warned",_targets,false,false] spawn life_fnc_MP;
} else {hint "Du hast keine Primärwaffe ausgerüstet!"};
