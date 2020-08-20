class d_fpsresource {
	idd=-1;
	movingEnable=0;
	duration = 1e+011;
	fadein = 0;
	fadeout = 0;
	name="d_fpsresource";
	onLoad = "uiNamespace setVariable ['d_fpsresource', _this select 0]";
	onUnLoad = "uiNamespace setVariable ['d_fpsresource', nil]";
	class controls {
		class server_cap: RscText2 {
			idc=-1;
			style="16+512";
			lineSpacing=0.95;
			text="Server FPS:";
			x = "SafeZoneX + 0.001";
			y = "SafeZoneY + SafeZoneH - 0.057";
			w=0.3;h=0.1;
			colorBackground[]={0,0,0,0};
			colorText[]={1,1,1,0.45};
			size=0.026;
			sizeEx = 0.026;
		};
		class client_cap: server_cap {
			text="Client FPS:";
			y = "SafeZoneY + SafeZoneH - 0.03";
		};
		class server_out: server_cap {
			idc = 50;
			text="";
			x = "SafeZoneX + 0.1";
		};
		class client_out: client_cap {
			idc = 51;
			text="";
			x = "SafeZoneX + 0.1";
		};
	};
};