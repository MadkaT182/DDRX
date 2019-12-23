return Def.ActorFrame{
	LoadActor(THEME:GetCurLanguage()=="ja" and "cautjp" or "cautus")..{
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.3;diffusealpha,1;sleep,2.4;accelerate,0.3;diffusealpha,0);
	};
};