return Def.ActorFrame{
	LoadActor(THEME:GetPathG("","CourseDiffList/Normal_Dis"));
	LoadActor(THEME:GetPathG("","CourseDiffList/Diff_Dis"))..{
		InitCommand=cmd(y,36);
	};

	-- SetCommand=function(self, param)
	-- 	local label = self:GetChild('DiffLbl');
	-- 	local song = "";
	-- 	local step;
	-- 	local meter;
	-- 	local cdiff = param.CustomDifficulty;
	-- 	self:stoptweening();
	-- 	label:visible(false);
	-- 	if cdiff then
	-- 		step = param.Steps;
	-- 		meter = param.Meter;
	-- 		label:Load(THEME:GetPathG("","StepsDisplayListRow frame/En/"..cdiff));
	-- 		dname:visible(true);
	-- 		dname:settext(CustomDifficultyToState[cdiff]);

	-- 		if getenv("wheelstop") == 1 then
	-- 			song = GAMESTATE:GetCurrentSong();
	-- 			if GetAdhocPref("UserMeterType") == "CSStyle" then
	-- 				if song then
	-- 					if cdiff ~= "Edit" then
	-- 						meter = GetConvertDifficulty(song,"Difficulty_"..cdiff);
	-- 					else
	-- 						meter = GetConvertDifficulty(song,"Difficulty_Edit",step);
	-- 					end;
	-- 				else
	-- 					meter = "";
	-- 				end;
	-- 			end;
	-- 		else
	-- 			song = "";
	-- 		end;
	-- 		if meter then
	-- 			tmeter:visible(true);
	-- 			tmeter:settextf("%d",meter);
	-- 		end;
	-- 	end;
	-- end;
};