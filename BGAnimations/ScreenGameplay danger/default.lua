local t = Def.ActorFrame{};
local Center1Player = PREFSMAN:GetPreference('Center1Player');
local NumPlayers = GAMESTATE:GetNumPlayersEnabled();
local NumSides = GAMESTATE:GetNumSidesJoined();
local st = GAMESTATE:GetCurrentStyle():GetStepsType();

local function GetPosition(pn)
	if st == "StepsType_Dance_Double" or st == "StepsType_Dance_Solo" or Center1Player then return SCREEN_WIDTH/2;
	else
	local strPlayer = (NumPlayers == 1) and "OnePlayer" or "TwoPlayers";
	local strSide = (NumSides == 1) and "OneSide" or "TwoSides";
	return THEME:GetMetric("ScreenGameplay","Player".. ToEnumShortString(pn) .. strPlayer .. strSide .."X");
end;
end;

if GAMESTATE:GetPlayMode() ~= 'PlayMode_Rave' and GAMESTATE:GetPlayMode() ~= 'PlayMode_Battle' then
	--Load Danger Decorations
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		t[#t+1] = LoadActor( "danger"..ToEnumShortString(player) )..{
			InitCommand=function(self)
				self:x(GetPosition(player));
			end;
			ShowCommand=cmd(diffusealpha,1);
			HideCommand=cmd(diffusealpha,0);
		}
	end	
end;

return t