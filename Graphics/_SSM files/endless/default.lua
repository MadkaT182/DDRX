return Def.ActorFrame {
	LoadActor( "_img" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+187;y,SCREEN_CENTER_Y-102);
	};

	LoadActor( "_name" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+188;y,SCREEN_CENTER_Y-26);
	};
}