local t = Def.ActorFrame {};
local file = "doorrn";

if IsUsingWideScreen() == true then
	file = "doorrw";
end

t[#t+1] = LoadActor(file)..{};

return t;