return Def.ActorFrame {
	LoadActor("Art1")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-877;y,SCREEN_CENTER_Y-270);
		Condition=GAMESTATE:GetMasterPlayerNumber() == PLAYER_1
	};
	LoadActor("Art2")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-877;y,SCREEN_CENTER_Y-270);
		Condition=not GAMESTATE:GetMasterPlayerNumber() == PLAYER_1
	};
}