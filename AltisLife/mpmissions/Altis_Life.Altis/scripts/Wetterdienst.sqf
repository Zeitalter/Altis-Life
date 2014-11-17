//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: vo mia
////////////////////////////////////////////////////////////////// 
//wedabericht oida
while {true} do {
_date = date;
//des mid der temp geht irgandwia ned, wea des lest koh ja moi schaun an wos dass ligt ;)
_wind = wind;
_winddir = windDir;
_gusts = gusts;
_perdict2 = fog;
_perdict3 = rain;
_perdict4 = waves;
hintsilent  format ["Wetterbericht \n\n---------\n vorhersage fuer : %1    (Jahr,Monat,Tag,Stunde,Minute)\n\n  Temperatur: N/A \n Wind: %2 \n Wind Richtung: %3\n Wind Gusts: %4 \n Nebel: %5 \n Regen: %6 \n Wellengang: %7\n --------\n nächste Wetternachricht in 22 Minuten.",_date,_wind,_winddir,_gusts,_perdict2,_perdict3,_perdict4];
sleep 1400; //wann a wida kimmt
};