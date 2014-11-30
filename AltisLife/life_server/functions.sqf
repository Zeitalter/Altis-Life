life_fnc_sidechat =
compileFinal "
	if(life_sidechat) then {life_sidechat = false;} else {life_sidechat = true;};
	[[player,life_sidechat,playerSide],""TON_fnc_managesc"",false,false] spawn life_fnc_MP;
	[] call life_fnc_settingsMenu;
";

publicVariable "life_fnc_sidechat";

TON_fnc_index =
compileFinal "
	private[""_item"",""_stack""];
	_item = _this select 0;
	_stack = _this select 1;
	_return = -1;

	{
		if(_item in _x) exitWith {
			_return = _forEachIndex;
		};
	} foreach _stack;

	_return;
";

TON_fnc_player_query =
compileFinal "
	private[""_ret""];
	_ret = _this select 0;
	if(isNull _ret) exitWith {};
	if(isNil ""_ret"") exitWith {};
	
	[[life_atmcash,life_cash,owner player,player],""life_fnc_admininfo"",_ret,false] spawn life_fnc_MP;
";
publicVariable "TON_fnc_player_query";

publicVariable "TON_fnc_index";

TON_fnc_clientWireTransfer =
compileFinal "
	private[""_unit"",""_val"",""_from""];
	_val = _this select 0;
	_from = _this select 1;
	if(!([str(_val)] call TON_fnc_isnumber)) exitWith {};
	if(_from == """") exitWith {};
	life_atmcash = life_atmcash + _val;
	hint format[""%1 hat dir %2$ überwiesen."",_from,[_val] call life_fnc_numberText];
	
";
publicVariable "TON_fnc_clientWireTransfer";

TON_fnc_isnumber =
compileFinal "
	private[""_valid"",""_value"",""_compare""];
	_value = _this select 0;
	_valid = [""0"",""1"",""2"",""3"",""4"",""5"",""6"",""7"",""8"",""9""];
	_array = [_value] call KRON_StrToArray;
	_return = true;
	
	{
		if(_x in _valid) then	
		{}
		else
		{
			_return = false;
		};
	} foreach _array;
	_return;
";

publicVariable "TON_fnc_isnumber";

TON_fnc_clientGangKick =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		life_my_gang = ObjNull;
		[player] joinSilent (createGroup civilian);
		hint ""Du wurdest aus der Gang geworfen!"";
		
	};
";
publicVariable "TON_fnc_clientGangKick";

TON_fnc_clientGetKey =
compileFinal "
	private[""_vehicle"",""_unit"",""_giver""];
	_vehicle = _this select 0;
	_unit = _this select 1;
	_giver = _this select 2;
	if(isNil ""_unit"" OR isNil ""_giver"") exitWith {};
	if(player == _unit && !(_vehicle in life_vehicles)) then
	{
		_name = getText(configFile >> ""CfgVehicles"" >> (typeOf _vehicle) >> ""displayName"");
		hint format[""%1 hat dir die Schlüssel für einen %2 gegeben."",_giver,_name];
		life_vehicles set[count life_vehicles, _vehicle];
	};
";

publicVariable "TON_fnc_clientGetKey";

TON_fnc_clientGangLeader =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		player setRank ""COLONEL"";
		_group selectLeader _unit;
		hint ""Du wurdest zum neuen Anführer gewählt!"";
	};
";

publicVariable "TON_fnc_clientGangLeader";

//Cell Phone Messaging
/*
	-fnc_cell_textmsg
	-fnc_cell_textcop
	-fnc_cell_textadmin
	-fnc_cell_adminmsg
	-fnc_cell_adminmsgall
*/

//To EMS
TON_fnc_cell_emsrequest = 
compileFinal "
private[""_msg"",""_to""];
	ctrlShow[3022,false];
	_msg = ctrlText 3003;
	_to = ""EMS Units"";
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht angeben!"";ctrlShow[3022,true];};
		
	[[_msg,name player,5],""TON_fnc_clientMessage"",independent,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du hast eine Nachricht an alle Sanitäter verschickt."",_to,_msg];
	ctrlShow[3022,true];
";
//To One Person
TON_fnc_cell_textmsg =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3015,false];
	_msg = ctrlText 3003;
	if(lbCurSel 3004 == -1) exitWith {hint ""Du musst einen Spieler auswählen, dem du eine Nachricht schicken willst!""; ctrlShow[3015,true];};
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {ctrlShow[3015,true];};
	if(isNil ""_to"") exitWith {ctrlShow[3015,true];};
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht angeben!"";ctrlShow[3015,true];};
	
	[[_msg,name player,0],""TON_fnc_clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du hast %1 eine Nachricht geschickt: %2"",name _to,_msg];
	ctrlShow[3015,true];
";
//To All Cops
TON_fnc_cell_textcop =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3016,false];
	_msg = ctrlText 3003;
	_to = ""The Police"";
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht angeben!"";ctrlShow[3016,true];};
		
	[[_msg,name player,1],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du hast %1 eine Nachricht geschickt: %2"",_to,_msg];
	ctrlShow[3016,true];
";
//To All Admins
TON_fnc_cell_textadmin =
compileFinal "
	private[""_msg"",""_to"",""_from""];
	ctrlShow[3017,false];
	_msg = ctrlText 3003;
	_to = ""The Admins"";
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht angeben!"";ctrlShow[3017,true];};
		
	[[_msg,name player,2],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du hast %1 eine Nachricht geschickt: %2"",_to,_msg];
	ctrlShow[3017,true];
";
//Admin To One Person
TON_fnc_cell_adminmsg =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""You are not an admin!"";};
	private[""_msg"",""_to""];
	_msg = ctrlText 3003;
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {};
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht angeben!"";};
	
	[[_msg,name player,3],""TON_fnc_clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Nachricht gesendet an: %1 - Nachricht: %2"",name _to,_msg];
";

TON_fnc_cell_adminmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""Du bist kein Admin!"";};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht angeben!"";};
	
	[[_msg,name player,4],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Nachricht an alle gesendet: %1"",_msg];
";

TON_fnc_cell_copmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_coplevel) < 1) exitWith {hint ""Du bist kein Polizist!"";};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht angeben!"";};
	
	[[_msg,name player,6],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Polizei Nachricht an alle gesendet: %1"",_msg];
";

publicVariable "TON_fnc_cell_textmsg";
publicVariable "TON_fnc_cell_textcop";
publicVariable "TON_fnc_cell_textadmin";
publicVariable "TON_fnc_cell_adminmsg";
publicVariable "TON_fnc_cell_adminmsgall";
publicVariable "TON_fnc_cell_emsrequest";
publicVariable "TON_fnc_cell_copmsgall";
//Client Message
/*
	0 = private message
	1 = police message
	2 = message to admin
	3 = message from admin
	4 = admin message to all
*/
TON_fnc_clientMessage =
compileFinal "
	if(isServer) exitWith {};
	private[""_msg"",""_from"", ""_type""];
	_msg = _this select 0;
	_from = _this select 1;
	_type = _this select 2;
	if(_from == """") exitWith {};
	switch (_type) do
	{
		case 0 :
		{
			private[""_message""];
			_message = format[""SMS VON %1: %2"",_from,_msg];
			hint parseText format [""<img shadow='false' image='bilder\telefon\connmessage_co.paa' size='6.5'/><br/><br/><t align='left'><t color='#00adef'>An: </t><t color='#ffffff'>Dich</t><br/><t color='#00adef'>Von: </t><t color='#ffffff'>%1</t><br/><br/><t color='#00adef'>Nachricht:</t><br/><t color='#ffffff'>%2</t><t/>"",_from,_msg];
			
			[""TextMessage"",[format[""Du hast eine SMS erhalten von %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 1 :
		{
			if(side player != west) exitWith {};
			private[""_message""];
			_message = format[""EINGEHENDER AUFTRAG VON %1: %2"",_from,_msg];
			hint parseText format [""<t align='center'><t color='#0099FF'><t size='1.7'>Eingehender Auftrag</t></t><br/><img size='4' color='#FFFFFF' shadow='false' image='textures\marke.paa'/><br/><t color='#316dff'><t color='#FFFFFF'>Auftragsnr. 15ds1</t></t><br/><br/><br/><t align='left'><t color='#00adef'>An: </t><t color='#ffffff'>Alle Einheiten</t><br/><t color='#00adef'>Von: </t><t color='#ffffff'>%1</t><br/><br/><t color='#00adef'>Nachricht:</t><br/><t color='#ffffff'>%2</t>"",_from,_msg,round(random 99999)];
			
			[""PoliceDispatch"",[format[""Eingehender Auftrag von %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 2 :
		{
			if((call life_adminlevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""ADMIN ANFRAGE VON %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>Admin Anfrage<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Admins<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""AdminDispatch"",[format[""%1 hat einen Admin angefordert!"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 3 :
		{
			private[""_message""];
			_message = format[""ADMIN NACHRICHT: %1"",_msg];
			_admin = format[""Gesendet von einem Admin: %1"", _from];
			hint parseText format [""<img shadow='false' image='bilder\telefon\zeitalter_co.paa' color='#FF0000'  size='3.4'/><br/><t color='#FF0000'><t align='center'><t size='1.7'>ADMIN NACHRICHT</t></t></t><br/><br/><t align='left'><t color='#00adef'>An: </t><t color='#ffffff'>Dich</t><br/><t color='#00adef'>Von: <t color='#ffffff'>Zeitalter Admin-Team<br/><br/><t color='#00adef'>Nachricht:</t><br/><t color='#ffffff'>%1<t/>"",_msg];  
			
			[""AdminMessage"",[""Du hast eine Admin Nachricht erhalten!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 4 :
		{
			private[""_message"",""_admin""];
			_message = format[""ADMIN NACHRICHT: %1"",_msg];
			_admin = format[""Gesendet von einem Admin: %1"", _from];
			hint parseText format [""<img shadow='false' image='bilder\telefon\zeitalter_co.paa' color='#FF0000'  size='3.4'/><br/><t color='#FF0000'><t align='center'><t size='1.7'>ADMIN NACHRICHT</t></t></t><br/><br/><t align='left'><t color='#00adef'>An: </t><t color='#ffffff'>Alle Spieler</t><br/><t color='#00adef'>Von: <t color='#ffffff'>Zeitalter Admin-Team<br/><br/><t color='#00adef'>Nachricht:</t><br/><t color='#ffffff'>%1<t/>"",_msg];  
			
			[""AdminMessage"",[""Du hast eine Admin Nachricht erhalten!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 5: {
			private[""_message""];
			_message = format[""NOTFALL: %1"",_msg];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Notfall<br/><br/><t color='#00adef'><t align='left'><t size='1'>An: <t color='#ffffff'>Dich<br/><t color='#00adef'>Von: <t color='#ffffff'>%1<br/><br/><t color='#00adef'>Nachricht:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""EMS Request from %1"",_from]]] call bis_fnc_showNotification;
		};
		
		case 6 :
		{
			private[""_message"",""_admin""];
			_message = format[""ADMIN NACHRICHT: %1"",_msg];
			_admin = format[""Gesendet von der Polizei: %1"", _from];
			hint parseText format [""<t size='2'><t align='center'><t shadow='false'><img size='10 color='#FFFFFF' image='textures\marke.paa'/></t><t color='#0099FF'><br/><br/>INFOKANAL<br/><t size='1.1'>Polizeibehörde Altis</t><br/><br/><t color='#00adef'><t align='left'><t size='1'>An: <t color='#ffffff'>Alle Spieler<br/><t color='#00adef'>Von: <t color='#ffffff'>Polizeibehörde Altis<br/><t color='#00adef'><br/>Nachricht:<br/><t color='#ffffff'>%1"",_msg];
			
			[""CopMessageAll"",[""Neue Meldung!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_coplevel) > 0) then {systemChat _admin;};
		};
	};
";
publicVariable "TON_fnc_clientMessage";
