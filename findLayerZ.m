function i=findLayerZ(layerz,z)
lz=size(layerz);
lz=lz(1);
for i=1:lz
	if z<layerz(i,2)
		return
	end
end