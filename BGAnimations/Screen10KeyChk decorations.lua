return Def.ActorFrame {
	LoadFont("_service")..{
		Text="I/O CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+33);
	};
	LoadFont("_service")..{
		Text="10KEY CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+73;zoom,.8);
	};
	LoadFont("_service")..{
		Text="P1 INPUT KEY\n\n\nP2 INPUT KEY";
		InitCommand=cmd(x,SCREEN_CENTER_X-90;y,SCREEN_TOP+184;zoom,.8);
	};
	LoadFont("_service")..{
		Text="00000\n\n\n00000";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+204;zoom,.8);
	};
	LoadFont("_service")..{
		Text="PRESS 1P START BUTTON = EXIT";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-24;zoom,.8);
	};
};