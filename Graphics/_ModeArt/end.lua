return Def.ActorFrame{
	OffCommand=cmd(linear,.133;addx,SCREEN_WIDTH);
	Def.ActorFrame {
		OnCommand=cmd(x,-44;y,-1;zoom,0;linear,.084;zoom,1;pulse;effectmagnitude,.75,1,1;);
		LoadActor("spend")..{
			OnCommand=cmd(spin;effectmagnitude,0,0,-300;);
		};
	};
	LoadActor("lblend")..{
		OnCommand=cmd(zoomx,1.2;zoomy,.2;linear,.05;zoom,1.2;sleep,0;zoom,1;sleep,.117;bob;effectperiod,1;effectmagnitude,0,2,0);
	};
	Condition=GAMESTATE:GetCoinMode() ~= "CoinMode_Pay"
};