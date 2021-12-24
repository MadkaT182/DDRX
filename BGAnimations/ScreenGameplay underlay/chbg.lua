local t = Def.ActorFrame{};
	if HasMines() == "ScreenShock" then
		t[#t+1] = Def.ActorFrame{
			LoadActor("storm")..{
				OnCommand=cmd(FullScreen);
			};
		};
	end
return t;