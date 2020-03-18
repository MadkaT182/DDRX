
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

	LoadFont("StepsDisplay ticks")..{
		Name="meterbase";
		InitCommand=cmd(x,20;horizalign,left;settext,string.rep("1",10));
	};

	LoadFont("StepsDisplay ticks")..{
		Name="tmeter";
		InitCommand=cmd(x,20;horizalign,left;diffuse,color("#FFD322"));
	};

	LoadFont("StepsDisplay ticks")..{
		Name="hmeter";
		InitCommand=cmd(x,20;horizalign,left;diffuse,color("#FF0000"));
	};

	LoadFont("StepsDisplay numbers")..{
		Name="mnumber";
		InitCommand=cmd(x,18;horizalign,right;diffuse,color("#A0A09F"));
	};

	Def.Sprite{
		Name = "DiffLbl";
		InitCommand=cmd(x,-50);
	};

	SetCommand=function(self, param)
		local tmeter = self:GetChild('tmeter');
		local hmeter = self:GetChild('hmeter');
		local mnumber = self:GetChild('mnumber');
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
			mnumber:settext(meter);

			if getenv("wheelstop") == 1 then
				song = GAMESTATE:GetCurrentSong();
				if GetAdhocPref("UserMeterType") == "CSStyle" then
					if song then
						if cdiff ~= "Edit" then
							meter = GetConvertDifficulty(song,"Difficulty_"..cdiff);
						else
							meter = GetConvertDifficulty(song,"Difficulty_Edit",step);
						end;
					else
						meter = "";
					end;
				end;
			else
				song = "";
			end;
			if meter then
				local fixmeter = 0;
				local xmeter = 0;
				if meter > 10 then
					fixmeter = 10;
					xmeter = meter -10;
					if xmeter > 10 then
						xmeter = 10
					end
				else
					fixmeter = meter;
				end
				tmeter:settext(string.rep("0",fixmeter));
				hmeter:settext(string.rep("0",xmeter));
			end;
		end;
	end;
};

return t;
