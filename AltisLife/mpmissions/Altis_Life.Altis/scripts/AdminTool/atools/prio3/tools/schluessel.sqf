/*
	Script By spll3r
*/
cutText ["Suche Schluessel.", "PLAIN"];
_timeForRepair = 5;

hint format ["Bitte warte %1 Sekeunde",_timeForRepair];
sleep _timeForRepair;
_life_vehicles set[count life_vehicles,cursorTarget];
hint format ["Schluessel hinzugefügt",_timeForRepair];
