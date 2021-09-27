local c;
return Def.ActorFrame{
	InitCommand=function(self) c = self:GetChildren(); end;
	Def.Sprite{
		Name="STitle";
		InitCommand=cmd(x,-87;y,4);
	};
	LoadFont("nfo_stg")..{
		Name="SNumber";
		InitCommand=cmd(x,-137;horizalign,right);
	};
	Def.Sprite{
		Name="SSuffix";
		InitCommand=cmd(x,83);
	};
	SetCommand=function(self)
		local max_stages = PREFSMAN:GetPreference("SongsPerPlay");
		local cur_stage = GAMESTATE:GetCurrentStageIndex() +1;
		local shw_stage = "";
		local ordinal = "";

		--Checking Final stages
		if cur_stage == max_stages then
			shw_stage = "st_final";
		elseif cur_stage == (max_stages+1) then
			shw_stage = "st_extra";
		elseif cur_stage == (max_stages+2) then
			shw_stage = "st_encore";
		else

			--Ordinary stages
			ordinal = "th";

			--Define stage suffix
			if cur_stage == 1 then
				ordinal = "st";
			elseif cur_stage == 2 then
				ordinal = "nd";
			elseif cur_stage == 3 then
				ordinal = "rd";
			end;

		end;

		--Loading the stage
		if shw_stage ~= "" then
			c.STitle:x(0);
			c.STitle:LoadBackground(THEME:GetPathB("", "_nfostg/"..shw_stage));
		else
			if ordinal ~= "" then
				c.SNumber:settext(cur_stage);
				c.STitle:LoadBackground(THEME:GetPathB("", "_nfostg/st_"..ordinal));
				c.SSuffix:LoadBackground(THEME:GetPathB("", "_nfostg/st_suffix"));
			else
				c.STitle:LoadBackground(THEME:GetPathB("", "_nfostg/none"));
			end
		end;

	end;
	OnCommand=cmd(playcommand,"Set");
}