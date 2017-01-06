return Def.ActorFrame {

LoadActor("ddrx_logobg1")..{
OnCommand=cmd(FullScreen);
};

LoadActor("ddrx_logobg_bright")..{
OnCommand=cmd(FullScreen;sleep,0.333;decelerate,0.033;zoom,1.02;zoomtowidth,SCREEN_WIDTH*1.02;accelerate,0.033;zoom,1;zoomtowidth,SCREEN_WIDTH;decelerate,0.033;zoom,1.02;zoomtowidth,SCREEN_WIDTH*1.02;accelerate,0.033;zoom,1;zoomtowidth,SCREEN_WIDTH;);
};

LoadActor("ddrx_splat")..{
OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-11);
};

LoadActor("ddrx_light1")..{
OnCommand=cmd(diffusealpha,0.2;horizalign,left;vertalign,top;y,SCREEN_CENTER_Y-240;x,SCREEN_LEFT-253;blend,'BlendMode_Add';rotationz,-90;linear,7;rotationz,6;linear,7;rotationz,-90;queuecommand,"Later");
LaterCommand=cmd(sleep,14;queuecommand,"On");
};

LoadActor("ddrx_light1")..{
OnCommand=cmd(diffusealpha,0.2;horizalign,left;vertalign,top;y,SCREEN_CENTER_Y+530;x,SCREEN_RIGHT-20;blend,'BlendMode_Add';rotationx,180;rotationz,98;linear,7;rotationz,24;linear,7;rotationz,98;queuecommand,"Later");
LaterCommand=cmd(sleep,14;queuecommand,"On");
};

LoadActor("ddrx_logo1")..{
OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-11;blend,'BlendMode_Add';diffusealpha,0;sleep,0.183;diffusealpha,0.3;zoom,2;accelerate,0.15;zoom,1.2;decelerate,0.15;diffusealpha,0;zoom,1.5;rotationz,3);
};

LoadActor("ddrx_logo1")..{
OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-11;diffusealpha,0;sleep,0.183;diffusealpha,0.2;zoom,2;accelerate,0.15;diffusealpha,0.8;zoom,1;decelerate,0.033;diffusealpha,1;rotationz,1;accelerate,0.033;rotationz,-2;decelerate,0.033;zoom,1.02;rotationz,-1;accelerate,0.066;zoom,1;rotationz,0);
};

LoadActor("../konami_copyright")..{
OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+219;diffusealpha,0;sleep,0.916;linear,0.4;diffusealpha,1);
};

LoadActor("d1")..{
OnCommand=cmd(x,SCREEN_CENTER_X-149;y,SCREEN_CENTER_Y;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0;queuecommand,"Later");
LaterCommand=cmd(sleep,18.6;queuecommand,"On");
};

LoadActor("d2")..{
OnCommand=cmd(x,SCREEN_CENTER_X-131;y,SCREEN_CENTER_Y+47;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.466;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0;queuecommand,"Later");
LaterCommand=cmd(sleep,18.6;queuecommand,"On");
};

LoadActor("r")..{
OnCommand=cmd(x,SCREEN_CENTER_X-23;y,SCREEN_CENTER_Y+99;blend,'BlendMode_Add';diffusealpha,0;sleep,2.183;sleep,0.932;linear,0.233;diffusealpha,0.4;linear,0.233;diffusealpha,0;queuecommand,"Later");
LaterCommand=cmd(sleep,18.6;queuecommand,"On");
};

LoadActor("x")..{
OnCommand=cmd(x,SCREEN_CENTER_X+92;y,SCREEN_CENTER_Y-21;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,2.183;sleep,1.631;linear,0.383;diffusealpha,0.4;zoom,1.15;linear,0.383;diffusealpha,0;zoom,1.3;queuecommand,"Later");
LaterCommand=cmd(sleep,18.6;queuecommand,"On");
};

LoadActor("x")..{
OnCommand=cmd(x,SCREEN_CENTER_X+92;y,SCREEN_CENTER_Y-21;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,0.416;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65;);
};

LoadActor("x")..{
OnCommand=cmd(x,SCREEN_CENTER_X+92;y,SCREEN_CENTER_Y-21;blend,'BlendMode_Add';diffusealpha,0;zoom,1;sleep,0.55;diffusealpha,0.4;linear,0.333;diffusealpha,0;zoom,1.65;);
};

LoadActor("../_black")..{
OnCommand=cmd(FullScreen;diffusealpha,1;decelerate,0.166;diffusealpha,0);
};

LoadActor("../_black")..{
OnCommand=cmd(FullScreen;diffusealpha,0;sleep,64.5;accelerate,0.5;diffusealpha,1);
};

}