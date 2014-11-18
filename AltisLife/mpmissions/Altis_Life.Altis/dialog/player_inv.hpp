#include "player_sys.sqf"

class playerSettings {

	idd = playersys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {
	
		class RscPicture_1200: Life_RscPicture
		{
			idc = 1200;
			text = "bilder\inventar\zinventar.paa";
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};
		class life_RscTitleBackground: Life_RscText
		{
			idc = -1;

			x = 0.0875;
			y = 0.1;
			w = 0.8125;
			h = 0.04;
			colorBackground[] = {0,0,0,0.2};
		};
		class Title: Life_RscTitle
		{
			idc = -1;

			text = "$STR_PM_Title"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.1;
			w = 0.8;
			h = 0.04;
			colorText[] = {0.95,0.95,0.95,1};
		};
		class moneyStatusInfo: Life_RscStructuredText
		{
			idc = 2015;

			x = 0.475;
			y = 0.64;
			w = 0.2;
			h = 0.12;
			colorBackground[] = {0,0,0,0.5};
		};
		class PlayersName: Title
		{
			idc = carry_weight;
			style = 1;

			x = 0.0875;
			y = 0.1;
			w = 0.8;
			h = 0.04;
			colorText[] = {0.95,0.95,0.95,1};
		};
	};

	class controls {
		
		class itemHeader: Life_RscText
		{
			idc = -1;

			text = "$STR_PM_cItems"; //--- ToDo: Localize;
			x = 0.7;
			y = 0.2;
			w = 0.2;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
		class licenseHeader: Life_RscText
		{
			idc = -1;

			text = "$STR_PM_Licenses"; //--- ToDo: Localize;
			x = 0.275;
			y = 0.2;
			w = 0.175;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
		class moneySHeader: Life_RscText
		{
			idc = -1;

			text = "$STR_PM_MoneyStats"; //--- ToDo: Localize;
			x = 0.475;
			y = 0.6;
			w = 0.2;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
		class itemList: Life_RscListBox
		{
			idc = item_list; //ka was da stand

			x = 0.7;
			y = 0.24;
			w = 0.2;
			h = 0.4;
			colorBackground[] = {0,0,0,0.5};
		};
		class moneyEdit: Life_RscEdit
		{
			idc = 2018;

			text = "1"; //--- ToDo: Localize;
			x = 0.475;
			y = 0.78;
			w = 0.2;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
		
		class NearPlayers : Life_RscCombo  
		{
			idc = 2022;
		
			x = 0.475;
			y = 0.2;
			w = 0.2;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
		
		class moneyDrop: Life_RscButtonMenu
		{
			idc = 2001;
			onButtonClick = "[] call life_fnc_giveMoney; closeDialog 0;";

			text = "$STR_Global_Give"; //--- ToDo: Localize;
			x = 0.475;
			y = 0.84;
			w = 0.2;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class itemEdit: Life_RscEdit
		{
			idc = item_edit; //2010

			text = "1"; //--- ToDo: Localize;
			x = 0.7;
			y = 0.66;
			w = 0.2;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
		class iNearPlayers: Life_RscCombo
		{
			idc = 2023;

			x = 0.475;
			y = 0.54;
			w = 0.2;
			h = 0.04;
			colorBackground[] = {0,0,0,0.5};
		};
		class Licenses_Menu : Life_RscControlsGroup 
		{
			idc = -1;
			x = 0.275;
			y = 0.24;
			w = 0.175;
			h = 0.52;
			colorBackground[] = {0,0,0,0.5};
			
			class Controls
			{
				class Life_Licenses : Life_RscStructuredText
				{
					idc = 2014;
					sizeEx = 0.020;
					text = "";
					x = 0;
					y = 0;
					w = 0.27; h = 0.65;
				};
			};
		};
		class DropButton: Life_RscButtonMenu
		{
			idc = 2002;
			onButtonClick = "[] call life_fnc_giveItem; closeDialog 0;";

			text = "$STR_Global_Give"; //--- ToDo: Localize;
			x = 0.7;
			y = 0.78;
			w = 0.2;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class UseButton: Life_RscButtonMenu
		{
			onButtonClick = "[] call life_fnc_useItem; closeDialog 0;";

			idc = 1015;
			text = "$STR_Global_Use"; //--- ToDo: Localize;
			x = 0.7;
			y = 0.72;
			w = 0.2;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RemoveButton: Life_RscButtonMenu
		{
			onButtonClick = "[] call life_fnc_removeItem; closeDialog 0;";

			idc = 1016;
			text = "$STR_Global_Remove"; //--- ToDo: Localize;
			x = 0.7;
			y = 0.84;
			w = 0.2;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		
		class ButtonWantedAdd : Life_RscButtonMenu 
		{
			idc = 9800;
			//shortcuts[] = {0x00050000 + 2};
			text = "Wanted+"; 
			onButtonClick = "createDialog ""life_wantedadd2"";";
			x = 0.275;
			y = 0.78;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
	
		//class ButtonCamera: Life_RscButtonMenu 
		//{
		//	idc = 5445;
		//	onButtonClick = "closeDialog 0; [] call life_fnc_enableMenuCamera;";
//
//			text = "$STR_PM_Camera"; //--- ToDo: Localize;
//			x = 0.275;
//			y = 0.84;
//			w = 0.175;
//			h = 0.04;
//			colorText[] = {1,1,1,1};
//			colorBackground[] = {0,0,0,0.8};
//		};
		class ButtonClose: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0;";

			idc = -1; //1019
			text = "$STR_Global_Close"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.84;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonSettings: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0; [] call life_fnc_settingsMenu;";

			idc = -1; //1020
			text = "$STR_Global_Settings"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.78;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonMyGang: Life_RscButtonMenu
		{
			idc = 2011;
			onButtonClick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";

			text = "$STR_PM_MyGang"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.66;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonGangList: Life_RscButtonMenu
		{
			idc = 2012;
			onButtonClick = "closeDialog 0; [] call life_fnc_wantedMenu";

			text = "$STR_PM_WantedList"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.66;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonKeys: Life_RscButtonMenu
		{
			idc = 2013;
			onButtonClick = "closeDialog 0; createDialog ""Life_key_management"";";

			text = "$STR_PM_KeyChain"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.6;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonCell: Life_RscButtonMenu
		{
			idc = 2014; //102irgendwas
			onButtonClick = "createDialog ""Life_cell_phone"";";

			text = "$STR_PM_CellPhone"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.72;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonAdminMenu: Life_RscButtonMenu
		{
			idc = 2021;
			onButtonClick = "closeDialog 0; createDialog ""life_admin_menu"";";

			text = "$STR_PM_AdminMenu"; //--- ToDo: Localize;
			x = 0.275;
			y = 0.99;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonSyncData: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0; [] call SOCK_fnc_syncData;";

			idc = 1027;
			text = "Speichern"; //--- ToDo: Localize;
			x = 0.0875;
			y = 0.54;
			w = 0.175;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class ButtonMarket : Life_RscButtonMenu {
            idc = -1;
            text = "Markt";
            onButtonClick = "[] spawn life_fnc_openMarketView;";
           		x = 0.275;
			y = 0.84;
			w = 0.175;
			h = 0.04;
            colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0.8};
        };
		class PlayerTitelNearby: Life_RscText
		{
			idc = -1;

			text = "$STR_PM_Nearby"; //--- ToDo: Localize;
			x = 0.475;
			y = 0.2;
			w = 0.2;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
	};
};
