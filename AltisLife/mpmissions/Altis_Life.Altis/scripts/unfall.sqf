while {true} do
{
	if(vehicle player == "C_Hatchback_01_sport_F") then
	{
		if(speed vehicle player > 150) then
		{
			oldVehVelocity = velocity (vehicle player);
			sleep 0.5;
			if(speed vehicle player < 2) then
			{
				moveOut player;
				player setVelocity [(oldVehVelocity select 0) * 2,(oldVehVelocity select 1) * 2,((oldVehVelocity select 2) * 2) + 5];
			};
		};
	};
	sleep 0.2;
};