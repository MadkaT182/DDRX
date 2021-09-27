local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

	LoadActor("../door1")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,-SCREEN_WIDTH/2;sleep,0.000;linear,0.2;addx,SCREEN_WIDTH/2);
	};

	LoadActor("../door2")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH/2;sleep,0.000;linear,0.2;addx,-SCREEN_WIDTH/2);
	};

};

t[#t+1] = Def.ActorFrame {

	LoadActor("../_cds")..{
		Condition=not GAMESTATE:IsCourseMode()
	};
	LoadActor( "../CommonScreen/sides" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-158;y,SCREEN_CENTER_Y-110;);
	};
	LoadActor("../CommonScreen/sides")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+158;y,SCREEN_CENTER_Y-110;zoomx,-1);
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-133;zoomy,0;diffusealpha,0.8;sleep,0.000;sleep,0.816;decelerate,0.15;zoomy,1;diffusealpha,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
		LoadActor("../banner frame");
		Def.Sprite {
			BeginCommand=cmd(LoadFromCurrentSongBanner);
			OnCommand=cmd(scaletoclipped,256,80);
		};
	};

	-- LoadActor("songbanner")..{
	-- OnCommand=cmd(scaletoclipped,256,80;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-133;zoomy,0;diffusealpha,0.8;sleep,0.000;sleep,0.816;decelerate,0.15;zoomy,1;diffusealpha,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
	-- Condition= not iscoursemode()
	-- };

	-- LoadActor("coursebanner")..{
	-- OnCommand=cmd(scaletoclipped,256,80;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-133;zoomy,0;diffusealpha,0.8;sleep,0.000;sleep,0.816;decelerate,0.15;zoomy,1;diffusealpha,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
	-- Condition= iscoursemode()
	-- };

	LoadActor("../_playmode")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-107;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;diffusealpha,0.8;addy,-43;sleep,0.000;sleep,0.816;decelerate,0.15;zoomy,1;diffusealpha,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	};
	-- Def.ActorFrame{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	LoadActor("../CommonScreen/stageframe");
	-- 	LoadActor("StageDisplay");
	-- };
		
	LoadActor("../CommonScreen/stageframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	};

	LoadActor("../CommonScreen/s01")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-181;y,SCREEN_CENTER_Y-13;diffusealpha,0;sleep,0.000;sleep,1.966;diffusealpha,1);
	};
	LoadActor("../CommonScreen/s02")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+179;y,SCREEN_CENTER_Y+2;diffusealpha,0;sleep,0.000;sleep,2.016;diffusealpha,1);
	};

	LoadActor("StageDisplay")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	};

	-- LoadActor("../CommonScreen/1")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 0 or stageindex() == 20 or stageindex() == 30 or stageindex() == 40 or stageindex() == 50 or stageindex() == 60 or stageindex() == 70 or stageindex() == 80
	-- };

	-- LoadActor("../CommonScreen/2")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 1 or stageindex() == 21 or stageindex() == 31 or stageindex() == 41 or stageindex() == 51 or stageindex() == 61 or stageindex() == 71 or stageindex() == 81
	-- };

	-- LoadActor("../CommonScreen/3")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 2 or stageindex() == 22 or stageindex() == 32 or stageindex() == 42 or stageindex() == 52 or stageindex() == 62 or stageindex() == 72 or stageindex() == 82
	-- };

	-- LoadActor("../CommonScreen/4")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 3 or stageindex() == 13 or stageindex() == 23 or stageindex() == 33 or stageindex() == 43 or stageindex() == 53 or stageindex() == 63 or stageindex() == 73 or stageindex() == 83
	-- };

	-- LoadActor("../CommonScreen/5")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 4 or stageindex() == 14 or stageindex() == 24 or stageindex() == 34 or stageindex() == 44 or stageindex() == 54 or stageindex() == 64 or stageindex() == 74 or stageindex() == 84
	-- };

	-- LoadActor("../CommonScreen/6")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 5 or stageindex() == 15 or stageindex() == 25 or stageindex() == 35 or stageindex() == 45 or stageindex() == 55 or stageindex() == 65 or stageindex() == 75 or stageindex() == 85
	-- };

	-- LoadActor("../CommonScreen/7")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 6 or stageindex() == 16 or stageindex() == 26 or stageindex() == 36 or stageindex() == 46 or stageindex() == 56 or stageindex() == 66 or stageindex() == 76 or stageindex() == 86
	-- };

	-- LoadActor("../CommonScreen/8")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 7 or stageindex() == 17 or stageindex() == 27 or stageindex() == 37 or stageindex() == 47 or stageindex() == 57 or stageindex() == 67 or stageindex() == 77 or stageindex() == 87
	-- };

	-- LoadActor("../CommonScreen/9")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 8 or stageindex() == 18 or stageindex() == 28 or stageindex() == 38 or stageindex() == 48 or stageindex() == 58 or stageindex() == 68 or stageindex() == 78 or stageindex() == 88
	-- };

	-- LoadActor("../CommonScreen/0")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 9 or stageindex() == 19 or stageindex() == 29 or stageindex() == 39 or stageindex() == 49 or stageindex() == 59 or stageindex() == 69 or stageindex() == 79 or stageindex() == 89
	-- };

	-- LoadActor("../CommonScreen/stage")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 99
	-- };

	-- LoadActor("../CommonScreen/final")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2()
	-- };

	-- LoadActor("../CommonScreen/extra1")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and GAMESTATE:IsExtraStage()
	-- };

	-- LoadActor("../CommonScreen/extra2")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and GAMESTATE:IsExtraStage2()
	-- };

	-- LoadActor("../CommonScreen/1")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni'
	-- };

	-- LoadActor("../CommonScreen/n1")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 8 and stageindex() < 19
	-- };

	-- LoadActor("../CommonScreen/n2")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 18 and stageindex() < 29
	-- };

	-- LoadActor("../CommonScreen/n3")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 28 and stageindex() < 39
	-- };

	-- LoadActor("../CommonScreen/n4")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 38 and stageindex() < 49
	-- };

	-- LoadActor("../CommonScreen/n5")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 48 and stageindex() < 59
	-- };

	-- LoadActor("../CommonScreen/n6")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 58 and stageindex() < 69
	-- };

	-- LoadActor("../CommonScreen/n7")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 68 and stageindex() < 79
	-- };

	-- LoadActor("../CommonScreen/n8")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 78 and stageindex() < 89
	-- };

	-- LoadActor("../CommonScreen/n9")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() > 88 and stageindex() < 99
	-- };

	-- LoadActor("../CommonScreen/100")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 99
	-- };

	-- LoadActor("../CommonScreen/1a")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 10
	-- };

	-- LoadActor("../CommonScreen/2a")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 11
	-- };

	-- LoadActor("../CommonScreen/3a")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= not iscoursemode() and not isfinalstage() and not GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2() and stageindex() == 12
	-- };

	-- LoadActor("../CommonScreen/endless")..{
	-- OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-20;diffusealpha,0;sleep,0.000;sleep,1.516;accelerate,0.3;rotationz,349.5;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- Condition= GAMESTATE:GetPlayMode() == 'PlayMode_Endless'
	-- };

	LoadActor("../_header/centered");
	LoadActor("../_footer");
	LoadActor("../_titles/sel_song")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-15;y,SCREEN_CENTER_Y-203;rotationz,-4;diffusealpha,0;zoom,1;addy,-12;sleep,0.000;sleep,0.283;decelerate,0.066;diffusealpha,1;addy,12;linear,0.016;zoom,1.083;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
	};
	LoadActor("SoundStage");
};

if GAMESTATE:GetPlayMode() == 'PlayMode_Oni' then
	SetOniOptions();
end

--Option icons
if not GAMESTATE:IsDemonstration() then
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do

		t[#t+1] = LoadActor( "../OptionIcons", player )..{
			InitCommand=function(self)
				self:x(player == PLAYER_1 and SCREEN_LEFT+108 or SCREEN_RIGHT-84)
					:y(_screen.cy+165)
					:draworder(1)
			end
		}
	end
end

return t;