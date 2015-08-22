local timer_seconds = THEME:GetMetric(Var "LoadingScreen","TimerSeconds");

return Def.ActorFrame {

	LoadActor( "../_black" )..{
		InitCommand=cmd(x,SCREEN_LEFT;y,SCREEN_TOP;FullScreen);
	};
	--
	LoadActor(THEME:GetPathG("ScreenGameOver","gameover"))..{
		InitCommand=cmd(y,-16;shadowlength,2;Center);
	};

	SOUND:PlayAnnouncer("game over")

}
