local t = Def.ActorFrame{
};

t[#t+1] = Def.Actor {
	OnCommand=cmd(sleep,3.5;queuecommand,'Play');
	PlayCommand=function(self)
		local maxStages = PREFSMAN:GetPreference("SongsPerPlay");

		if not GAMESTATE:IsEventMode() and not GAMESTATE:IsCourseMode() then
			local curStage = GAMESTATE:GetCurrentStageIndex()+1;
			local text = curStage;

			if curStage == (maxStages+2) then
				text = "extra2";
			elseif curStage == (maxStages+1) then
				text = "extra1";
			elseif curStage == maxStages then
				text = "final";
			end

			SOUND:PlayAnnouncer( "stage " .. text )
		end
	end;
};

return t