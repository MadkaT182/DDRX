local t = {};

if GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
return LoadActor("Battle")..{
	InitCommand=cmd(zoom,0;sleep,2;zoom,1);
	};
else


local style = GAMESTATE:GetCurrentStyle();
if style then
	local master_pn = GAMESTATE:GetMasterPlayerNumber();
	local st = style:GetName();
	local state = 0;

	if st ~= "versus" and st ~= "Couple" then
		state = master_pn == PLAYER_2 and 1 or 0
	end;

	return LoadActor(st)..{
		InitCommand=cmd(zoom,0;animate,false;setstate,state;sleep,2;zoom,1);
	};
else
	return Def.Actor {};
end

end