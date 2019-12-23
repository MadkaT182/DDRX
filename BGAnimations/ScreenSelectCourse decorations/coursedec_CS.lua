local t = Def.ActorFrame {
	LoadActor("../_header/music");
	LoadActor("../_titles/sel_course")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;y,SCREEN_CENTER_Y-208;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,0.283;decelerate,0.083;diffusealpha,1;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.05;addx,-35;diffusealpha,0);
	};
	LoadActor("../_header/mode")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y-223);
		OffCommand=cmd(linear,0.05;addx,-35;diffusealpha,0);
	};
	LoadActor("../_footer");
	LoadActor("../_footer/music");
	LoadActor("banner")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+177;y,SCREEN_CENTER_Y-136);
	};
	LoadActor("playerFrame_bg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-156;y,SCREEN_CENTER_Y+10);
	};
	LoadActor("courselist_CS")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-156;y,SCREEN_CENTER_Y+22);
		Condition=GAMESTATE:GetCoinMode() == 'CoinMode_Home'
	};
	LoadActor(THEME:GetPathG("","CourseDiffList"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+171;y,SCREEN_CENTER_Y-5);
	};
};

return t;