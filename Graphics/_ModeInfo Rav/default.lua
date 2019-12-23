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
		OnCommand=cmd(x,-84;y,-41);
	};
	LoadActor(THEME:GetCurLanguage()=="ja" and "desc_jp" or "desc_us")..{
		OnCommand=cmd(x,-31;y,12);
		Condition=GAMESTATE:GetNumPlayersEnabled()==2;
	};
	LoadActor(THEME:GetCurLanguage()=="ja" and "desc_cpu_jp" or "desc_cpu_us")..{
		OnCommand=cmd(x,-21;y,18);
		Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	};
	LoadActor(THEME:GetCurLanguage()=="ja" and "badgejp" or "badgeus")..{
		OnCommand=cmd(x,170;y,72;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0.75,0.75,0.75,1");effectperiod,0.266);
		Condition=GAMESTATE:GetNumPlayersEnabled()==1;
		GainFocusCommand=cmd(stoptweening;zoomy,0;linear,.1;zoomy,1.5;sleep,.017;zoomy,1;sleep,.017;zoomx,1.5;sleep,.017;zoom,1);
		LoseFocusCommand=cmd(linear,.25;zoomy,0);
	};
	LoadFont("maxstages")..{
		InitCommand=cmd(horizalign,right;x,178;y,-65;playcommand,"Set");
		SetCommand=function(self)
		local max_stages = PREFSMAN:GetPreference("SongsPerPlay");
			self:settext(max_stages);
		end
	};	
};