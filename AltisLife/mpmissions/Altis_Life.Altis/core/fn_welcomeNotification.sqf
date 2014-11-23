/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Edit by Heisenberg
	Called upon first spawn selection and welcomes our player.
*/
switch (playerSide) do
{
	case west:
	{
		hint parseText format["<t size='1.2'>Willkommen <t color='#0099FF'>%1</t><br/>Bitte lies folgendes, da es sehr wichtig ist!<t><br/><br/><t><t color='#FFFFFF'>Belege dir unbedingt<t><br/><t><t color='#FF0000'>'Aktionstaste 10'</t><br/> in deiner Individuellen Steuerung. Dies wird deine Interaktionstaste für Fahrzeuge und Objekte in der Welt.<br/><br/> Auf dein Spielermenü kannst du mit <t color='#FF0000'>'Z'</t> zugreifen. Alle weiteren Tastenbelegungen findest du im dort unter dem Punkt <t color='#FF0000'>'Belegung'</t> <br/><br/> Alle Regeln und Bußgelder findest du auf der Karte in den entsprechenden Kategorien.",profileName]
	};
	
	case civilian:
	{
		hint parseText format["<t size='1.2'>Willkommen <t color='#990099'>%1</t><br/>Bitte lies folgendes, da es sehr wichtig ist!<t><br/><br/><t><t color='#FFFFFF'>Belege dir unbedingt<t><br/><t><t color='#FF0000'>'Aktionstaste 10'</t><br/> in deiner Individuellen Steuerung. Dies wird deine Interaktionstaste für Fahrzeuge und Objekte in der Welt.<br/><br/> Auf dein Spielermenü kannst du mit <t color='#FF0000'>'Z'</t> zugreifen. Alle weiteren Tastenbelegungen findest du im dort unter dem Punkt <t color='#FF0000'>'Belegung'</t> <br/><br/> Alle Regeln und Bußgelder findest du auf der Karte in den entsprechenden Kategorien.",profileName]
	};
	
	case independent:
	{
		hint parseText format["<t size='1.2'>Willkommen <t color='#009900'>%1</t><br/>Bitte lies folgendes, da es sehr wichtig ist!<t><br/><br/><t><t color='#FFFFFF'>Belege dir unbedingt<t><br/><t><t color='#FF0000'>'Aktionstaste 10'</t><br/> in deiner Individuellen Steuerung. Dies wird deine Interaktionstaste für Fahrzeuge und Objekte in der Welt.<br/><br/> Auf dein Spielermenü kannst du mit <t color='#FF0000'>'Z'</t> zugreifen. Alle weiteren Tastenbelegungen findest du im dort unter dem Punkt <t color='#FF0000'>'Belegung'</t> <br/><br/> Alle Regeln und Bußgelder findest du auf der Karte in den entsprechenden Kategorien.",profileName]
	};
	
	case east:
	{
		hint parseText format["<t size='1.2'>Willkommen <t color='#FFCC00'>%1</t><br/>Bitte lies folgendes, da es sehr wichtig ist!<t><br/><br/><t><t color='#FFFFFF'>Belege dir unbedingt<t><br/><t><t color='#FF0000'>'Aktionstaste 10'</t><br/> in deiner Individuellen Steuerung. Dies wird deine Interaktionstaste für Fahrzeuge und Objekte in der Welt.<br/><br/> Auf dein Spielermenü kannst du mit <t color='#FF0000'>'Z'</t> zugreifen. Alle weiteren Tastenbelegungen findest du im dort unter dem Punkt <t color='#FF0000'>'Belegung'</t> <br/><br/> Alle Regeln und Bußgelder findest du auf der Karte in den entsprechenden Kategorien.",profileName]
	};
};
