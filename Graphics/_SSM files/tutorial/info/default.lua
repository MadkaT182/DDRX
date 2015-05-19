return Def.ActorFrame {
	LoadActor( "info" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-97;y,SCREEN_CENTER_Y+89;zoomy,0;sleep,0.05;zoomy,0.519;decelerate,0.05;zoomy,1;linear,0.033;addx,-5;linear,0.016;addx,5);
		OffCommand=cmd(linear,0.133;addx,-520);
		--Condition=CurStyleName()=="single" or CurStyleName()=="solo";
	};

	-- LoadActor( "info" )..{
	-- 	OnCommand=cmd();
	-- 	OffCommand=cmd(linear,0.133;addx,-520);
	-- 	Condition=not ( CurStyleName()=="single" or CurStyleName()=="solo" );
	-- };

	LoadActor( "tip" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y+94;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0.75,0.75,0.75,1");effectperiod,0.266);
		OffCommand=cmd(stopeffect;linear,0.066;zoomy,0;addy,46);
		--Condition=CurStyleName()=="single" or CurStyleName()=="solo";
	};
}