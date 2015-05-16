return Def.ActorFrame {
	LoadActor( "info" )..{
		OnCommand=cmd();
		OffCommand=cmd(linear,0.133;addx,-520);
	};

	LoadActor( "tip" )..{
		OnCommand=cmd(diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0.75,0.75,0.75,1");effectperiod,0.266);
		OffCommand=cmd(stopeffect;linear,0.066;zoomy,0;addy,46);
	};
}