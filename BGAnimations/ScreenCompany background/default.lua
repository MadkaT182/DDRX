return Def.ActorFrame {
--[[	InitCommand=cmd(sleep,12.8);

	LoadActor( "../_black" )..{
		BeginCommand=cmd(StretchTo,0,0,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,1);
	};

	LoadActor( "../_white" )..{
		BeginCommand=cmd(StretchTo,0,0,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;sleep,3;diffusealpha,1);
	};
--]]
	LoadActor( "konami" )..{
		OnCommand=cmd(Center;FullScreen;diffusealpha,0;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
	};

	LoadActor( "bemani" )..{
		OnCommand=cmd(Center;FullScreen;diffusealpha,0;sleep,6.4;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
	};
}