return Def.ActorFrame {
	LoadActor( "background" )..{
		InitCommand=cmd(Center;FullScreen);
	};

	LoadActor( "right" )..{
		InitCommand=cmd(x,SCREEN_RIGHT-61;y,SCREEN_CENTER_Y);
	};

	LoadActor( "left" )..{
		InitCommand=cmd(x,SCREEN_LEFT+64;y,SCREEN_CENTER_Y);
	};

}