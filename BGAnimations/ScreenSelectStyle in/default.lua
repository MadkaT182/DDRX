return Def.ActorFrame {

LoadActor("_swooshStyle")..{
	OnCommand=cmd(play);
};

LoadActor("../_black")..{
OnCommand=cmd(Center,diffusealpha,1;decelerate,0.266;diffusealpha,0);
};

}