local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X-196;y,SCREEN_CENTER_Y-95);
	OffCommand=cmd(linear,.133;zoomy,0);
	--Dummy announcer actor
	LoadActor("../_dummy")..{
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;linear,1;queuecommand,"Play");
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		PlayCommand=function(self)
			if self:GetVisible() then
			SOUND:PlayAnnouncer( "ScreenSelectPlayMode comment tutorial" )
			end;
		end;
	};
	--Icon art
	LoadActor("../_ModeArt/spl1")..{
		OnCommand=cmd(diffusealpha,0);
		OverCommand=cmd(diffusealpha,.5;zoomx,.5;y,-2;x,-56;linear,.1;zoom,1;diffusealpha,1;addx,56;sleep,0;diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;sleep,0.117;diffusealpha,1;playcommand,"Over");
		LoseFocusCommand=cmd(stoptweening;sleep,.1;diffusealpha,.5;addx,-56;linear,.05;addx,56;linear,.05;addx,-56;diffusealpha,0);
	};
	LoadActor("../_ModeArt/spl2")..{
		OnCommand=cmd(diffusealpha,0);
		OverCommand=cmd(diffusealpha,.5;zoomx,.5;y,-2;x,56;linear,.1;zoom,1;diffusealpha,1;addx,-56;sleep,0;diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;sleep,0.117;diffusealpha,1;playcommand,"Over");
		LoseFocusCommand=cmd(stoptweening;sleep,.1;diffusealpha,.5;addx,56;linear,.05;addx,-56;linear,.05;addx,56;diffusealpha,0);
	};
	LoadActor("../_ModeArt/splatbg")..{
		OnCommand=cmd(diffusealpha,0);
		OverCommand=cmd(diffusealpha,0;y,-2;sleep,.1;diffusealpha,1);
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;sleep,0.117;diffusealpha,1;playcommand,"Over");
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor("../_ModeArt/bgframe")..{
		OnCommand=cmd();
		GainFocusCommand=cmd(diffusealpha,0;sleep,0.117;diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("back")..{
		OnCommand=cmd(addy,-1);
		GainFocusCommand=cmd(diffusealpha,0;sleep,0.117;diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("../_ModeArt/scan")..{
		OnCommand=cmd(diffusealpha,0);
		OverCommand=cmd(y,41;diffusealpha,0;linear,.5;addy,-42;diffusealpha,1;linear,.5;addy,-42;diffusealpha,0;sleep,0;addy,84;queuecommand,"Animate");
		AnimateCommand=cmd(queuecommand,"Over");
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;sleep,0.117;diffusealpha,1;playcommand,"Over");
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor("icon")..{
		OnCommand=cmd(addy,-11;addx,0);
		GainFocusCommand=cmd(diffusealpha,0;sleep,0.117;diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("label")..{
		OnCommand=cmd(addy,69;addx,2;glowshift;effectperiod,0.266;);
		GainFocusCommand=cmd(diffusealpha,0;sleep,0.117;diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	--OffComand icon art
	LoadActor("../_ModeArt/std")..{
		InitCommand=cmd(addx,170;addy,-15);
		GainFocusCommand=cmd(diffusealpha,1;queuecommand,"On");
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("../_ModeArt/bat")..{
		InitCommand=cmd(addx,301;addy,44);
		GainFocusCommand=cmd(diffusealpha,1;queuecommand,"On");
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("../_ModeArt/non")..{
		InitCommand=cmd(addx,369;addy,-19);
		GainFocusCommand=cmd(diffusealpha,1;queuecommand,"On");
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("../_ModeArt/end")..{
		InitCommand=cmd(addx,456;addy,41);
		GainFocusCommand=cmd(diffusealpha,1;queuecommand,"On");
		LoseFocusCommand=cmd(diffusealpha,0);
	};
};

return t;