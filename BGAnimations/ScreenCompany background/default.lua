return Def.ActorFrame {

LoadActor("../white")..{
OnCommand=cmd(FullScreen;);
};

LoadActor("konami")..{
OnCommand=cmd(Center;diffusealpha,0;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
};

LoadActor("bemani")..{
OnCommand=cmd(Center;diffusealpha,0;sleep,6.4;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
};

}