return Def.ActorFrame {
	LoadActor( "../_footer" )..{
	};

	LoadActor( "../_footer/confirm.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y+208;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0);
	};

	LoadActor( "../_footer/select.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+131;y,SCREEN_CENTER_Y+208;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0);
	};
}