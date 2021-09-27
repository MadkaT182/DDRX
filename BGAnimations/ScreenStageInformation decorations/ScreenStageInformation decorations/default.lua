return Def.ActorFrame {
	LoadActor(IsUsingWideScreen() and "../doorlw" or "../doorln")..{
		OnCommand=cmd(x,SCREEN_LEFT-237;y,SCREEN_CENTER_Y;linear,.2;x,SCREEN_CENTER_X-189);
	};
	LoadActor(IsUsingWideScreen() and "../doorrw" or "../doorrn")..{
		OnCommand=cmd(x,SCREEN_RIGHT+237;y,SCREEN_CENTER_Y;linear,.2;x,SCREEN_CENTER_X+189);
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-123;zoomy,0;sleep,1.6;linear,.1;zoom,1);
		LoadActor(THEME:GetPathB("ScreenEvaluationNormal","decorations/bnr_frame"));
		LoadActor("songbanner")..{
			OnCommand=cmd(y,-6);
		};
	};
	LoadActor("Thunder")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;zoomy,0;sleep,1.567;linear,.066;zoom,1;diffusealpha,1);
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,-29;sleep,1.584;linear,.116;y,29);
		LoadActor("Header");
		LoadActor("Title")..{
			OnCommand=cmd(x,2);
		};
		LoadActor(THEME:GetPathG("","_playmode"))..{
			OnCommand=cmd(x,-241;y,6);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+27;sleep,1.5;linear,.2;y,SCREEN_BOTTOM-27);
		LoadActor("Footer");
		LoadActor(THEME:GetPathB("ScreenWithMenuElements","decorations/footer"));
	};
	LoadActor("StageDisplay")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,.734;linear,.1;diffusealpha,1);
	};
	LoadActor("SoundStage");
}