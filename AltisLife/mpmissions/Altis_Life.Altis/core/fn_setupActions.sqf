/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	      	//Kidnapping
		life_actions = [player addAction["<t color='#00FF00'>Fesseln</t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];
	};
      case west:
      {
	/////Polizeimarke zeigen
	life_actions = life_actions + [player addAction["<t color='#00FF00'>Polizeimarke zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
	/////absperrungsdings
	life_actions = life_actions + [player addAction["<t color='#FF0000'>Absperrung aufheben</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["Land_Concrete_SmallWall_4m_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
	////des ding a wida afhem
	life_actions = life_actions + [player addAction["<t color='#FF0000'>Absperrung aufheben</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
	/////leid vom himme hoin mid emp
	// nano EMP Little Bird
	life_actions = life_actions + [player addAction["<t color='#FF0000'>EMP Operator Konsole öffnen</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
	};      
};
