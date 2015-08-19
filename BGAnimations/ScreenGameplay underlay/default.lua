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

		LoadActor("dif_frame")..{
			OnCommand=cmd(x,SCREEN_LEFT+71;y,SCREEN_BOTTOM-56);
		};
	}
end

-- Score decorations P2
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
		LoadActor("score_frame")..{
			OnCommand=cmd(rotationy,180;x,SCREEN_RIGHT-98;y,SCREEN_BOTTOM-38);
		};

		LoadActor("dif_frame")..{
			OnCommand=cmd(rotationy,180;x,SCREEN_RIGHT-71;y,SCREEN_BOTTOM-56);
		};
	}
end

return t;