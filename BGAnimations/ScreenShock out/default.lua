return Def.ActorFrame {
	InitCommand=cmd(sleep,.283);
	LoadActor( "../_swooshInstructions" )..{
		StartTransitioningCommand=cmd(play;sleep,.5);
	};
}