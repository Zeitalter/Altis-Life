// script by spll3r, thx for if part to gg
//
//////////////////////////////////////////////////////////////

if(vehicle player != player && vehicle player == "C_Hatchback_01_sport_F" && isTouchingGround vehicle player && driver vehicle player == player)
then {
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = 90;
_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
};

