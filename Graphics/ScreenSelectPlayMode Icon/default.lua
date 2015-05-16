local gc = Var("GameCommand");
local t = Def.ActorFrame {};


t[#t+1] = Def.ActorFrame { 
  GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","NormlOtherGainFocusCommand");
  LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","NormlOtherLoseFocusCommand");
	LoadActor(THEME:GetPathG("_NormlOther",gc:GetName() )) .. {
		DisabledCommand=cmd(diffuse,color("0.0,0.0,0.0,0"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
		--OnCommand=cmd(zoom,0;decelerate,0.35;zoom,1;);
		OnCommand=cmd(zoom,1);
		OffCommand=cmd(linear,0.1175;zoomx,0);
	};
};

t[#t+1] = Def.ActorFrame { 
  GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","BattleOtherGainFocusCommand");
  LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","BattleOtherLoseFocusCommand");
	LoadActor(THEME:GetPathG("_BattleOther",gc:GetName() )) .. {
		DisabledCommand=cmd(diffuse,color("0.0,0.0,0.0,0"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
		--OnCommand=cmd(zoom,0;decelerate,0.35;zoom,1;);
		OnCommand=cmd(zoom,1);
		OffCommand=cmd(linear,0.1175;zoomx,0);
	};
};


t[#t+1] = Def.ActorFrame { 
  GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","CourseOtherGainFocusCommand");
  LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","CourseOtherLoseFocusCommand");
	LoadActor(THEME:GetPathG("_CourseOther",gc:GetName() )) .. {
		DisabledCommand=cmd(diffuse,color("0.0,0.0,0.0,0"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
		--OnCommand=cmd(zoom,0;decelerate,0.35;zoom,1;);
		OnCommand=cmd(zoom,1);
		OffCommand=cmd(linear,0.1175;zoomx,0);
	};
};


t[#t+1] = Def.ActorFrame { 
  GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconGainFocusCommand");
  LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconLoseFocusCommand");
	LoadActor(THEME:GetPathG("_PlayIcon",gc:GetName() )) .. {
		DisabledCommand=cmd(diffuse,color("0.0,0.0,0.0,0"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
		--OnCommand=cmd(zoom,0;decelerate,0.35;zoom,1;);
		OnCommand=cmd(zoom,1);
		OffCommand=cmd(linear,0.1175;zoomx,0);
	};
};


t[#t+1] = Def.ActorFrame { 
  GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","InfoGainFocusCommand");
  LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","InfoLoseFocusCommand");
	LoadActor(THEME:GetPathG("_PlayInfo",gc:GetName() )) .. {
		DisabledCommand=cmd(diffuse,color("0.0,0.0,0.0,0"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
		--OnCommand=cmd(zoom,0;decelerate,0.35;zoom,1;);
		OnCommand=cmd(zoom,1);
		OffCommand=cmd(linear,0.1175;zoomx,0);
	};
};

return t