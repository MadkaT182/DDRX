return Def.ActorFrame {
	LoadActor( "timerBG" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y-213;zoom,0;decelerate,0.1;zoom,1);
		OffCommand=cmd(sleep,0.566;accelerate,0.1;zoom,0);
	};

	LoadActor( "white_overlay" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y-213;diffusealpha,0;sleep,0.4;diffusealpha,1;linear,0.166;diffusealpha,0;linear,0.066;diffusealpha,1;sleep,0.066;linear,0.333;diffusealpha,0);
		OffCommand=cmd(diffusealpha,1;linear,0.266;rotationz,180;diffusealpha,0);
	};

	LoadActor( "orange_overlay" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y-213;diffusealpha,0;rotationz,-360;sleep,0.1;linear,0.3;zoom,1;rotationz,0;diffusealpha,1);
		OffCommand=cmd(linear,0.266;rotationz,180;sleep,0;linear,0.3;rotationz,-180;zoom,0;diffusealpha,0);
	};
}