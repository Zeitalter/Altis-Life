//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////
/*
	@Author: =IFD= Cryptonat
	@Created: 2/22/14
	
	Description:
	Saves the player's gear every 10 minutes.
*/

while {true} do {    //Tells the function to continually loop.
	sleep 600;   //Sleep for 600 seconds/10 minutes
	if (alive player) then   //If the player is alive, then do this
        {
		[false] call life_fnc_sessionUpdate;  //Same function used by the "Sync" button
		hint "Speichere..."   //Just to tell you that the game is saving
	};
}; 


