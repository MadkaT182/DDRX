local t = Def.ActorFrame{};

--TODO: Add themeoptions for this
-- if ThemePrefs.Get("StormBg") then
	t[#t+1] = Def.ActorFrame{
		LoadActor("chbg");
	};
-- end

return t;