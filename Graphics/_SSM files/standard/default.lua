return Def.ActorFrame {
	LoadActor( "_img" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-120;y,SCREEN_CENTER_Y-80);
	};

	LoadActor( "_name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-93;y,SCREEN_CENTER_Y-16);
	};
}