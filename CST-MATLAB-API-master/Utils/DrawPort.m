function DrawPort(mws, W, L, t, H, W0)

%pick substrate face
Name = 'Substrate';
id = 3;
CstPickFace(mws, Name, id);

%draw port
PortNumber = 1;
Xrange = [-1.1*W 1.1*W];
Yrange = [-1.1*L -1.1*L];
Zrange = [t t+H];
XrangeAdd = [W0/2 W0/2];
YrangeAdd = [0 0];
ZrangeAdd = [t+H 4*H];
Coordinates = 'Picks';
Orientation = 'positive';
CstWaveguidePort(mws, PortNumber, Xrange, Yrange, Zrange, XrangeAdd, YrangeAdd, ZrangeAdd, Coordinates, Orientation);

end

