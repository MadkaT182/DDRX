local t = Def.ActorFrame{
	Def.ActorFrame{
		Name="DangerP2";
		Def.ActorFrame{
			Name="Danger";
			HealthStateChangedMessageCommand=function(self, param)
				if param.PlayerNumber == PLAYER_2 then
					if param.HealthState == "HealthState_Danger" then
						self:RunCommandsOnChildren(cmd(playcommand,"Show"))
					else
						self:RunCommandsOnChildren(cmd(playcommand,"Hide"))
					end
				end
			end;
			--Danger Sprites
			LoadActor("danger1")..{
				InitCommand=cmd(rotationz,-6;diffusealpha,0);
				OnCommand=cmd(decelerate,0.25;addy,6;decelerate,0.25;addy,-6;queuecommand,"Animate");
				AnimateCommand=cmd(queuecommand,"On");
				ShowCommand=cmd(diffusealpha,1);
				HideCommand=cmd(diffusealpha,0);
			};
			LoadActor("danger2")..{
				InitCommand=cmd(rotationz,-6;diffusealpha,0);
				OnCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.67;decelerate,0.25;addy,6;decelerate,0.25;addy,-6;queuecommand,"Animate");
				AnimateCommand=cmd(queuecommand,"On");
				ShowCommand=cmd(diffusealpha,1);
				HideCommand=cmd(diffusealpha,0);
			};
		}
	};
}

return t;