return Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};

	LoadActor( "../Common ScreenStages/top_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+12;zoomx,1.34;addy,-56;linear,0.133;addy,56);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "../Common ScreenStages/bottom_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-12;zoomx,1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor("../../Graphics/timerBG")..{
	};

}