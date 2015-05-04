return Def.ActorFrame {
	LoadActor( "../_shared options header" )..{
	};

	LoadActor( "screen_course" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-308;y,SCREEN_CENTER_Y-200;zoom,1.06;sleep,0.483;decelerate,0.083;decelerate,0.083;zoomy,1);
		OffCommand=cmd(linear,0.133;addy,-62);
		Condition=GAMESTATE:IsCourseMode();
	};

	LoadActor( "screen_music" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-309;y,SCREEN_CENTER_Y-200;zoom,1.06;sleep,0.483;decelerate,0.083;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
		Condition=not GAMESTATE:IsCourseMode();
	};

}