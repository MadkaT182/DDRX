return Def.ActorFrame {
	LoadActor( "_swooshStyle" )..{
		StartTransitioningCommand=cmd(play);
	};
}