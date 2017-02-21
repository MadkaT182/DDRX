return Def.ActorFrame {

LoadActor("command/command_bg")..{
OnCommand=cmd(x,SCREEN_CENTER_X+204;y,SCREEN_CENTER_Y+233;addx,271;sleep,0.516000;sleep,0.033;decelerate,0.233;addx,-271);
OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
};

LoadActor("command/confirm0")..{
OnCommand=cmd(x,SCREEN_CENTER_X+249;y,SCREEN_CENTER_Y+198;addx,271;sleep,0.516000;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
};

LoadActor("command/select0")..{
OnCommand=cmd(x,SCREEN_CENTER_X+137;y,SCREEN_CENTER_Y+198;addx,271;sleep,0.516000;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
};

}