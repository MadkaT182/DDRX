return Def.ActorFrame {

	LoadActor( "../_footer/footer_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-12;zoomx, 1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor( "../_footer/command_bg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+210;y,SCREEN_BOTTOM-7;addx,288;sleep,0.033;decelerate,0.233;addx,-288);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};

	LoadActor( "../_footer/confirm.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+255;y,SCREEN_BOTTOM-42;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
	};

	-- LoadActor( "../_footer/difficulty" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+176;y,SCREEN_BOTTOM-25;addx,271;sleep,0.033;sleep,0.05;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
	-- 	OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
	-- };

	LoadActor( "../_footer/select.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+143;y,SCREEN_BOTTOM-42;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);

	};

}