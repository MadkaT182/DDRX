return Def.ActorFrame {
	LoadActor( "info" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+89);
		OffCommand=cmd(linear,0.133;addx,-520);
	};

	LoadActor( "tip" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+89;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0.75,0.75,0.75,1");effectperiod,0.266);
		OffCommand=cmd(stopeffect;linear,0.066;zoomy,0;addy,46);
	};
}