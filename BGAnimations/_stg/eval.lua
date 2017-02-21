local t = Def.ActorFrame{};
local cur_stage= GAMESTATE:GetCurrentStage();
local Stage = GAMESTATE:GetCurrentStageIndex();

if cur_stage == "Stage_Final" or cur_stage == "Stage_Extra1" or cur_stage == "Stage_Extra2" then
	t[#t+1] = Def.ActorFrame {
		LoadActor(cur_stage)..{};
	};
else
	t[#t+1] = Def.ActorFrame {
	LoadActor("Stage_"..Stage)..{};
	};
end

return t;