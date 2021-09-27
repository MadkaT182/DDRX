return Def.ActorFrame {
	LoadFont("_service")..{
		Text="I/O CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+33);
	};
	LoadFont("_service")..{
		Text="IC CARD CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+73;zoom,.8);
	};
	LoadFont("_service")..{
		Text="UNIT\n\nIC CARD";
		InitCommand=cmd(x,SCREEN_CENTER_X-250;y,SCREEN_TOP+164;zoom,.8;horizalign,left);
	};
	LoadFont("_service")..{
		Text="P1 UNIT\n\n---";
		InitCommand=cmd(x,SCREEN_CENTER_X+24;y,SCREEN_TOP+164;zoom,.8;horizalign,left);
	};
	LoadFont("_service")..{
		Text="PLEASE BRING THE IC CARD CLOSE.";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-124;zoom,.8);
	};
	LoadFont("_service")..{
		Text="PRESS 1P START BUTTON = ABORT";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-24;zoom,.8);
		OnCommand=cmd(sleep,40;queuecommand,"Finish");
		FinishCommand=cmd(settext,"PRESS 1P START BUTTON = EXIT");
	};
};