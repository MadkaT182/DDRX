-- local curScreen = Var "LoadingScreen";
-- local curStageIndex = GAMESTATE:GetCurrentStageIndex() + 1;
-- local playMode = GAMESTATE:GetPlayMode();

-- local t = Def.ActorFrame {
-- 	LoadFont("Common Normal") .. {
-- 		InitCommand=cmd(y,-1;shadowlength,1;playcommand,"Set");
-- 		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
-- 		CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
-- 		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
-- 		CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
-- 		CurrentTraiP1ChangedMessageCommand=cmd(playcommand,"Set");
-- 		CurrentTraiP2ChangedMessageCommand=cmd(playcommand,"Set");
-- 		SetCommand=function(self)
-- 			local curStage = GAMESTATE:GetCurrentStage();
-- 			if GAMESTATE:IsCourseMode() then
-- 				local stats = STATSMAN:GetCurStageStats()
-- 				if not stats then
-- 					return
-- 				end
-- 				local mpStats = stats:GetPlayerStageStats( GAMESTATE:GetMasterPlayerNumber() )
-- 				local songsPlayed = mpStats:GetSongsPassed() + 1
-- 				self:settextf("%i / %i", songsPlayed, GAMESTATE:GetCurrentCourse():GetEstimatedNumStages());
-- 			else
-- 				if GAMESTATE:IsEventMode() then
-- 					self:settextf("Stg %s", curStageIndex);
-- 				else
-- 					local thed_stage= thified_curstage_index(false)
-- 					if THEME:GetMetric(curScreen,"StageDisplayUseShortString") then
-- 						self:settextf(thed_stage)
-- 					else
-- 						self:settextf("%s Stg", thed_stage)
-- 					end
-- 				end
-- 			end;
-- 			self:zoom(0.675);
-- 		end;
-- 	};
-- };
-- return t

local t = Def.ActorFrame {};

if GAMESTATE:IsEventMode() or (GAMESTATE:GetPlayMode()=='PlayMode_Oni') or (GAMESTATE:GetPlayMode()=='PlayMode_Nonstop') then
	--SOUND:PlayAnnouncer("stage event")
elseif GAMESTATE:GetCurrentStage() == 'Stage_1st' then
	--SOUND:PlayAnnouncer("stage 1")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stage1.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_2nd' then
	--SOUND:PlayAnnouncer("stage 2")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stage2.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_3rd' and (PREFSMAN:GetPreference("SongsPerPlay") == 5 or PREFSMAN:GetPreference("SongsPerPlay") == 4) then
	--SOUND:PlayAnnouncer("stage 3")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stage3.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_4th' then
	--SOUND:PlayAnnouncer("stage 4")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stage4.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_5th' then
	--SOUND:PlayAnnouncer("stage 5")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stage5.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_6th' then
	--SOUND:PlayAnnouncer("stage 6")
		t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stage6.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' then
	--SOUND:PlayAnnouncer("stage final")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stagefinal.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:IsExtraStage() then
	--SOUND:PlayAnnouncer("stage extra1")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stageextra1.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
elseif GAMESTATE:IsExtraStage2() then
	--SOUND:PlayAnnouncer("stage extra2")
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay/stageextra2.png")..{
			OnCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP-4);
			OffCommand=cmd();
		}
	};
end;

return t