local t = Def.ActorFrame {};

local sides = GAMESTATE:GetNumSidesJoined();
local difP1 = "";
local difP2 = "";
local customP1 = false;
local customP2 = false;

if GAMESTATE:IsSideJoined(PLAYER_1) then
	difP1 = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty());
end;

if GAMESTATE:IsSideJoined(PLAYER_2) then
	difP2 = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_2):GetDifficulty());
end;

if difP1 == "Edit Data" then
	difP1 = GAMESTATE:GetCurrentSteps(PLAYER_1):GetDescription();
	customP1 = true;
else
	difP1="";
end

if difP2 == "Edit Data" then
	difP2 = GAMESTATE:GetCurrentSteps(PLAYER_2):GetDescription();
	customP2 = true;
else
	difP2="";
end

--Difficulty
if sides then
	if sides == 1 then
		t[#t+1] = Def.ActorFrame {
			LoadFont("_sys_desc")..{
				OnCommand=function(self)
					if customP1 or customP2 then
						if string.len(difP1) > 0 then
							self:settext(difP1);
						else
							self:settext(difP2);
						end;
					end
				end;
			};
		};
	else
		--Both sides
		if difP1 == difP2 then
			t[#t+1] = Def.ActorFrame {
				LoadFont("_sys_desc")..{
					OnCommand=function(self)
					if customP1 or customP2 then
						self:settext(difP1);
					end
					end;
				};
			};
		else
			t[#t+1] = Def.ActorFrame {
				LoadFont("_sys_desc")..{
				InitCommand=cmd(addx,-118);
					OnCommand=function(self)
					if customP1 then
						self:horizalign(left);
						self:settext(difP1);
					end
					end;
				};
				LoadFont("_sys_desc")..{
				InitCommand=cmd(addx,117);
					OnCommand=function(self)
					if customP2 then
						self:horizalign(right);
						self:settext(difP2);
					end
					end;
				};
			};
		end;
	end;
end;

return t;