return Def.ActorFrame {
	LoadActor("command/command_bg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+210;y,SCREEN_CENTER_Y+233;addx,271;sleep,0.033;decelerate,0.233;addx,-271);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;diffusealpha,0);
	};
	LoadActor("command/confirm2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+255;y,SCREEN_CENTER_Y+198;diffuseblink;effectcolor1,0,0,0,0;effectcolor2,1,1,1,1;effectperiod,2;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Regular' or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle'
	};
	LoadActor("command/select1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+143;y,SCREEN_CENTER_Y+198;diffuseblink;effectcolor1,0,0,0,0;effectcolor2,1,1,1,1;effectperiod,2;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Regular' or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle'
	};
	LoadActor("command/difficulty")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+176;y,SCREEN_CENTER_Y+215;diffuseblink;effectcolor1,0,0,0,0;effectcolor2,1,1,1,1;effectperiod,2;addx,271;sleep,0.033;sleep,0.05;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Regular' or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle'
	};
	LoadActor("command/select2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+171;y,SCREEN_CENTER_Y+198;diffuseblink;effectcolor1,1,1,1,1;effectcolor2,0,0,0,0;effectperiod,2;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Regular' or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle'
	};
	LoadActor("command/select0")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+143;y,SCREEN_CENTER_Y+198;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni'
	};
	LoadActor("command/difficulty")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+176;y,SCREEN_CENTER_Y+215;addx,271;sleep,0.033;sleep,0.05;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni'
	};
	LoadActor("command/confirm2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+255;y,SCREEN_CENTER_Y+198;addx,271;sleep,0.033;decelerate,0.283;addx,-271;linear,0.033;zoomx,1.086;linear,0.033;zoomx,1);
		OffCommand=cmd(linear,0.4;addx,236;linear,0;addy,999);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni'
	};
}