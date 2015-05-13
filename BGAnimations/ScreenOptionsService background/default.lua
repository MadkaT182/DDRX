return Def.ActorFrame {
	LoadActor( "../_shared options background" )..{
	};

	LoadActor( "../Common ScreenStages/top_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+12;zoomx,1.34;addy,-56;linear,0.133;addy,56);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "../../Graphics/_shared options header/frame" )..{
		OnCommand=cmd(x,SCREEN_LEFT+289;y,SCREEN_TOP-14;vertalign,top;horizalign,right;zoom,0;sleep,0.283;linear,0.233;zoom,1.05;linear,0.066;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
	};

	LoadActor( "../../Graphics/_footer/footer_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-12;zoomx, 1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor( "../../Graphics/_footer/command_bg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+210;y,SCREEN_BOTTOM-7;addx,288;sleep,0.033;decelerate,0.233;addx,-288);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};

	LoadActor( "../../Graphics/_footer/confirm.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+255;y,SCREEN_BOTTOM-42;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
	};

	LoadActor( "../../Graphics/_footer/difficulty" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+176;y,SCREEN_BOTTOM-25;addx,271;sleep,0.033;sleep,0.05;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
	};

	LoadActor( "../../Graphics/_footer/select.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+143;y,SCREEN_BOTTOM-42;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
	};

}