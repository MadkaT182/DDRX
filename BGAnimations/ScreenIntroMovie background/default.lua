return Def.ActorFrame {
	LoadActor( "Intro" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
	};

	LoadActor( "../_black" )..{
		BeginCommand=cmd(StretchTo,0,0,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;sleep,27.0;diffusealpha,0);
	};
}