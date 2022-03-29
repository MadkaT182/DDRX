local t = Def.ActorFrame {};
local sPlayMode = GAMESTATE:GetPlayMode();

t[#t+1] = Def.ActorFrame{
	LoadActor("../cleared") .. {
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("../door1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,-SCREEN_WIDTH/2;sleep,0;linear,.8;addx,SCREEN_WIDTH/2;sleep,2.267);
	};
	LoadActor("../door2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH/2;sleep,0;linear,.8;addx,-SCREEN_WIDTH/2;sleep,2.267);
	};
	LoadActor("s01")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+188;y,SCREEN_CENTER_Y-115;diffusealpha,0;sleep,0;sleep,.533;diffusealpha,1);
	};
	LoadActor("s02")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,0;sleep,.6;diffusealpha,1);
	};
	LoadActor("s01")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-104;y,SCREEN_CENTER_Y+109;diffusealpha,0;sleep,0;sleep,.65;diffusealpha,1);
	};
	LoadActor("s03")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+96;y,SCREEN_CENTER_Y+22;diffusealpha,0;sleep,0;sleep,.666;diffusealpha,1);
	};
	LoadActor("s04")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+20;diffusealpha,0;sleep,0;sleep,.733;diffusealpha,1);
	};
	LoadActor("s05")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+134;y,SCREEN_CENTER_Y-102;diffusealpha,0;sleep,0;sleep,.8;diffusealpha,1);
	};
	LoadActor("cleared")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-19;diffusealpha,0;rotationz,-350.5;sleep,0;accelerate,.316;rotationz,0;diffusealpha,1;accelerate,.05;zoom,1.6;decelerate,.083;zoom,.95;decelerate,.016;zoom,1);
	};
};

if sPlayMode == 'PlayMode_Battle' or sPlayMode == 'PlayMode_Rave' then
	t[#t+1] = Def.ActorFrame {
		StartTransitioningCommand=function(self)
			SOUND:PlayAnnouncer("gameplay battle out");
		end;
	};
end;

return t;