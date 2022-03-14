local t = Def.ActorFrame {};

t[#t+1] = LoadActor("announcer")..{};

t[#t+1] = LoadActor("../_stageFrame")..{
	OnCommand=cmd(y,SCREEN_TOP+24);
};

t[#t+1] = LoadActor(THEME:GetPathG("","Lifebar"))..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+24;draworder,2);
};

t[#t+1] = LoadActor("../_songinfo")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-42;draworder,1);
};

t[#t+1] = LoadActor(THEME:GetPathG("ScreenGameplay","ScoreFrame"))..{
	OnCommand=cmd(y,SCREEN_BOTTOM-37;draworder,2);
};

if GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle' then
	t[#t+1] = LoadActor(THEME:GetPathG("","SuperMeter"))..{
		OnCommand=cmd(y,SCREEN_TOP+37;draworder,2);
	};
end

t[#t+1] = LoadActor("score")..{
    OnCommand=cmd(y,THEME:GetMetric("ScreenGameplay","ScoreP1Y");draworder,2);
    Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Oni'
};

--Edit description
if not GAMESTATE:IsCourseMode() then
    t[#t+1] = LoadActor("edit")..{
        OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-73;draworder,2);
    };
end

--Option icons
if not GAMESTATE:IsDemonstration() then
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		t[#t+1] = LoadActor( "../OptionIcons", player )..{
			InitCommand=function(self)
				self:x(player == PLAYER_1 and SCREEN_LEFT+102 or SCREEN_RIGHT-84)
					:y(SCREEN_CENTER_Y+169)
					:draworder(1)
			end
		};
	end
end

t[#t+1] = Def.Actor{
    Name="ScoringController",
    JudgmentMessageCommand = function(_,params)
        if not (( ScoringInfo[params.Player]) and
            (ScoringInfo.seed == GAMESTATE:GetStageSeed())) then
            SN2Scoring.PrepareScoringInfo()
            ScoringInfo.seed = GAMESTATE:GetStageSeed()
        end
        local stage = GAMESTATE:IsCourseMode() and GAMESTATE:GetCourseSongIndex() + 1 or nil
        local info = ScoringInfo[params.Player]
        if params.HoldNoteScore then
            info.AddHoldScore(params.HoldNoteScore, stage)
        else
            info.AddTapScore(params.TapNoteScore, stage)
        end
        local pss = STATSMAN:GetCurStageStats():GetPlayerStageStats(params.Player)
        pss:SetScore(info.GetCurrentScore())
        pss:SetCurMaxScore(info.GetCurrentMaxScore())
        local es = (GAMESTATE:Env()).EndlessState
        if es then
            es.scoring.handleNoteScore(params.HoldNoteScore or params.TapNoteScore,
                GAMESTATE:GetCurrentStageIndex()+1,
                pss:GetCurrentCombo())
        end
    end,
}

return t;