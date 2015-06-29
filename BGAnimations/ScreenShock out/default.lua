return Def.ActorFrame {
	InitCommand=cmd(sleep,0.283);

	LoadActor( "../_swooshInstructions.mp3" )..{
		StartTransitioningCommand=cmd(play;sleep,0.5);
	};
}