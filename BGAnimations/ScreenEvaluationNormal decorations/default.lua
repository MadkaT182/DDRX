local t = Def.ActorFrame {};
SelSong();

t[#t+1] = Def.ActorFrame {
	LoadActor("../_header/centered")..{};
	LoadActor("../_footer")..{};
};

t[#t+1] = Def.ActorFrame {
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+26;zoomy,0;linear,.2;zoomy,1);
		OffCommand=cmd(sleep,.016;linear,.3;zoomy,0);
		LoadActor("judgmentBG");
		LoadActor("JudgeRows");
	};
	LoadActor("RaveDec")..{};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-133;zoomy,0;linear,.36;zoomy,1);
		OffCommand=cmd(sleep,.32;linear,.08;zoomy,0);
		LoadActor("../CommonScreen/sides")..{
			OnCommand=cmd(x,-158;y,23;);
			OffCommand=cmd(accelerate,0.233;addx,-20;sleep,0;diffusealpha,0);
		};
		LoadActor("../CommonScreen/sides")..{
			OnCommand=cmd(x,158;y,23;zoomx,-1);
			OffCommand=cmd(accelerate,0.233;addx,-20;sleep,0;diffusealpha,0);
		};
		LoadActor("../banner frame")..{
			OnCommand=cmd(zoomy,0;sleep,0.333;decelerate,0.133;zoomy,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
		};
		LoadActor("banner")..{
			OnCommand=cmd(y,0);
		};
		LoadActor("../_playmode")..{
			OnCommand=cmd(x,-107;y,43;vertalign,top;zoomy,0;diffusealpha,0.8;addy,-43;sleep,0.000;sleep,0.333;decelerate,0.133;zoomy,1;diffusealpha,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
		};
		LoadActor("../eval_stage")..{
			OnCommand=cmd(x,22;y,54);
			Condition= not GAMESTATE:IsCourseMode();
		};
	};
	LoadActor("CourseDec")..{};
	LoadActor("p1_ind")..{
		OnCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-234;y,SCREEN_CENTER_Y-47;zoomy,0;diffusealpha,0;sleep,0.24;linear,0.12;zoomy,1;diffusealpha,1);
		OffCommand=cmd(zoomy,1;sleep,0.0000;sleep,0.016;linear,0.1;zoomy,0);
	};
	LoadActor("p2_ind")..{
		OnCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-47;zoomy,0;diffusealpha,0;sleep,0.24;linear,0.12;zoomy,1;diffusealpha,1);
		OffCommand=cmd(zoomy,1;sleep,0.0000;sleep,0.016;linear,0.1;zoomy,0);
	};
	LoadActor("../_titles/result")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-15;y,SCREEN_CENTER_Y-203;rotationz,-4;diffusealpha,0;zoom,1;addy,-12;sleep,0.000;sleep,0.283;decelerate,0.066;diffusealpha,1;addy,12;linear,0.016;zoom,1.083;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
	};
	LoadActor("NewRecDec");
};

--Extra siren
t[#t+1] = Def.ActorFrame {
	Condition=GAMESTATE:HasEarnedExtraStage();
	LoadActor("Siren")..{
		OnCommand=cmd(play);
	};
}

--Score sound
if GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' then
local ScoreP1 = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
local ScoreP2 = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();

	if ScoreP1 + ScoreP2 >=1 then
		t[#t+1] = Def.ActorFrame {
			LoadActor("bgmscore")..{
				OnCommand=cmd(play);
			};
		}
	end
end

--Difficulty and scores
t[#t+1] = Def.ActorFrame {
	LoadActor("diff")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+119);
	};
};

if GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' then
	--Letter Grade
	t[#t+1] = LoadActor("grade")..{
		InitCommand=cmd(diffusealpha,1;draworder,11;y,-80);
		OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
	};
end

--Stats
t[#t+1] = Def.ActorFrame {
	LoadActor("statsP1")..{
		OnCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-72;y,SCREEN_CENTER_Y-64;diffusealpha,0;sleep,.24;diffusealpha,1);
		OffCommand=cmd(sleep,.04;diffusealpha,0);
	};
	LoadActor("statsP2")..{
		OnCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+131;y,SCREEN_CENTER_Y-64;diffusealpha,0;sleep,.24;diffusealpha,1);
		OffCommand=cmd(sleep,.04;diffusealpha,0);
	};
};

--Option icons
for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = LoadActor("../OptionIcons", player )..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and SCREEN_LEFT+102 or SCREEN_RIGHT-84)
				:y(SCREEN_CENTER_Y+169)
				:draworder(1)
		end;
	};
end

return t;