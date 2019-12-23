local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("_black")..{
	OnCommand=cmd(diffusealpha,0;sleep,1.5;);
	};
}

if GAMESTATE:GetPlayMode() == 'PlayMode_Oni' then
	SetOniOptions();
end

return t;