return Def.ActorFrame{
	Def.ActorFrame{
		OnCommand=function(self)
			SOUND:PlayAnnouncer("evaluation battle final intro");
		end;
	};
	Def.ActorFrame{
		OnCommand=cmd(linear,2;sleep,0;queuecommand,"PA");
		PACommand=function(self)
			local P1Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife();
			local P2Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentLife();
			if P1Life > P2Life then
				SOUND:PlayAnnouncer("evaluation battle p1win");
			elseif P2Life > P1Life then
				SOUND:PlayAnnouncer("evaluation battle p2win");
			else
				SOUND:PlayAnnouncer("evaluation battle draw");
			end
		end;
	};
};