return Def.ActorFrame {
	LoadActor( "infoCPU" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+95);
		OffCommand=cmd(linear,0.133;addx,-520);
		Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	};

	LoadActor( "infoVS" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+95);
		OffCommand=cmd(linear,0.133;addx,-520);
		Condition=GAMESTATE:GetNumPlayersEnabled()==2;
	};

	LoadActor( "tip" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+100;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0.75,0.75,0.75,1");effectperiod,0.266);
		OffCommand=cmd(stopeffect;linear,0.066;zoomy,0;diffusealpha,0;addy,46);
		Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	};
}