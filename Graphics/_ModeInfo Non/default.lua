local t = Def.ActorFrame {};
local lang = "us";

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = Def.ActorFrame {
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

	LoadActor( "desc_"..lang )..{
		OnCommand=cmd(x,-2;y,7);
	};

	LoadActor("badge"..lang)..{
		OnCommand=cmd(x,170;y,72;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0.75,0.75,0.75,1");effectperiod,0.266);
	};
	LoadFont("maxstages")..{
		InitCommand=cmd(horizalign,right;x,176;y,-64;settext,"0");
	};
};

return t;