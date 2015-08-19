local t = Def.ActorFrame{
	--LoadActor("danger");
	LoadActor("ScreenFilter");
};

-- Score decorations P1
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then

	t[#t+1] = Def.ActorFrame{
		LoadActor("score_frame")..{
			OnCommand=cmd(x,SCREEN_LEFT+98;y,SCREEN_BOTTOM-38);
		};
	}

	t[#t+1] = LoadActor("dif_frame")..{
		InitCommand=cmd(x,SCREEN_LEFT+71);
		OnCommand=function(self)
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'reverse') then
				self:y(SCREEN_TOP+43);
				self:rotationy(180);
				self:rotationz(180);
			else
				self:y(SCREEN_BOTTOM-56);
			end;
		end;
	};

end

-- Score decorations P2
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then

	t[#t+1] = Def.ActorFrame{
		LoadActor("score_frame")..{
			OnCommand=cmd(rotationy,180;x,SCREEN_RIGHT-98;y,SCREEN_BOTTOM-38);
		};
	}

	t[#t+1] = LoadActor("dif_frame")..{
		InitCommand=cmd(x,SCREEN_RIGHT-71;);
		OnCommand=function(self)
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'reverse') then
				self:y(SCREEN_TOP+43);
				self:rotationz(180);
			else
				self:rotationy(180);
				self:y(SCREEN_BOTTOM-56);
			end;
		end;
	};

end

return t;