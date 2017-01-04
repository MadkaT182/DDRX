local t = Def.ActorFrame {};

if IsUsingWideScreen() == true then
	t[#t+1] = LoadActor("basew")..{
		OnCommand=cmd(addy,225);
	};
else
	t[#t+1] = LoadActor("basen")..{
		OnCommand=cmd(addy,225);
	};
end

t[#t+1] = LoadActor("cgbg")..{};

return t;