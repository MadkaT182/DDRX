local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	OnCommand=function(self)
		if GAMESTATE:IsExtraStage() then
			self:diffuse(color("#ff5aec"));
		elseif GAMESTATE:IsExtraStage2() then
			self:diffuse(color("#ff5a63"));
		end;
	end;

    LoadActor("../failed.mp3") .. {
		StartTransitioningCommand=cmd(play);
	};

	LoadActor( "../_shared background" )..{
		OnCommand=cmd(addy,999;sleep,3;addy,-999);
	};

    LoadActor("cage")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-360;zoom,1.01);
		OnCommand=cmd(zoomx,1.41;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;addy,-480;sleep,0.000;accelerate,0.316;addy,480;sleep,4;diffusealpha,1);
	};

	LoadActor( "../door1" )..{
		OnCommand=cmd(zoomx,1.41;x,SCREEN_CENTER_X-202;y,SCREEN_CENTER_Y;addx,-320;sleep,0.000;sleep,0.316;linear,0.2;addx,320;sleep,1.167;sleep,3.383;linear,0.2;addx,-320);
	};

	LoadActor( "../door2" )..{
		OnCommand=cmd(zoomx,1.41;x,SCREEN_CENTER_X+202;y,SCREEN_CENTER_Y;addx,320;sleep,0.000;sleep,0.316;linear,0.2;addx,-320;sleep,1.167;sleep,3.383;linear,0.2;addx,320);
	};
};


t[#t+1] = Def.ActorFrame {
	LoadActor("Failed") .. {
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;rotationz,-360;sleep,0.000;sleep,0.233;accelerate,0.316;rotationz,0;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1;sleep,3.1;linear,0.166;addy,30;diffusealpha,0);
	};
};

return t;