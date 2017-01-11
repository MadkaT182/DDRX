local t = Def.ActorFrame {
	LoadActor( "../_header" )..{};
	LoadActor( "../_footer" )..{};
};

--Option icons
if not GAMESTATE:IsDemonstration() then
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do

		t[#t+1] = LoadActor( "../OptionIcons", player )..{
			InitCommand=function(self)
				self:x(player == PLAYER_1 and SCREEN_LEFT+108 or SCREEN_RIGHT-84)
					:y(_screen.cy+165)
					:draworder(1)
			end
		}
	end
end

return t;