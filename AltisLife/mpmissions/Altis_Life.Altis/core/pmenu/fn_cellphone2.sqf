//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////

/*
File: fn_cellphone2.sqf
Author: Timo
 
Description:
With no radio cant use Cellphone
*/
 
 
if("ItemRadio" in assignedItems player) then {
createDialog "Life_cell_phone"; 
}else{
hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Sie haben kein Handy!</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Du kannst ein Handy an jeden Media Laden kaufen!</t><br/>"];
};