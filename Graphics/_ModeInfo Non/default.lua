return Def.ActorFrame{
	OnCommand=cmd(x,SCREEN_CENTER_X-6;y,SCREEN_CENTER_Y+76);
	OffCommand=cmd(linear,.133;addx,-SCREEN_WIDTH);
	GainFocusCommand=cmd(sleep,.1;diffusealpha,1);
	LoseFocusCommand=cmd(stoptweening;linear,0.05;addx,19;linear,0.05;addx,-19;diffusealpha,0);
	Def.ActorFrame{
		LoadActor("../_ModeArt/nfofill");
		LoadActor("../_ModeArt/nfotop")..{
			OnCommand=cmd(y,-50);
		};
		LoadActor("../_ModeArt/nfobottom")..{
			OnCommand=cmd(y,60);
		};
		LoadActor("../_ModeArt/stgmax")..{
			OnCommand=cmd(x,101;y,-63);
		};
	};
	LoadActor("label")..{
		OnCommand=cmd(x,-75;y,-40);
	};
	LoadActor(THEME:GetCurLanguage()=="ja" and "desc_jp" or "desc_us")..{
		OnCommand=cmd(x,-2;y,7);
	};
	LoadFont("maxstages")..{
		InitCommand=cmd(horizalign,right;x,176;y,-64;settext,"0");
	};
};