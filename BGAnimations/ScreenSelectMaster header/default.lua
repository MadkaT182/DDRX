return Def.ActorFrame {
	LoadActor( "screen_name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-309;y,SCREEN_CENTER_Y-205;zoom,1.06;sleep,0.433;linear,0.1;linear,0.1;zoom,1);
		OffCommand=cmd();
	};
}