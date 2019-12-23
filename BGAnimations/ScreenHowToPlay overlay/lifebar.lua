local t = Def.ActorFrame {};
local suffix = "n";
local batw = 230;
local bath = 21;
local life = .5;

if IsUsingWideScreen() then
	suffix = "w";
	batw = 318;
end

t[#t+1] = Def.ActorFrame {
	Def.Quad{
		BeginCommand=cmd(horizalign,right;x,batw/2+7;zoomto,batw,bath;diffusetopedge,color("#707171");diffusebottomedge,color("#404040"));
	};
	LoadActor(THEME:GetPathG("StreamDisplay", "normal"))..{
		InitCommand=function(self)
			self:x(IsUsingWideScreen() and 2 or 6);
			self:texcoordvelocity(.8,0);
			self:zoomto(batw,bath);
			self:cropright(1);
			self:linear(1.32);
			self:cropright(life);
			self:sleep(10.72);
			life = .55;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(9.1);
			life = .6;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(2.23);
			life = .65;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(4.43);
			life = .8;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(2.19);
			life = .85;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(5.5);
			life = .95;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(2.23);
			life = .99;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(3.19);
			life = .8;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(4.95);
			life = .6;
			self:linear(.5);
			self:cropright(1-life);
			self:sleep(1.43);
			life = .4;
			self:cropright(1-life);
		end;
		AnimCommand=function(self)
			self:stoptweening();
			self:cropright(1-life);
			self:linear(.25);
			self:cropright(1-life+.025);
			self:linear(.25);
			self:cropright(1-life-.05);
			self:linear(.25);
			self:cropright(1-life+.025);
			self:linear(.25);
			self:cropright(1-life);
		end;
		Anim1Command=function(self)
			self:stoptweening();
			self:cropright(1-life);
			self:linear(.25);
			self:cropright(1-life+.025);
			self:linear(.25);
			self:cropright(1-life-.05);
			self:linear(.25);
			self:cropright(1-life+.025);
			self:linear(.25);
			self:cropright(1-life);
		end;
	};
	Def.Sprite{
		BeginCommand=function(self)
			self:Load(THEME:GetPathG("", "lifebar/stream_"..suffix));
		end;
	};
};

return t;