local t = Def.ActorFrame {};
local file = "basen";

if IsUsingWideScreen() == true then
	file = "basew";
end

t[#t+1] = LoadActor(file)..{
	OnCommand=cmd(addy,225);
};

t[#t+1] = LoadActor("cgbg")..{};

return t;