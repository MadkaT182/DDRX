local t = Def.ActorFrame{};

if ThemePrefs.Get("StormBG") > 0 then
	if (ThemePrefs.Get("StormBG") == 2 and IsHome()) or ThemePrefs.Get("StormBG") == 1 then
		t[#t+1] = Def.ActorFrame{
			LoadActor("chbg");
		};
	end
end

return t;