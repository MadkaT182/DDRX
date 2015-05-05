return Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};

	LoadActor( "../Common ScreenStages/top_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+12;zoomx,1.34;addy,-56;linear,0.133;addy,56);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "../headerFrame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+147;y,SCREEN_TOP-16;vertalign,top;horizalign,right;zoom,0;linear,0.233;zoom,1.05;linear,0.066;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
	};

	LoadActor("../../Graphics/timerBG")..{
	};

	LoadActor( "judgmentBG" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+26;zoomy,0;sleep,0.000;linear,0.2;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0);
	};

	LoadActor( "../Common ScreenStages/bottom_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-12;zoomx,1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

}