function LoadSteps(self,player)
	local difficultyStates = {
		Difficulty_Beginner	 = 0,
		Difficulty_Easy		 = 1,
		Difficulty_Medium	 = 2,
		Difficulty_Hard		 = 3,
		Difficulty_Challenge = 4,
		Difficulty_Edit		 = 5,
	};
	local selection = GAMESTATE:GetCurrentSteps(player);
	local diff = selection:GetDifficulty();
	local state = difficultyStates[diff] or 5;
	return state;
end;

local t = Def.ActorFrame{};

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
t[#t+1] = Def.ActorFrame{
	OffCommand=function(self)
		self:linear(.28);
		self:x(player == PLAYER_1 and -SCREEN_WIDTH/2 or SCREEN_WIDTH/2);
	end;
	LoadActor("ScoreandDifficultyFrame")..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and -229 or 229);
			self:y(12);
			self:rotationy(player == PLAYER_1 and 0 or 180);
		end;
	};
	LoadActor(THEME:GetPathG("","diff_icons"))..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and -248 or 248);
			self:pause();
			self:setstate(LoadSteps(self,player));
		end;
	};
	Def.RollingNumbers{
		File = THEME:GetPathF("ScreenEvaluation", "ScoreNumber");
		InitCommand=cmd(y,21;player,player;horizalign,right;playcommand,"Set");
		SetCommand=function(self)
			self:x(player == PLAYER_1 and -228 or 228);
			self:Load("RollingNumbersEvaluation");
			self:horizalign(center);
			self:targetnumber(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetScore());
		end;
	};
};
end

return t;