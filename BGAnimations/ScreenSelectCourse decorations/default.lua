local t = Def.ActorFrame {
	LoadActor("coursedec_CS")..{
		Condition=GAMESTATE:GetCoinMode() == 'CoinMode_Home'
	};
	LoadActor("coursedec_AC")..{
		Condition=GAMESTATE:GetCoinMode() ~= 'CoinMode_Home'
	};
};

return t;