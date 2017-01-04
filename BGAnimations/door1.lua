local t = Def.ActorFrame {};
local file = "doorln";

if IsUsingWideScreen() == true then
	file = "doorlw";
end

t[#t+1] = LoadActor(file)..{};

return t;