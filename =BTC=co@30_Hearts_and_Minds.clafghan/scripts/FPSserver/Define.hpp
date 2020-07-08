#define FontHTML			"RobotoCondensed"
#define FontM				"RobotoCondensed"
#define Dlg_ROWS			36
#define Dlg_COLS			90
#define Dlg_CONTROLHGT		((100/Dlg_ROWS)/100)
#define Dlg_COLWIDTH		((100/Dlg_COLS)/100)
#define Dlg_TEXTHGT_MOD		0.9
#define Dlg_ROWSPACING_MOD	1.3
#define Dlg_ROWHGT			(Dlg_CONTROLHGT*Dlg_ROWSPACING_MOD)
#define Dlg_TEXTHGT			(Dlg_CONTROLHGT*Dlg_TEXTHGT_MOD)
#define UILEFT				0
#define UICOMBO				4
#define DEFAULTFONT			"RobotoCondensed"

class RscText2 {
	type = CT_STATIC;
	idc = -1;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = {0,0,0,0.5};
	font = DEFAULTFONT;
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = {1,1,1,1.0};
	colorBackground[] = {0,0,0,0};
	linespacing = 1;
	text = "";
};


#define __DDIALOG_BG(loc_str) \
	class BackGroundCaption: RscText2 { \
		x = 0; y = 0; \
		w = 1; h = 1 / 25; \
		colorBackground[] = {0.3843,0.7019,0.8862,0.7}; \
	}; \
	class MainCaption: RscText2 { \
		x = 0.02; y = 0; \
		w = 0.4; h = 0.04; \
		sizeEx = 0.04; \
		colorBackground[] = {1, 1, 1, 0}; \
		colorText[] = {1, 1, 1, 1}; \
		text = ""; \
	}; \
	class BackGroundMain: RscText2 { \
		colorBackground[] = {0, 0, 0, 0.7}; \
		x = 0; \
		y = (1 / 25) + 0.005; \
		w = 1; \
		h = 1 - (2 / 25) - 0.01; \
	}; \
	class DomVer: RscText2 { \
		x = 0.02; y = 1 - 0.04; \
		w = 0.25; h = 0.04; \
		sizeEx = 0.04; \
		colorBackground[] = {1, 1, 1, 0}; \
		colorText[] = {1, 1, 1, 1}; \
		text = ""; \
	};