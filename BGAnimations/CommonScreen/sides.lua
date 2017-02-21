local t = Def.ActorFrame {};

	t[#t+1] = LoadActor("01")..{
		OnCommand=cmd(addx,11;addy,-15;diffusealpha,0;addx,20;sleep,0.000;sleep,0.533;diffusealpha,1;accelerate,0.133;addx,-23;decelerate,0.05;addx,3);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
	};

	t[#t+1] = Def.ActorFrame {
		OnCommand=cmd(addy,-130);

		LoadActor("c1")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-150;diffusealpha,0;addx,30;sleep,0.000;sleep,0.683;diffusealpha,1;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
		};

		LoadActor("c1")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-140;diffusealpha,0;addx,30;sleep,0.000;sleep,0.683;diffusealpha,1;sleep,0.133;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
		};

		LoadActor("c1")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-130;diffusealpha,0;addx,30;sleep,0.000;sleep,0.683;diffusealpha,1;sleep,0.266;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
		};

		LoadActor("c1")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-120;diffusealpha,0;addx,30;sleep,0.000;sleep,0.683;diffusealpha,1;sleep,0.399;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
		};

		LoadActor("c1")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-110;diffusealpha,0;addx,30;sleep,0.000;sleep,0.683;diffusealpha,1;sleep,0.532;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
		};

		LoadActor("c1")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-100;diffusealpha,0;addx,30;sleep,0.000;sleep,0.683;diffusealpha,1;sleep,0.665;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
		OffCommand=cmd(accelerate,0.233;addx,20;sleep,0;diffusealpha,0);
		};

	};

return t;