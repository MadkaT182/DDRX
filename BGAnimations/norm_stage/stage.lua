local stages = Def.ActorFrame {
};

for _, s in ipairs(Stage) do
	if PREFSMAN:GetPreference("SongsPerPlay") == GAMESTATE:GetCurrentStageIndex()+1 then
		stages[#stages+1] = LoadActor("st_Stage_Final") .. {
			SetCommand=function(self, params)
				self:visible( GAMESTATE:GetCurrentStage() == "Stage_Final" );
			end;
		}
	else
		stages[#stages+1] = LoadActor("st_" .. s) .. {
			SetCommand=function(self, params)
				self:visible( params.StageToShow == s );
			end;
		}
	end
end

return stages;
