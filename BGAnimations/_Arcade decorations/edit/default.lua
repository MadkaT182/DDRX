return Def.ActorFrame {
	LoadActor("circle");
	Def.Sprite{
		Texture="arrow";
		InitCommand=function(self)
			self:SetAllStateDelays(.3);
		end;
	};
};