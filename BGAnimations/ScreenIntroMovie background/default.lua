return Def.ActorFrame {
--	InitCommand=cmd(sleep,27.5);

	LoadActor( "Intro" )..{
		BeginCommand=cmd(StretchTo,0,0,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(Center;FullScreen);
	};

	LoadActor( "../_black" )..{
		BeginCommand=cmd(StretchTo,0,0,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;sleep,27.0;diffusealpha,0);
	};
}