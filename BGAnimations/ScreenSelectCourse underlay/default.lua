return Def.ActorFrame {
	LoadActor("../ScreenSelectMusic underlay")..{
		Condition=GAMESTATE:GetCoinMode() ~= 'CoinMode_Home'
	};
};