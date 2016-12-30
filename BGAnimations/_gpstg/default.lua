local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) c = self:GetChildren(); end;

	Def.Sprite{
		Name="STitle";
		InitCommand=cmd(addy,1);
	};

	LoadFont("_gpstage")..{
		Name="SNumber";
		InitCommand=cmd(addy,1;addx,-5;horizalign,right);
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
		c.STitle:LoadBackground(THEME:GetPathB("", "_gpstg/"..shw_stage));
	else
		if ordinal ~= "" then
			c.SNumber:settext(cur_stage);
			c.STitle:LoadBackground(THEME:GetPathB("", "_gpstg/st_"..ordinal));
		else
			c.STitle:LoadBackground(THEME:GetPathB("", "_gpstg/none"));
		end
	end;

	end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};

-- --Version 1
-- local max_stages = PREFSMAN:GetPreference("SongsPerPlay");
-- local cur_stage = GAMESTATE:GetCurrentStageIndex() +1;
-- local shw_stage = "";
-- local ordinal ="";

-- --Checking Final stages
-- if cur_stage == max_stages then
-- 	shw_stage = "st_final";
-- elseif cur_stage == (max_stages+1) then
-- 	shw_stage = "st_extra";
-- elseif cur_stage == (max_stages+2) then
-- 	shw_stage = "st_encore";
-- else

-- 	--Ordinary stages
-- 	ordinal = "th";

-- 	--Define stage suffix
-- 	if cur_stage == 1 then
-- 		ordinal = "st";
-- 	elseif cur_stage == 2 then
-- 		ordinal = "nd";
-- 	elseif cur_stage == 3 then
-- 		ordinal = "rd";
-- 	end

-- end

-- --Loading the stage
-- if shw_stage ~= "" then
-- 	t[#t+1] = LoadActor(shw_stage)..{
-- 		InitCommand=cmd(addy,1);
-- 	};
-- else
-- 	if ordinal ~= "" then
-- 		t[#t+1] = LoadFont("_gpstage")..{
-- 			InitCommand=cmd(addy,1;addx,-5);
-- 			CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
-- 			RefreshCommand=function(self)
-- 				self:settext( cur_stage );
-- 				self:horizalign(right);
-- 				self:playcommand( "On" );
-- 				--self:maxwidth(220);
-- 			end;
-- 		};
-- 		t[#t+1] = LoadActor("st_"..ordinal)..{
-- 			InitCommand=cmd(addx,8);
-- 		};
-- 	else
-- 		t[#t+1] = LoadActor("none")..{
-- 			InitCommand=cmd(addy,1);
-- 		};
-- 	end
-- end

return t;