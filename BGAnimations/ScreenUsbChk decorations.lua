return Def.ActorFrame {
	LoadFont("_service")..{
		Text="I/O CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+33);
	};
	LoadFont("_service")..{
		Text="USB MEMORY CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+73;zoom,.8);
	};
	LoadFont("_service")..{
		Text="SLOT:";
		InitCommand=cmd(x,SCREEN_CENTER_X-222;y,SCREEN_TOP+164;zoom,.8);
	};
	LoadFont("_service")..{
		Text="---";
		InitCommand=cmd(x,SCREEN_CENTER_X+35;y,SCREEN_TOP+164;zoom,.8);
	};
	LoadFont("_service")..{
		Text="PRESS 1P START BUTTON = ABORT";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-24;zoom,.8);
		OnCommand=cmd(sleep,40;queuecommand,"Finish");
		FinishCommand=cmd(settext,"PRESS 1P START BUTTON = EXIT");
	};
};