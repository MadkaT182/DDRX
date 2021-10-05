local t = Def.ActorFrame{};

if ThemePrefs.Get("DancerType") == 2 then
	t[#t+1] = Def.ActorFrame{
		LoadActor("Type2");
	};
end

return t;