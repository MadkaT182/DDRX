if GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
return LoadActor("Battle")..{};
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
			InitCommand=cmd(animate,false;setstate,state);
		};
	else
		return Def.Actor {};
	end
end