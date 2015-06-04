local gc = Var("GameCommand");
local t = Def.ActorFrame {};
t[#t+1] = Def.ActorFrame {
  GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconGainFocusCommand");
  LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconLoseFocusCommand");

	LoadActor("SSC01 "..gc:GetName())..{
		InitCommand=cmd(y,0);
	};

	LoadActor("SSC02 "..gc:GetName())..{
		InitCommand=cmd(y,0);
		GainFocusCommand=cmd(linear,0.08;diffusealpha,0);
		LoseFocusCommand=cmd(linear,0.08;diffusealpha,1);
	};
};
return t