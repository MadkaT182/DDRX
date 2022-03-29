return Def.ActorFrame{
	-- LoadActor("_black")..{
	-- 	OnCommand=cmd(diffusealpha,0;sleep,1.5;);
	-- };
	LoadActor("door1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;sleep,.033;linear,.267;addx,SCREEN_WIDTH/2);
	};
	LoadActor("door2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;sleep,.033;linear,.267;addx,-SCREEN_WIDTH/2);
	};
	Def.ActorFrame{
		OnCommand=cmd(linear,.066;diffusealpha,0);
		LoadActor("ScreenGameplay out/s01")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+188;y,SCREEN_CENTER_Y-115);
		};
		LoadActor("ScreenGameplay out/s02")..{
			OnCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+48);
		};
		LoadActor("ScreenGameplay out/s01")..{
			OnCommand=cmd(x,SCREEN_CENTER_X-104;y,SCREEN_CENTER_Y+109);
		};
		LoadActor("ScreenGameplay out/s03")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+96;y,SCREEN_CENTER_Y+22);
		};
		LoadActor("ScreenGameplay out/s04")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+20);
		};
		LoadActor("ScreenGameplay out/s05")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+134;y,SCREEN_CENTER_Y-102);
		};
	};
	LoadActor("ScreenGameplay out/cleared")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-19;sleep,.066;linear,.066;zoomx,.90;linear,.05;zoomy,0;zoomx,1;diffusealpha,0);
		Condition=not STATSMAN:GetCurStageStats():AllFailed()
	};
	LoadActor("ScreenGameplay failed/failed")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-59;vertalign,top;linear,.2;addy,30;diffusealpha,0);
		Condition=STATSMAN:GetCurStageStats():AllFailed()
	};
};