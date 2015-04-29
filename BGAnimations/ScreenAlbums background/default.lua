return Def.ActorFrame {

	LoadActor( "howtoplay" )..{
		BeginCommand=cmd(StretchTo,0,0,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(Center;FullScreen);
	};

	LoadActor( "../_black" )..{
		OnCommand=cmd(diffusealpha,0;sleep,62.0;accelerate,0.5;diffusealpha,1);
	};
}