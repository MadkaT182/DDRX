return Def.ActorFrame {
	LoadFont("_service")..{
		Text="SYSTEM INFORMATION";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+40);
	};
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X-259;y,174);
		LoadFont("_service")..{
			Text="SOFT ID CODE";
			InitCommand=cmd(horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="AVS2 VERSION";
			InitCommand=cmd(y,21;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="I/O BOARD";
			InitCommand=cmd(y,42;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="USB MEMORY UNIT";
			InitCommand=cmd(y,63;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="IC CARD UNIT";
			InitCommand=cmd(y,84;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="SYSTEM ID";
			InitCommand=cmd(y,126;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="HARDWARE ID";
			InitCommand=cmd(y,147;horizalign,left;zoom,.8);
		};
	};
	Def.ActorFrame{
		InitCommand=cmd(x,SCREEN_CENTER_X-34;y,174);
		LoadFont("_service")..{
			Text=GetSerial();
			InitCommand=cmd(horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="2.8.3";
			InitCommand=cmd(y,21;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="2.3.6:HDX";
			InitCommand=cmd(y,42;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="1.01.08";
			InitCommand=cmd(y,63;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="309A1";
			InitCommand=cmd(y,84;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="9696-4395-4816-4682-3675";
			InitCommand=cmd(y,126;horizalign,left;zoom,.8);
		};
		LoadFont("_service")..{
			Text="4450-2179-9554-8823";
			InitCommand=cmd(y,147;horizalign,left;zoom,.8);
		};
	};
	LoadFont("_service")..{
		Text="PRESS 1P START BUTTON = EXIT";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-24;zoom,.8);
	};
};