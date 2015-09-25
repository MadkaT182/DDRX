local t = Def.ActorFrame {

		LoadActor("Score.mp3")..{
		StartTransitioningCommand=cmd(stop;sleep,0.5;play);
	};

};
return t;
