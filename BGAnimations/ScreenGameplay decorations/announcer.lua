--Function to improve DDR announcer behaviour by MadkaT
--Don't forget to set SecondsBetweenComments=99999 in the gameplay settings and call this function in the gameplay
function OneIsHot()
	local hotval = false;
	for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
		if STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife() == 1 then
			hotval = true;
		end
	end
	return hotval;
end
function DangerOrWorse()
	local dangerval = false;
	for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
		if STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetCurrentLife() <= .25 then
			dangerval = true;
		end
	end
	return dangerval;
end
local t = Def.ActorFrame {};
local sPlayMode = GAMESTATE:GetPlayMode();
local wait = 10;
local BCount = 0;
	if sPlayMode == 'PlayMode_Regular' then
		t[#t+1] = Def.ActorFrame{
			OnCommand=cmd(linear,10;sleep,0;queuecommand,"PA");
			PACommand=function(self)
				if OneIsHot() then
					SOUND:PlayAnnouncer("gameplay comment hot");
				elseif DangerOrWorse() then
					SOUND:PlayAnnouncer("gameplay comment danger");
				else
					SOUND:PlayAnnouncer("gameplay comment good");
				end
				self:queuecommand("On");
			end;
			OffCommand=cmd(stoptweening);
		};
	elseif sPlayMode == 'PlayMode_Battle' or sPlayMode == 'PlayMode_Rave' then
		t[#t+1] = Def.ActorFrame{
			OnCommand=cmd(linear,10;sleep,0;queuecommand,"PA");
			PACommand=function(self)
				P1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
				P2Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentLife();
				if BCount >= 3 then
					if P1Life > P2Life then
						SOUND:PlayAnnouncer("gameplay battle p1win");
					else
						SOUND:PlayAnnouncer("gameplay battle p2win");
					end
					BCount = 0;
				else
					SOUND:PlayAnnouncer("gameplay battle normal");
					BCount=BCount+1;
				end
				self:queuecommand("On");
			end;
			OffCommand=cmd(stoptweening);
		};
	elseif sPlayMode == 'PlayMode_Nonstop' or sPlayMode == 'PlayMode_Oni' or sPlayMode == 'PlayMode_Endless' then
		t[#t+1] = Def.ActorFrame{
			OnCommand=cmd(linear,10;sleep,0;queuecommand,"PA");
			PACommand=function(self)
				SOUND:PlayAnnouncer("gameplay comment oni");
				self:queuecommand("On");
			end;
			OffCommand=cmd(stoptweening);
		};
	end
return t