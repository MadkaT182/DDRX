return Def.ActorFrame{
	Def.StepsDisplayList{
		Name="StepsDisplayListRow";
		CursorP1 = Def.ActorFrame{
			InitCommand=cmd(player,PLAYER_1);
			PlayerJoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_1 then
					self:visible(true);
				end;
			end;
			PlayerUnjoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_1 then
					self:visible(false);
				end;
			end;
			LoadActor(THEME:GetPathG("","CursorP1"))..{
				InitCommand=cmd(x,-137);
			};
		};
		CursorP2 = Def.ActorFrame{
			InitCommand=cmd(player,PLAYER_2);
			PlayerJoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_2 then
					self:visible(true);
				end;
			end;
			PlayerUnjoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_2 then
					self:visible(false);
				end;
			end;
			LoadActor(THEME:GetPathG("","CursorP2"))..{
				InitCommand=cmd(x,137);
			};
		};
		CursorP1Frame = Def.Actor{};
		CursorP2Frame = Def.Actor{};
	};
};