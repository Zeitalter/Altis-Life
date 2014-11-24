//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: spll3r
//////////////////////////////////////////////////////////////////
If (PrimaryWeapon Player != "") Then { 
  _n = player nearEntities ["Man",50]; 
  [{cutText [Format ["Stehen bleiben %1 oder das Feuer wird eröffnet!", profileName],"PLAIN",2];},"BIS_fnc_spawn",_n] call BIS_fnc_MP;  
};
