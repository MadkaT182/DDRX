return Def.ActorFrame {

LoadActor("../ready")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+1;glow,color("1,1,1,0");zoomy,0;zoomx,1.34;sleep,0;accelerate,0.133;zoomy,0.807;zoomx,1;decelerate,0.066;zoomy,1.192;glow,color("1,1,1,0.5");sleep,0.016;accelerate,0.033;glow,color("1,1,1,0");zoomy,1;sleep,1.55;linear,0.133;zoomy,0;);
};

LoadActor("../go")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y-1;glow,1,1,1,0;zoomy,0;zoomx,1.34;sleep,1.651;accelerate,0.133;zoomy,0.807;zoomx,1;decelerate,0.066;zoomy,1.192;glow,1,1,1,0.5;sleep,0.016;accelerate,0.033;glow,1,1,1,0;zoomy,1;sleep,1.078;decelerate,0.132;zoomy,0;zoomx,1.14;diffusealpha,0);
};

}