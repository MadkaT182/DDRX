local netConnected = IsNetConnected();
local loggedOnSMO = IsNetSMOnline();

local t = Def.ActorFrame{
	LoadFont("_network") .. {
		InitCommand=cmd(uppercase,true;zoom,0.75;shadowlength,1;horizalign,left);
		BeginCommand=function(self)
			-- check network status
			if netConnected then
				self:strokecolor(color("#00ffff"));
				self:settext( Screen.String("Network OK") );
				self:horizalign(right);
			else
				self:strokecolor(color("#000000"));
				self:settext( Screen.String("Offline") );
				self:horizalign(right);
			end;
		end;
	};
};

if netConnected then
	t[#t+1] = LoadFont("_network") .. {
		InitCommand=cmd(y,16;horizalign,left;zoom,0.5875;shadowlength,1;diffuse,color("0.72,0.89,1,1"));
		BeginCommand=function(self)
			self:settext( string.format(Screen.String("Connected to %s"), GetServerName()) );
		end;
	};
end;

return t;