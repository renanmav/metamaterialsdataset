function DrawSquareSRR(mws, W, W0, d, t, h, h0, material, id, offset, distance)
%
% Draw a Square SRR unique cell.
%
% @param {double} [W] Weight of outside ring.
% @param {double} [W0] Gap in rings.
% @param {double} [d] Distance between rings.
% @param {double} [t] Thickness of rings.
% @param {double} [h] Base height.
% @param {double} [h0] Height of cell.
% @param {string} [material] Name of material of cell.
% @param {int} [id] Cell identifier

% Draw outside ring
Xrange = [-W/2+offset W/2+offset];
Yrange = [-W/2+distance W/2+distance];
Zrange = [h h+h0];
Cstbrick(mws, strcat('Outring-',num2str(id)), 'component1', material, Xrange, Yrange, Zrange);

% Draw cutting of outside ring
Xrange = [-W/2+t+offset W/2-t+offset];
Yrange = [-W/2+t+distance W/2-t+distance];
Cstbrick(mws, 'Empty', 'component1', material, Xrange, Yrange, Zrange);

CstSubtract(mws, strcat('component1:Outring-',num2str(id)), 'component1:Empty');

% Draw gap of outside ring
Xrange = [-W/2+offset -W/2+t+offset];
Yrange = [-W0/2+distance W0/2+distance];
Cstbrick(mws, 'Empty', 'component1', material, Xrange, Yrange, Zrange);

CstSubtract(mws, strcat('component1:Outring-',num2str(id)), 'component1:Empty');

% Draw inside ring
Xrange = [-W/2+t+d+offset W/2-t-d+offset];
Yrange = [-W/2+t+d+distance W/2-t-d+distance];
Cstbrick(mws, strcat('Inring-',num2str(id)), 'component1', material, Xrange, Yrange, Zrange);

% Draw cutting of inside ring
Xrange = [-W/2+2*t+d+offset W/2-2*t-d+offset];
Yrange = [-W/2+2*t+d+distance W/2-2*t-d+distance];
Cstbrick(mws, 'Empty', 'component1', material, Xrange, Yrange, Zrange);

CstSubtract(mws, strcat('component1:Inring-',num2str(id)), 'component1:Empty');

% Draw gap of inside ring
Xrange = [W/2-2*t-d+offset W/2-t-d+offset];
Yrange = [-W0/2+distance W0/2+distance];
Cstbrick(mws, 'Empty', 'component1', material, Xrange, Yrange, Zrange);

CstSubtract(mws, strcat('component1:Inring-',num2str(id)), 'component1:Empty');

% Add both rings
CstAdd(mws, strcat('component1:Outring-',num2str(id)), strcat('component1:Inring-',num2str(id)));

% Rename cell
CstRename(mws, strcat('component1:Outring-',num2str(id)), strcat('component1:SRR-',num2str(id)));

end
