local t = Def.ActorFrame {

	LoadActor( "../_header/centered" )..{};

	LoadActor( "../_footer" )..{};

	LoadActor( "judgmentBG" )..{
		InitCommand=function (self)
			SelSong();
		end;
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+26;zoomy,0;sleep,0.000;linear,0.2;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0);
	};

	LoadActor( "JudgeRows" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+25;zoomy,0;sleep,0.000;linear,0.2;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0);
	};

	--Load Rave Decorations
	LoadActor( "RaveDec" )..{};

	--Load Course Decorations
	LoadActor( "CourseDec" )..{};

	LoadActor( "../CommonScreen/sides" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-158;y,SCREEN_CENTER_Y-110;);
		OffCommand=cmd(accelerate,0.233;addx,-20;sleep,0;diffusealpha,0);
	};

	LoadActor( "../CommonScreen/sides" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+158;y,SCREEN_CENTER_Y-110;zoomx,-1);
		OffCommand=cmd(accelerate,0.233;addx,-20;sleep,0;diffusealpha,0);
	};

	LoadActor( "../banner frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-133;zoomy,0;sleep,0.000;sleep,0.333;decelerate,0.133;zoomy,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.333;decelerate,0.066;zoomx,1.05;zoomy,0);
	};

	LoadActor( "../_playmode" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-107;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;diffusealpha,0.8;addy,-43;sleep,0.000;sleep,0.333;decelerate,0.133;zoomy,1;diffusealpha,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
		OffCommand=cmd(sleep,0.333;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	};

	LoadActor( "../_stg/eval" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_CENTER_Y-80);
		Condition= not GAMESTATE:IsCourseMode();
	};

	LoadActor( "p1.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-234;y,SCREEN_CENTER_Y-47;zoomy,0;sleep,0.000;sleep,0.216;linear,0.1;zoomy,1);
		OffCommand=cmd(zoomy,1;sleep,0.0000;sleep,0.016;linear,0.1;zoomy,0);
		Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:IsHumanPlayer(PLAYER_1);
	};

	LoadActor( "p2.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y-47;zoomy,0;sleep,0.000;sleep,0.216;linear,0.1;zoomy,1);
		OffCommand=cmd(zoomy,1;sleep,0.0000;sleep,0.016;linear,0.1;zoomy,0);
		Condition=GAMESTATE:IsPlayerEnabled(PLAYER_2) and GAMESTATE:IsHumanPlayer(PLAYER_2);
	};

	LoadActor( "../_titles/result" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-15;y,SCREEN_CENTER_Y-203;rotationz,-4;diffusealpha,0;zoom,1;addy,-12;sleep,0.000;sleep,0.283;decelerate,0.066;diffusealpha,1;addy,12;linear,0.016;zoom,1.083;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.1;addy,-14;diffusealpha,0);
	};

	--New Record Decorations
	LoadActor( "NewRecDec" )..{};

};

--Extra siren
t[#t+1] = Def.ActorFrame {
	Condition=GAMESTATE:HasEarnedExtraStage();
	LoadActor( "Siren" )..{
		OnCommand=cmd(play);
	};
}

--Score sound
if GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' then
local ScoreP1 = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
local ScoreP2 = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();

	if ScoreP1 > 0 or ScoreP2 > 0 then
		t[#t+1] = Def.ActorFrame {
			LoadActor("bgmscore")..{
				OnCommand=cmd(play);
			};
		}
	end
end

--P1Score
if GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' then
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScoreandDifficultyFrame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_BOTTOM-105);
		OffCommand=cmd(diffusealpha,0);
	};
}

t[#t+1] = Def.RollingNumbers {
	File = THEME:GetPathF("ScreenEvaluation", "ScoreNumber");
	InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_BOTTOM-96;player,PLAYER_1;playcommand,"Set");
	SetCommand = function(self)
		local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
		self:diffuse(color("#FFFF0C"));
		self:Load("RollingNumbersEvaluation");
		self:horizalign(center);
		self:targetnumber(score);
	end;
	OffCommand=cmd(sleep,0.067;zoom,0);
};

end

--P2Score
if GAMESTATE:IsPlayerEnabled(PLAYER_2) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' then
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScoreandDifficultyFrame" )..{
		OnCommand=cmd(rotationy,180;x,SCREEN_CENTER_X+228;y,SCREEN_BOTTOM-105);
		OffCommand=cmd(diffusealpha,0);
	};
}

t[#t+1] = Def.RollingNumbers {
	File = THEME:GetPathF("ScreenEvaluation", "ScoreNumber");
	InitCommand=cmd(x,SCREEN_CENTER_X+228;y,SCREEN_BOTTOM-96;player,PLAYER_2;playcommand,"Set");
	SetCommand = function(self)
		local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
		self:diffuse(color("#FFFF0C"));
		self:Load("RollingNumbersEvaluation");
		self:horizalign(center);
		self:targetnumber(score);
	end;
	OffCommand=cmd(sleep,0.067;zoom,0);
};

end

if GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' then
	--Letter Grade
	t[#t+1] = LoadActor("grade")..{
		InitCommand=cmd(diffusealpha,1;draworder,11;addy,-15-10-40-15);
		OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
	};
end

--Banner
if GAMESTATE:IsCourseMode() then

	t[#t+1] = Def.ActorFrame {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+106);
		Def.Sprite {
		OnCommand = function (self)
			local course = GAMESTATE:GetCurrentCourse();
			if course:GetBannerPath() then
				self:Load(course:GetBannerPath())
				self:setsize(256,80);
			else
				self:Load(THEME:GetPathG("","Common fallback banner"));
			end;
		end;
		OffCommand=cmd(linear,0.2;zoomy,0);
	}
	};
else
	t[#t+1] = Def.Sprite {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+106);
		BeginCommand=cmd(LoadFromCurrentSongBanner);
		OnCommand=cmd(diffusealpha,0;scaletoclipped,256,80;linear,0.2;diffusealpha,1);
		OffCommand=cmd(linear,0.2;zoomy,0);
	};
end;

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	--Statsp1
	t[#t+1] = LoadActor("statsP1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-72;y,SCREEN_CENTER_Y-64)
	};
end

if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	--Statsp2
	t[#t+1] = LoadActor("statsP2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+131;y,SCREEN_CENTER_Y-64)
	};
end

--Option icons
for player in ivalues(GAMESTATE:GetHumanPlayers()) do

	t[#t+1] = LoadActor( "../OptionIcons", player )..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and SCREEN_LEFT+108 or SCREEN_RIGHT-84)
				:y(_screen.cy+165)
				:draworder(1)
		end
	}
end

return t;