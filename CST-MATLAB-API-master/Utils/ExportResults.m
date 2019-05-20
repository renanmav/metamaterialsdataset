function ExportResults(mws, path, folderName, W, L, t, H, Y0, W0, G)

mkdir(path, num2str(folderName));

features = [W, L, t, H, Y0, W0, G];

csvwrite(strcat(path,'\',num2str(folderName),'\','features.csv'), features);

CstExportSparametersTXT(mws, strcat(path,'\',num2str(folderName),'\','s.txt'));

% Get gain
SelectTreeItem = invoke(mws,'SelectTreeItem','Tables\1D Results\Gain');
ASCIIExport = invoke(mws,'ASCIIExport');
invoke(ASCIIExport,'Reset');
invoke(ASCIIExport,'SetVersion','2010');
invoke(ASCIIExport,'FileName', strcat(path,'\',num2str(folderName),'\','gain.txt'));
invoke(ASCIIExport,'Execute');

% Get VSWR
SelectTreeItem = invoke(mws,'SelectTreeItem','1D Results\VSWR\VSWR1');
ASCIIExport = invoke(mws,'ASCIIExport');
invoke(ASCIIExport,'Reset');
invoke(ASCIIExport,'SetVersion','2010');
invoke(ASCIIExport,'FileName', strcat(path,'\',num2str(folderName),'\','vswr.txt'));
invoke(ASCIIExport,'Execute');

% Get p0
SelectTreeItem = invoke(mws,'SelectTreeItem','1D Results\Power\Excitation [1]\Power Accepted');
ASCIIExport = invoke(mws,'ASCIIExport');
invoke(ASCIIExport,'Reset');
invoke(ASCIIExport,'SetVersion','2010');
invoke(ASCIIExport,'FileName', strcat(path,'\',num2str(folderName),'\','p0.txt'));
invoke(ASCIIExport,'Execute');

% Get pr
SelectTreeItem = invoke(mws,'SelectTreeItem','1D Results\Power\Excitation [1]\Power Radiated');
ASCIIExport = invoke(mws,'ASCIIExport');
invoke(ASCIIExport,'Reset');
invoke(ASCIIExport,'SetVersion','2010');
invoke(ASCIIExport,'FileName', strcat(path,'\',num2str(folderName),'\','pr.txt'));
invoke(ASCIIExport,'Execute');

% Get Zin
%SelectTreeItem = invoke(mws,'SelectTreeItem','1D Results\Reference Impedance\ZRef 1(1)');
%ASCIIExport = invoke(mws,'ASCIIExport');
%invoke(ASCIIExport,'Reset');
%invoke(ASCIIExport,'SetVersion','2010');
%invoke(ASCIIExport,'FileName', strcat(path,'\',num2str(folderName),'\','zin.txt'));
%invoke(ASCIIExport,'Execute');


end

