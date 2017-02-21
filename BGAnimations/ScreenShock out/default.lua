return Def.ActorFrame {
	InitCommand=cmd(sleep,0.283);

	LoadActor( "../_swooshInstructions" )..{
		StartTransitioningCommand=cmd(play;sleep,0.5);
	};
}