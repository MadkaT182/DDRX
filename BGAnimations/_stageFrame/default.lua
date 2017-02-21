local t = Def.ActorFrame {};
local suffix = "N";

if IsUsingWideScreen() == true then
	suffix = "W";
end

if not GAMESTATE:IsDemonstration() then

	if GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
		t[#t+1] = LoadActor("RaveFrame"..suffix)..{
			OnCommand=cmd(x,SCREEN_CENTER_X);
		};
	elseif GAMESTATE:GetPlayMode() == 'PlayMode_Oni' or GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' then
		t[#t+1] = LoadActor("CourseFrame"..suffix)..{
			OnCommand=cmd(x,SCREEN_CENTER_X);
		};
	else
		t[#t+1] = LoadActor("StageFrame"..suffix)..{
			OnCommand=cmd(x,SCREEN_CENTER_X);
		};
	end;

	t[#t+1] = LoadActor("../_gpstg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+6);
	};

end

return t;