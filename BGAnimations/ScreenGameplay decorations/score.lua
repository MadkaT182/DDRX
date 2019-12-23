local t = Def.ActorFrame {
    LoadFont("_sys_desc")..{
        Name="TimeAlive";
        InitCommand=cmd(x,SCREEN_CENTER_X;y,-36);
    };
};
local function GetScore(pn)
    return STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetScore()
end;
local function Update(self)
    self:GetChild("TimeAlive"):settext(SecondsToMMSSMsMs(STATSMAN:GetCurStageStats():GetGameplaySeconds()));
end;

t[#t+1] = Def.ActorFrame{
    Def.RollingNumbers{
        File = THEME:GetPathF("ScoreDisplayNormal", "Text");
        InitCommand=cmd(player,PLAYER_1;x,THEME:GetMetric("ScreenGameplay","ScoreP1X"));
        OnCommand=cmd(zoomx,IsUsingWideScreen and 1.25 or 1);
        ScoreChangedMessageCommand=function(self,params)
            self:Load("RollingNumbersScore");
            self:targetnumber(GetScore(PLAYER_1));
        end;
    };
    Def.RollingNumbers{
        File = THEME:GetPathF("ScoreDisplayNormal", "Text");
        InitCommand=cmd(player,PLAYER_2;x,THEME:GetMetric("ScreenGameplay","ScoreP2X"));
        OnCommand=cmd(zoomx,IsUsingWideScreen and 1.25 or 1);
        ScoreChangedMessageCommand=function(self,params)
            self:Load("RollingNumbersScore");
            self:targetnumber(GetScore(PLAYER_2));
        end;
    };
};

t.InitCommand=cmd(SetUpdateFunction,Update);

return t;