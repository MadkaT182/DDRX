-- function MakeBitmapText()
-- 	return LoadFont("StageID") .. {
-- 		InitCommand=cmd(zoom,0.55;diffusetopedge,color("0.6,0.08,0.07,1");diffusebottomedge,color("0,0,0,1");strokecolor,color("1,1,1,1"));
-- 		};
-- end

local t = Def.ActorFrame {
	BeginCommand=cmd(playcommand,"Set";);
	CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set";);
	MakeBitmapText()..{
		SetCommand=function(self)
			local curStage = GAMESTATE:GetCurrentStage();
			local curStageNum = GAMESTATE:GetCurrentStageIndex(); -- 0-based
			local maxStages = PREFSMAN:GetPreference("SongsPerPlay")

			local song = GAMESTATE:GetCurrentSong()
				local songStages = 1;
				if song:IsLong() then songStages = 2
				elseif song:IsMarathon() then
					songStages = 3
				end
				local totalStages = curStageNum+songStages

				if totalStages == maxStages then
					curStage = 'Stage_Final'
				end
				if GAMESTATE:IsEventMode() then
					self:settext( "EVENT MODE" )
				else
					self:settext( StageToLocalizedString(curStage).." STAGE" )
				end
		end
	};
};

return t;
