
local t = Def.ActorFrame{};

local CustomDifficultyToState = {
	Beginner	= "EASY",
	Easy		= "MED",
	Medium		= "HARD",
	Hard		= "PRO",
	Challenge	= "INSANE",
	Edit		= "ANOTHER",
};

t[#t+1] = Def.ActorFrame{

	Def.Sprite{
		Name = "DiffLbl";
		InitCommand=cmd(x,-50);
	};

	SetCommand=function(self, param)
		local label = self:GetChild('DiffLbl');
		local song = "";
		local step;
		local meter;
		local cdiff = param.CustomDifficulty;
		self:stoptweening();
		--label:visible(false);
		if cdiff then
			step = param.Steps;
			meter = param.Meter;
			label:Load(THEME:GetPathG("","StepsDisplayListRow frame/En/"..cdiff));
			-- dname:visible(true);
			-- dname:settext(CustomDifficultyToState[cdiff]);

			-- if getenv("wheelstop") == 1 then
			-- 	song = GAMESTATE:GetCurrentSong();
			-- 	if GetAdhocPref("UserMeterType") == "CSStyle" then
			-- 		if song then
			-- 			if cdiff ~= "Edit" then
			-- 				meter = GetConvertDifficulty(song,"Difficulty_"..cdiff);
			-- 			else
			-- 				meter = GetConvertDifficulty(song,"Difficulty_Edit",step);
			-- 			end;
			-- 		else
			-- 			meter = "";
			-- 		end;
			-- 	end;
			-- else
			-- 	song = "";
			-- end;
			-- if meter then
			-- 	tmeter:visible(true);
			-- 	tmeter:settextf("%d",meter);
			-- end;
		end;
	end;
};

return t;
