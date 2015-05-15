if GAMESTATE:GetMasterPlayerNumber() == PLAYER_1 then

return Def.ActorFrame {
LoadActor( "Art.png" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-730;y,SCREEN_CENTER_Y-305);
		OnCommand=cmd();
	};
}


else

return Def.ActorFrame {
LoadActor( "Art2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-730;y,SCREEN_CENTER_Y-305);
		OnCommand=cmd();
	};
}

end
