local t = Def.ActorFrame{};

local function GetRadarData( pnPlayer, rcRadarCategory )
	local tRadarValues;
	local StepsOrTrail;
	local fDesiredValue = 0;
	if GAMESTATE:GetCurrentSteps( pnPlayer ) then
		StepsOrTrail = GAMESTATE:GetCurrentSteps( pnPlayer );
		fDesiredValue = StepsOrTrail:GetRadarValues( pnPlayer ):GetValue( rcRadarCategory );
	elseif GAMESTATE:GetCurrentTrail( pnPlayer ) then
		StepsOrTrail = GAMESTATE:GetCurrentTrail( pnPlayer );
		fDesiredValue = StepsOrTrail:GetRadarValues( pnPlayer ):GetValue( rcRadarCategory );
	else
		StepsOrTrail = nil;
	end;
	return fDesiredValue;
end;

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("","shock_arrow"))..{
			InitCommand=function(self)
				self:zoom(0);
				self:x(player == PLAYER_1 and -295 or -45);
			end;
			OnCommand=cmd(playcommand,"Set");
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local selection = GAMESTATE:GetCurrentSteps(player);
				if selection then
					if GetRadarData(player,'RadarCategory_Mines') == 0 or not song then
						self:stoptweening();
						self:decelerate(.2);
						self:zoom(0);
					else
						self:stoptweening();
						self:decelerate(.2);
						self:zoom(1);
					end;
				end;
			end;
			OffCommand=cmd(decelerate,.05;diffusealpha,0);
		};
	};
end

return t;