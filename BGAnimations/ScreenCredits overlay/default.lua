return Def.ActorFrame {
	LoadActor( "sp_ending" )..{
		InitCommand=cmd(FullScreen);
	};

	LoadActor( "credit_bgm" )..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};

}