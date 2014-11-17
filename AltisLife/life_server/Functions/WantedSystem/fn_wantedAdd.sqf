/*
File: fn_wantedAdd.sqf
Author: Bryan "Tonic" Boardwine
Description:
Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.
//What is the crime?
switch(_type) do
{
    case "187V": {_type = ["Ãœberfahren mit Todesfolge",6500]};
    case "187": {_type = ["Mord",60000]};
    case "901": {_type = ["GefÃ¤ngnisflucht",4500]};
    case "261": {_type = ["Raub",5000]};
    case "261A": {_type = ["Versuchter Raub",3000]};
    case "215": {_type = ["Versuchter Autodiebstahl",2000]};
    case "213": {_type = ["Verwenden illegaler Sprengstoff",10000]};
    case "211": {_type = ["Raub/Diebstahl",1000]};
    case "207": {_type = ["EntfÃ¼hrung",3500]};
    case "207A": {_type = ["Versuchte EntfÃ¼hrung",2000]};
    case "487": {_type = ["Autodiebstahl",1500]};
    case "488": {_type = ["Diebstahl",700]};
    case "480": {_type = ["Fahrerflucht",1300]};
    case "481": {_type = ["Drogenbesitz",1000]};
    case "482": {_type = ["Versuchter Drogenhandel",5000]};
    case "483": {_type = ["Drogenhandel",9500]};
    case "459": {_type = ["Burglary",6500]};
    case "503": {_type = ["Handel mit exotischen GÃ¼tern",25000]};
    
    case "1": {_type = ["Angriff/Belagerung von Hauptstädten $150000",150000]};
    case "2": {_type = ["Angriff durch Rebellen $75000",75000]};
    case "3": {_type = ["Ausbruch aus dem Gefaengnis $150000",150000]};
    case "4": {_type = ["Aufstand $100000",100000]};
    case "5": {_type = ["Bankraub $200000",200000]};
    case "6": {_type = ["Beamtenbeleidigung $40000",40000]};
    case "7": {_type = ["Belästigung eines Polizisten $50000",50000]};
    case "8": {_type = ["Beschuss auf Polizei/Beamte/Eigentum $50000",50000]};
    case "9": {_type = ["Besitz einer verbotenen Waffe $10000",10000]};
    case "10": {_type = ["Betreten der pol.Sperrzone $50000",50000]};
    case "11": {_type = ["Dauerhaft störendes Hupen $5000",5000]};
    case "12": {_type = ["Diebstahl/Führen e.fremden Zivilfahrzeugs $10000",10000]};
    case "13": {_type = ["Diebstahl von Polizeifahrzeugen $50000",50000]};
    case "14": {_type = ["Drogendelikte $50000",50000]};
    case "15": {_type = ["Erregung öffentlichen Ärgernisses $100000",100000]};
    case "16": {_type = ["Fahren ohne Führerschein $3000",3000]};
    case "17": {_type = ["Fahren ohne Licht $1000",1000]};
    case "18": {_type = ["Fahren von illegalen Fahrzeugen $10000",10000]};
    case "19": {_type = ["Fliegen ohne Fluglizenz $12000",12000]};
    case "20": {_type = ["Fliegen/Schweben unterhalb 150m über Stadtgebiet $2000",2000]};
    case "21": {_type = ["Gefährliche Fahrweise $25000",25000]};
    case "22": {_type = ["Geiselnahme $200000",200000]};
    case "23": {_type = ["Handel mit exotischen Gütern $25000",25000]};
    case "24": {_type = ["Illegale Strassensperren $25000",25000]};
    case "25": {_type = ["Landen in einer Flugverbotszone $5000",5000]};
    case "26": {_type = ["Mit gez.Waffe durch Stadt $5000",5000]};
    case "27": {_type = ["Mord $100000",100000]};
    case "28": {_type = ["Nicht befolgen e.pol.Anordnung $10000",10000]};
    case "29": {_type = ["Schusswaffengebrauch innerhalb Städte $10000",10000]};
    case "30": {_type = ["Töten eines Polizisten $100000",100000]};
    case "31": {_type = ["Unfallverursacher/Fahrerflucht nach Unfall $50000",50000]};
    case "32": {_type = ["Überfahren eines anderen Spielers $15000",15000]};
    case "33": {_type = ["Überfall auf Personen/Fahrzeuge $10000",10000]};
    case "34": {_type = ["Überhöhte Geschwindigkeit $7500",7500]};
    case "35": {_type = ["Versuchter Diebstahl e.Zivilfahrzeugs $3500",3500]};
    case "36": {_type = ["Vers.Landung in einer Flugverbotszone $1500",1500]};
    case "37": {_type = ["Waffenbesitz ohne Lizenz $10000",10000]};
    case "38": {_type = ["Widerstand gegen die Staatsgewalt $50000",50000]};
    case "39": {_type = ["Zerstörung von Polizeieigentum $50000",50000]};
    case "40": {_type = ["Handel mit exotischen GÃ¼tern",25000]};
    default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;
if(_index != -1) then
{
_data = life_wanted_list select _index;
_crimes = _data select 2;
_crimes pushBack (_type select 0);
_val = _data select 3;
life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
else
{
life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};