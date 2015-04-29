return Def.ActorFrame {
	LoadActor( "p2_shadow" )..{
		OnCommand=cmd(sleep,0.465);
		OffCommand=cmd();
		Condition=CurStyleName()=="single" and IsHumanPlayer(2) and PlayModeName() == "Rave";
	};

	LoadActor( "p2_shadow" )..{
		OnCommand=cmd(sleep,0.465);
		OffCommand=cmd();
		Condition=PlayModeName() == "Regular";
	};

	LoadActor( "p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-195;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;spin;effectmagnitude,0,0,50);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(2) and PlayModeName() == "Rave";
	};

	LoadActor( "p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-195;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;blend,'BlendMode_Add';spin;effectmagnitude,0,0,-200);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(2) and PlayModeName() == "Rave";
	};

	LoadActor( "p2_cursor" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-195;zoomy,0;sleep,0.283;linear,0.116;zoomy,1);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(2) and PlayModeName() == "Rave";
	};

	LoadActor( "p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-195;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;spin;effectmagnitude,0,0,50);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=PlayModeName() == "Regular";
	};

	LoadActor( "p2_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-195;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;blend,'BlendMode_Add';spin;effectmagnitude,0,0,-200);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=PlayModeName() == "Regular";
	};

	LoadActor( "p2_cursor" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-195;zoomy,0;sleep,0.283;linear,0.116;zoomy,1);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=PlayModeName() == "Regular";
	};

	LoadActor( "../DifficultyList cursor p1/p1_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-469;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;spin;effectmagnitude,0,0,50);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(2) and PlayModeName() == "Rave";
	};

	LoadActor( "../DifficultyList cursor p1/p1_light" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-469;zoomy,0;sleep,0.283;linear,0.116;zoomy,1;blend,'BlendMode_Add';spin;effectmagnitude,0,0,-200);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(2) and PlayModeName() == "Rave";
	};

	LoadActor( "../DifficultyList cursor p1/cpu_cursor" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-469;zoomy,0;sleep,0.283;linear,0.116;zoomy,1);
		OffCommand=cmd(zoomy,1;linear,0.116;zoomy,0);
		Condition=CurStyleName()=="single" and IsHumanPlayer(2) and PlayModeName() == "Rave";
	};
}