return Def.ActorFrame {

	LoadActor( "../header" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-228;addy,-24;linear,0.133;addy,24);
		OffCommand=cmd(linear,0.133;addy,-24);
	};

	LoadActor( "../_SortDisplay" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+136;y,SCREEN_TOP+29);
		OffCommand=cmd(linear,0.133;addy,-58);
	};

	LoadActor("../timerBG")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y-213);
	};

	LoadActor( "headbg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-180;addy,35;zoom,0;diffusealpha,0;sleep,0.516000;sleep,0.033;linear,0.1;diffusealpha,1;zoom,1.05;linear,0.066;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-86);
	};

}
