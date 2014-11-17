//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["Willkommen auf dem Server", _rscLayer];
[] spawn {
    sleep 5;
    _counter = 360;
    _timeSinceLastUpdate = 0;
    while {true} do
    {
        sleep 5;
        _counter = _counter - 1;
                ((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Polizei: %2 | Zivilisten: %3 | Sanitäter: %4 | Position: %5 | Version 0.0.1", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, mapGridPosition player, _counter];
    }; 
};