return Def.ActorFrame {
	InitCommand=cmd(sleep,0.5);

	LoadActor( "../_swooshInstructions" )..{
		StartTransitioningCommand=cmd(play);
	};
}