return Def.ActorFrame {

LoadActor("../failed") .. {
StartTransitioningCommand=cmd(play);
};

LoadActor("cage")..{
OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;addy,-480;sleep,0.000;accelerate,0.316;addy,480;sleep,3;diffusealpha,0);
};

-- LoadActor("../door1")..{
-- OnCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y;addx,-320;sleep,0.000;sleep,0.316;linear,0.2;addx,320;sleep,1.167;sleep,3.383;linear,0.2;addx,-320);
-- };

-- LoadActor("../door2")..{
-- OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y;addx,320;sleep,0.000;sleep,0.316;linear,0.2;addx,-320;sleep,1.167;sleep,3.383;linear,0.2;addx,320);
-- };

LoadActor("../ScreenGameplay Cleared/s01")..{
OnCommand=cmd(x,SCREEN_CENTER_X+188;y,SCREEN_CENTER_Y-115;diffusealpha,0;sleep,0.000;sleep,0.766;diffusealpha,1;sleep,4.3;linear,0.05;diffusealpha,0);
};

LoadActor("../ScreenGameplay Cleared/s02")..{
OnCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,0.000;sleep,0.833;diffusealpha,1;sleep,4.233;linear,0.05;diffusealpha,0);
};

LoadActor("../ScreenGameplay Cleared/s01")..{
OnCommand=cmd(x,SCREEN_CENTER_X-104;y,SCREEN_CENTER_Y+109;diffusealpha,0;sleep,0.000;sleep,0.883;diffusealpha,1;sleep,4.183;linear,0.05;diffusealpha,0);
};

LoadActor("../ScreenGameplay Cleared/s03")..{
OnCommand=cmd(x,SCREEN_CENTER_X+96;y,SCREEN_CENTER_Y+22;diffusealpha,0;sleep,0.000;sleep,0.899;diffusealpha,1;sleep,4.167;linear,0.05;diffusealpha,0);
};

LoadActor("../ScreenGameplay Cleared/s04")..{
OnCommand=cmd(x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+20;diffusealpha,0;sleep,0.000;sleep,0.933;diffusealpha,1;sleep,4.133;linear,0.05;diffusealpha,0);
};

LoadActor("../ScreenGameplay Cleared/s05")..{
OnCommand=cmd(x,SCREEN_CENTER_X+134;y,SCREEN_CENTER_Y-102;diffusealpha,0;sleep,0.000;sleep,0.966;diffusealpha,1;sleep,4.1;linear,0.05;diffusealpha,0);
};

LoadActor("failed")..{
OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-59;vertalign,top;diffusealpha,0;rotationz,-350.5;sleep,0.000;sleep,0.233;accelerate,0.316;rotationz,0;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1;sleep,4.402;linear,0.166;addy,30;diffusealpha,0);
};

}