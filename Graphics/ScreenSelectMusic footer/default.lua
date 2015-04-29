return Def.ActorFrame {

	LoadActor( "../_footer/footer_shadow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+229;zoomx, 1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor( "../_footer/command_bg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+283;y,SCREEN_CENTER_Y+210;addx,288;sleep,0.033;decelerate,0.233;addx,-288);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};

	LoadActor( "../_footer/confirm.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+353;y,SCREEN_CENTER_Y+200;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
	};

	LoadActor( "../_footer/difficulty" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+273;y,SCREEN_CENTER_Y+220;addx,271;sleep,0.033;sleep,0.05;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
	};

	LoadActor( "../_footer/select.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+267;y,SCREEN_CENTER_Y+200;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);

	};

}