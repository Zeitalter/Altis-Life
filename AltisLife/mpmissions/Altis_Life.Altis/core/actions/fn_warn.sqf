/*
File : fn_warn.sqf
Create : Heisenberg
*/

private["_targets"];

_targets = player nearEntities ["Man",50];

[[player],"life_fnc_warned",_targets,false] spawn life_fnc_MP;
