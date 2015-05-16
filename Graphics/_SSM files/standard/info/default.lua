return Def.ActorFrame {
	LoadActor( "info" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+95;zoomy,0;sleep,0.05;zoomy,0.519;decelerate,0.05;zoomy,1;linear,0.033;addx,-5;linear,0.016;addx,5);
		OffCommand=cmd(linear,0.133;addx,-520);
		
	};

	
}