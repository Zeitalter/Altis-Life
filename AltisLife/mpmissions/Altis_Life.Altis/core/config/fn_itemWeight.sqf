/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it. //verarbeitet auf 3 // unverarbeitet auf 4
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {4};
	case "oilp": {3};
	case "heroinu": {4};
	case "heroinp": {3};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {4};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {4};
	case "salt_r": {3};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {3};
	case "cocaine": {4};
	case "cocainep": {3};
	case "spikeStrip": {15};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "mauer": {10};
	case "pressluft": {10};
	case "gpstracker": {2};
	case "methu": {4};
    	case "methp": {3};
    	case "bitcoinu": {4};
    	case "bitcoinp": {3};
    	case "bottledwhiskey": {5};
	case "bottledbeer": {5};
	case "tentciv": {15};
	case "profiwerkzeug": {1}; //profiwerkzeug
	default {1};
};
