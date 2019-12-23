return Def.ActorFrame{
	LoadActor(THEME:GetCurLanguage()=="ja" and "warnjp" or "warnus")..{
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,.6;diffusealpha,1;sleep,6;accelerate,.6;diffusealpha,0);
	};
};