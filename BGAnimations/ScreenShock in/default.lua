return Def.ActorFrame {
	InitCommand=cmd(sleep,0.5);

	LoadActor( "../_swooshInstructions.mp3" )..{
		StartTransitioningCommand=cmd(play);
	};
}