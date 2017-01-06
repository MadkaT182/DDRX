return Def.ActorFrame {

LoadActor("../cleared") .. {
StartTransitioningCommand=cmd(play);
};


LoadActor("../_shared_background")..{
OnCommand=cmd(diffusealpha,0;sleep,3;diffusealpha,1);
};

LoadActor("../door1")..{
OnCommand=cmd(x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,-SCREEN_WIDTH/2;sleep,0.000;sleep,0;linear,0.8;addx,SCREEN_WIDTH/2;sleep,1.75;sleep,3.4;linear,0.2;addx,-SCREEN_WIDTH/2);
};

LoadActor("../door2")..{
OnCommand=cmd(x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH/2;sleep,0.000;sleep,0;linear,0.8;addx,-SCREEN_WIDTH/2;sleep,1.75;sleep,3.4;linear,0.2;addx,SCREEN_WIDTH/2);
};

LoadActor("s01")..{
OnCommand=cmd(x,SCREEN_CENTER_X+188;y,SCREEN_CENTER_Y-115;diffusealpha,0;sleep,0.000;sleep,0.533;diffusealpha,1;sleep,5.417;linear,0.05;diffusealpha,0);
};

LoadActor("s02")..{
OnCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,0.000;sleep,0.6;diffusealpha,1;sleep,5.35;linear,0.05;diffusealpha,0);
};

LoadActor("s01")..{
OnCommand=cmd(x,SCREEN_CENTER_X-104;y,SCREEN_CENTER_Y+109;diffusealpha,0;sleep,0.000;sleep,0.65;diffusealpha,1;sleep,5.3;linear,0.05;diffusealpha,0);
};

LoadActor("s03")..{
OnCommand=cmd(x,SCREEN_CENTER_X+96;y,SCREEN_CENTER_Y+22;diffusealpha,0;sleep,0.000;sleep,0.666;diffusealpha,1;sleep,5.284;linear,0.05;diffusealpha,0);
};

LoadActor("s04")..{
OnCommand=cmd(x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+20;diffusealpha,0;sleep,0.000;sleep,0.733;diffusealpha,1;sleep,5.217;linear,0.05;diffusealpha,0);
};

LoadActor("s05")..{
OnCommand=cmd(x,SCREEN_CENTER_X+134;y,SCREEN_CENTER_Y-102;diffusealpha,0;sleep,0.000;sleep,0.8;diffusealpha,1;sleep,5.15;linear,0.05;diffusealpha,0);
};

LoadActor("cleared")..{
OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-19;diffusealpha,0;rotationz,-350.5;sleep,0.000;accelerate,0.316;rotationz,0;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1;sleep,5.551;linear,0.066;zoomx,0.90;linear,0.05;zoomy,0;zoomx,1;diffusealpha,0);
};

}