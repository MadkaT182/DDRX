local thisScreen = Var "LoadingScreen"

local StageToFile = {
	Stage_1st		= "_1st",
	Stage_2nd		= "_2nd",
	Stage_3rd		= "_3rd",
	Stage_4th		= "_4th",
	Stage_5th		= "_5th",
	Stage_6th		= "_6th",
	Stage_Next		= "_event",
	Stage_Final		= "_final",
	Stage_Event		= "_event",
	Stage_Demo		= "_demo",
	Stage_Extra1	= "_extra1 normal",
	Stage_Extra2	= "_extra2 normal",

	Stage_Nonstop	= nil,
	Stage_Oni		= nil,
	Stage_Endless	= nil
}
local function stagePath(s)	return THEME:GetPathG("ScreenSelectMusic","StageDisplay/"..s) end

local s = Def.ActorFrame{
	Def.Sprite{
		BeginCommand=cmd(playcommand,"Set";);
		CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set";);
		SetCommand=function(self)
			if GAMESTATE:IsDemonstration() then
				self:Load(stagePath("_demo"))
			elseif GAMESTATE:IsEventMode() then
				self:Load(stagePath("_event"))
			else
				local curStage = GAMESTATE:GetCurrentStage()
				local curStageNum = GAMESTATE:GetCurrentStageIndex()
				local maxStages = PREFSMAN:GetPreference("SongsPerPlay")
				print(string.format("curStage %s | stageNum+1=%d | maxStage %d",curStage,curStageNum+1,maxStages))

				-- if string.find(thisScreen:GetName(),"Evaluation") then
				-- 	local stageStats = STATSMAN:GetPlayedStageStats(1)
				-- 	self:Load(stagePath(StageToFile[stageStats:GetStage()]))
				-- 	return
				-- end

				local song = GAMESTATE:GetCurrentSong()
				if song then
					local songStages = 1;
					if song:IsLong() then songStages = 2
					elseif song:IsMarathon() then songStages = 3
					end

					local totalStages = curStageNum+songStages
					if totalStages == maxStages then
						self:Load( stagePath(StageToFile['Stage_Final']) )
					elseif StageToFile[curStage] then
						if GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
							if thisScreen == "ScreenSelectMusic" then
								if GAMESTATE:IsExtraStage() then
									self:Load(stagePath("_extra1"))
								elseif GAMESTATE:IsExtraStage2() then
									self:Load(stagePath("_extra2"))
								end
							else
								self:Load(stagePath(StageToFile[curStage]))
							end
						else
							self:Load(stagePath(StageToFile[curStage]))
						end
					end
				else
					if curStageNum+1 == maxStages then
						self:Load(stagePath(StageToFile['Stage_Final']))
					elseif StageToFile[curStage] then
						self:Load(stagePath(StageToFile[curStage]))
					end
				end
			end
		end
	};
};

return s;
