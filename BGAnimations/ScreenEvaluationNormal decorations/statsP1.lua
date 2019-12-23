local t = Def.ActorFrame {};

local Space = '    ';
local Combo = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):MaxCombo(), -4);

local Marvelous = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W1"), -4);
local Perfect = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W2"), -4);
local Great = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W3"), -4);
local Good = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W4"), -4);
local Almost = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W5"), -4);
local Ok = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetHoldNoteScores("HoldNoteScore_Held"), -4);
local Ng = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetHoldNoteScores("HoldNoteScore_LetGo"), -4);
local Boo = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_Miss"), -4);

--Marvelous--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-227;horizalign,right);
	OnCommand=function(self)
		self:settextf(Marvelous);
	end;
};
--Perfect--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-208;horizalign,right);
	OnCommand=function(self)
		self:settextf(Perfect);
	end;
};
--Great--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-189;horizalign,right);
	OnCommand=function(self)
		self:settextf(Great);
	end;
};
--Good--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-170;horizalign,right);
	OnCommand=function(self)
		self:settextf(Good);
	end;
};
--Almost--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-151;horizalign,right);
	OnCommand=function(self)
		self:settextf(Almost);
	end;
};
--Boo--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-132;horizalign,right);
	OnCommand=function(self)
		self:settextf(Boo);
	end;
};
--Ok--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-113;horizalign,right);
	OnCommand=function(self)
		self:settextf(Ok);
	end;
};
--Ng--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-94;horizalign,right);
	OnCommand=function(self)
		self:settextf(Ng);
	end;
};
--Max Combo--
t[#t+1] = LoadFont("ScreenEvaluation judge")..{
	InitCommand=cmd(y,SCREEN_CENTER_Y-75;horizalign,right);
	OnCommand=function(self)
		self:settextf(Combo);
	end;
};

return t;
