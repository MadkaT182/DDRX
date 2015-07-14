return Def.ActorFrame {

	LoadActor( "../_footer/command_bg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+278;y,SCREEN_CENTER_Y+210;addx,288;sleep,0.516000;sleep,0.033;decelerate,0.233;addx,-288);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};

	LoadActor( "../_footer/confirm.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+343;y,SCREEN_CENTER_Y+208;addx,271;sleep,0.516000;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};

	LoadActor( "../_footer/select.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+208;addx,271;sleep,0.516000;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};
}