/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
//....//........anfang,min,max
	["oilp", 2200, 1700, 2950, 3, 1,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		]
	]
	,
//....//.........anfang,min,max	
	["iron_r", 3000, 2500, 3750, 3, 2,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
//....//...........anfang,min,max	
	["diamondc", 2800, 2300, 3550, 3, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
//....//...........anfang,min,max	
	["copper_r", 2000, 1500, 2750, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
//....//........anfang,min,max	
	["salt_r", 3000, 2500, 3750, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1]
		] 
	],
//....//.......anfang,min,max	
	["glass", 2300, 1150, 3450, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1]
		] 
	],
//....//.........anfang,min,max	
	["cement", 1300, 550, 2850, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
/////////////////////////
//....//..........anfang,min,max	
	["turtle", 5000, 4500, 8500, 3, 2,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1]
		] 
	],
//....//.............anfang,min,max
	["marijuana", 2900, 2400, 3650, 3, 2,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1]
		] 
	],
//....//............anfang,min,max	
	["cocainep", 5300, 4800, 6050, 3, 2,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1]
		] 
	],
//....//............anfang,min,max
	["heroinp", 4300, 3800, 5050, 3, 3,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1]
		] 
	],
//....//........anfang,min,max	
	["methp", 4600, 4100, 5350, 3, 3,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1]
		] 
	],
//....//............anfang,min,max	
	["bitcoinp", 4300, 3800, 6050, 3, 3,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "empfange Börseninformationen...";
};