return Def.ActorFrame {

LoadActor("intro")..{
OnCommand=cmd(FullScreen);
};

LoadActor("../_black")..{
OnCommand=cmd(FullScreen;diffusealpha,0;sleep,11.3;diffusealpha,1);
};

}