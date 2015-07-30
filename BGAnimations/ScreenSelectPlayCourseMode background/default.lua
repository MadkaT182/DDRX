return Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};

	LoadActor( "../Common ScreenStages/top_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+12;zoomx,1.34;addy,-56;linear,0.133;addy,56);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "../../Graphics/_shared options header/frame" )..{
		OnCommand=cmd(x,SCREEN_LEFT+289;y,SCREEN_TOP-14;vertalign,top;horizalign,right;zoom,0;sleep,0.283;linear,0.233;zoom,1.05;linear,0.066;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
	};

	LoadActor( "screen_name" )..{
		OnCommand=cmd(x,SCREEN_LEFT+149;y,SCREEN_TOP+32;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,0.516000;sleep,0.283;decelerate,0.083;diffusealpha,1;decelerate,0.083;zoom,1;);
		OffCommand=cmd(linear,0.05;addx,-999;diffusealpha,0);
	};

	LoadActor( "../Common ScreenStages/bottom_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-12;zoomx,1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor("../../Graphics/timerBG")..{
	};
}