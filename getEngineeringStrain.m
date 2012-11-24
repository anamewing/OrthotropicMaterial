function engstrain=getEngineeringStrain(strain)
% engstrain.ex=strain.ex;
% engstrain.ey=strain.ey;
% eng
engstrain=strain;
if strain.eng==true 
    warning('strain has already been an engineering one');
    return
end
engstrain.exy=strain.exy*2;
engstrain.eng=true;
end