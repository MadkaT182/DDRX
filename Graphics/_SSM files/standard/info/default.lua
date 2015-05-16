return Def.ActorFrame {
	LoadActor( "info" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-97;y,SCREEN_CENTER_Y+89;zoomy,0;sleep,0.05;zoomy,0.519;decelerate,0.05;zoomy,1;linear,0.033;addx,-5;linear,0.016;addx,5);
		OffCommand=cmd(linear,0.133;addx,-520);
		Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	};

	LoadActor( "dialog" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+191;y,SCREEN_CENTER_Y+89;zoomy,0;sleep,0.05;zoomy,0.519;decelerate,0.05;zoomy,1;linear,0.033;addx,-5;linear,0.016;addx,5);
		OffCommand=cmd(linear,0.133;addx,-520);
		Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	};

	LoadActor( "info" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+89);
		OffCommand=cmd(linear,0.133;addx,-520);
		Condition=GAMESTATE:GetNumPlayersEnabled()==2;
	};
}