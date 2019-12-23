local t = Def.ActorFrame {
 	LoadActor("normal");
	--TODO: New course?
	--Course
	Def.ActorFrame{
		LoadFont("MusicWheelItem Course")..{
			InitCommand=cmd(horizalign,left;x,-136;y,0;maxwidth,300);
			SetCommand=function(self,param)
				if param.Course then
					self:settext(param.Course:GetDisplayFullTitle());
				end
			end
		};
	};
};
return t;