local t = Def.ActorFrame {
	--3d Wheel dummy background

LoadActor("w01")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+201;diffusealpha,0;sleep,0.595;sleep,0;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w02")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+167;diffusealpha,0;sleep,0.595;sleep,0.023;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w03")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+135;diffusealpha,0;sleep,0.595;sleep,0.046;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w04")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+104;diffusealpha,0;sleep,0.595;sleep,0.069;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w05")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+75;diffusealpha,0;sleep,0.595;sleep,0.092;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w06")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+47;diffusealpha,0;sleep,0.595;sleep,0.115;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w07")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y+21;diffusealpha,0;sleep,0.595;sleep,0.138;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w08")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-3;diffusealpha,0;sleep,0.595;sleep,0.161;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w08")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-28;diffusealpha,0;sleep,0.595;sleep,0.184;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w10")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-53;diffusealpha,0;sleep,0.595;sleep,0.207;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w11")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-79;diffusealpha,0;sleep,0.595;sleep,0.23;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w12")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-107;diffusealpha,0;sleep,0.595;sleep,0.253;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w13")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-136;diffusealpha,0;sleep,0.595;sleep,0.276;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w14")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-167;diffusealpha,0;sleep,0.595;sleep,0.299;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

LoadActor("w15")..{
OnCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y-199;diffusealpha,0;sleep,0.595;sleep,0.322;diffusealpha,1);
OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,SCREEN_WIDTH/2+20);
};

};

return t;