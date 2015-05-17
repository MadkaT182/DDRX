return Def.ActorFrame {
	LoadActor( "_img" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y-80);
	};

	LoadActor( "_name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+85;y,SCREEN_CENTER_Y-26);
	};
}