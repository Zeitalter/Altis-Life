tlq_killTicker = { 

	_this addMPEventHandler ['MPKilled',{

		_unit = _this select 0;
		_killer = _this select 1;

		_newKill = [_unit,_killer];

		if (count tlq_killArray > 100) then {tlq_killArray = []};

		[] spawn tlq_killList;
		if (player == _killer) then {_newKill spawn tlq_killPopUp};


	}
	];
	
};


tlq_killPopUp = {

	_victim = _this select 0;
	_killer = _this select 1;


	_victimName = "";	
	_victimString = "";
	_victimColor = "#99D5FF";


	if (!(isplayer _victim)) then {
		_victimName = getText (configFile >> "CfgVehicles" >> format["%1",typeOf _victim] >> "Displayname");
	if(vehicle _victim != _victim) then {_victimName = getText (configFile >> "CfgVehicles" >> format["%1 crew",typeof vehicle _victim] >> "Displayname")};
		}else{_victimName = name _victim};

	_victimColor = (side group _victim call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;

	_victimString = format["<t color='%1'>%2</t>",_victimColor,_victimName];

	_line = if ((_killer == player) and (_victim == player)) then {
		"<t size='0.5'>Selbstmord</t>";
	} else {
		format ["<t size='0.5'>Du hast %1 umgebracht</t>",_victimString];
	};	

 	[_line,0,0.8,2,0,0,7017] spawn bis_fnc_dynamicText;

};



tlq_killList = {
	

	//flush kills and  show most recent
	if (time - tlq_killTime > 37) then {
		tlq_displayedKills = [];
	};


	tlq_displayedKills set [count tlq_displayedKills, tlq_killArray select (count tlq_killArray - 1)];



	_tickerText = "";


	_c = 0;
	for "_i" from (count tlq_displayedKills) to 0 step -1 do{

		_c = _c + 1;
	
		_tickerText = format ["%1<br />%2",tlq_displayedKills select _i,_tickerText];

		if (_c > 8) exitWith{};

	};

	hintsilent parsetext _tickerText;

	//["<t size='0.4' align='right'>" + _tickerText + "</t>",safeZoneX,safeZoneY,10,0,0,7016] call bis_fnc_dynamicText;


	tlq_killTime = time;

};



//declare global variables

tlq_killArray = [];
tlq_displayedKills = [];
tlq_killTime = 0;

//start kill registration for player
if (!isNull player) then {
	player spawn tlq_killTicker;
};

if (isServer) then {
	//ai
	{
		if (!(isPlayer _x)) then {
			_x spawn tlq_killTicker};
	} forEach allUnits;
};