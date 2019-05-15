
function CstRT5880(mws)

%'@ define material: Rogers RT5880

material = invoke(mws,'material');
invoke(material,'Reset');
invoke(material,'Name','Rogers RT5880 (lossy)'); 
invoke(material,'FrqType','all');
invoke(material,'Type','Normal');
invoke(material,'SetMaterialUnit','GHz','mm');
invoke(material,'Epsilon','2.2');
invoke(material,'Mue','1.0');
invoke(material,'Kappa','0.0');
invoke(material,'TanD','0.0009');
invoke(material,'TanDFreq','10.0');
invoke(material,'TanDGiven','True');
invoke(material,'TanDModel','ConstTanD');
invoke(material,'KappaM','0.0');
invoke(material,'TanDM','0.0');
invoke(material,'TanDMFreq','0.0');
invoke(material,'TanDMGiven','False');
invoke(material,'TanDMModel','ConstKappa');
invoke(material,'DispModelEps','None');
invoke(material,'DispModelMue','None');
invoke(material,'DispersiveFittingSchemeEps','General 1st');
invoke(material,'DispersiveFittingSchemeMue','General 1st');
invoke(material,'UseGeneralDispersionEps','False');
invoke(material,'UseGeneralDispersionMue','False');
invoke(material,'Rho','0.0');
invoke(material,'ThermalType','Normal');
invoke(material,'ThermalConductivity','0.2');
invoke(material,'SetActiveMaterial','all');
invoke(material,'Colour','0.94','0.82','0.76');
invoke(material,'Wireframe','False');
invoke(material,'Transparency','0');
invoke(material,'Create');
release(material);
end