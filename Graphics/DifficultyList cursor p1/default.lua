return Def.ActorFrame {
	LoadActor( "p1_shadow" )..{
		OnCommand=cmd(sleep,0.465);
		OffCommand=cmd();
	};

	LoadActor( "p1_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-445;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;spin;effectmagnitude,0,0,50);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
	};

	LoadActor( "p1_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-445;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;blend,'BlendMode_Add';spin;effectmagnitude,0,0,-200);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
	};

	LoadActor( "p1_cursor" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-445;zoomy,0;sleep,0.283;linear,0.116;zoomy,1);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
	};

	LoadActor( "../DifficultyList cursor p2/p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;spin;effectmagnitude,0,0,50);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(1) and PlayModeName() == "Rave";
	};

	LoadActor( "../DifficultyList cursor p2/p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;blend,'BlendMode_Add';spin;effectmagnitude,0,0,-200);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(1) and PlayModeName() == "Rave";
	};

	LoadActor( "cpu_cursor" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;zoomy,0;sleep,0.283;linear,0.116;zoomy,1);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(1) and PlayModeName() == "Rave";
	};

	LoadActor( "../DifficultyList cursor p2/p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;spin;effectmagnitude,0,0,50);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="versus" and PlayModeName() == "Rave";
	};

	LoadActor( "../DifficultyList cursor p2/p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;blend,'BlendMode_Add';spin;effectmagnitude,0,0,-200);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="versus" and PlayModeName() == "Rave";
	};

	LoadActor( "../DifficultyList cursor p2/p2_cursor" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;zoomy,0;sleep,0.283;linear,0.116;zoomy,1);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="versus" and PlayModeName() == "Rave";
	};
}