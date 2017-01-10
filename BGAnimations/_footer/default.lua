return Def.ActorFrame {
	LoadActor( "../footer" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM;addy,23;sleep,0.436;accelerate,0.133;addy,-33);
		OffCommand=cmd(accelerate,0.133;addy,33);
	};
}
