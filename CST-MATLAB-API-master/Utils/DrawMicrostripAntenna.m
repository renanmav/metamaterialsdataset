function DrawMicrostripAntenna(mws, W, L, t, H, Y0, W0, G, metal, dieletric)

%Draw groundplane
Name = 'Groundplane';
component = 'component1';
material = metal;
Xrange = [-0.5*2*W 0.5*2*W];
Yrange = [-0.5*2*L 0.5*2*L];
Zrange = [0 t];

Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange);

%Draw substrate
Name = 'Substrate';
component = 'component1';
material = dieletric;
Zrange = [t t+H];

Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange);

%Draw patch
Name = 'Patch';
component = 'component1';
material = metal;
Xrange = [-W/2 W/2];
Yrange = [-L/2 L/2];
Zrange = [t+H 2*t+H];

Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange);

%Cut path to fit the feedline
Name = 'Empty';
component = 'component1';
material = metal;
Xrange = [-(W0/2+G) W0/2+G];
Yrange = [-L/2+Y0 -L/2];

Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange);
CstSubtract(mws, 'component1:Patch', 'component1:Empty');

%Draw feedline
Name = 'Feedline';
component = 'component1';
material = metal;
Xrange = [-W0/2 W0/2];
Yrange = [-L/2+Y0 -L];

Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange);
CstAdd(mws, 'component1:Patch', 'component1:Feedline');

end

