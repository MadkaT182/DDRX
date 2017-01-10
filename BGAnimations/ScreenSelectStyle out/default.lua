return Def.ActorFrame {

LoadActor("../_swoosh_out")..{
	StartTransitioningCommand=cmd(play);
};

LoadActor("../_black")..{
	OnCommand=cmd(diffusealpha,0;sleep,0.667);
};

}