function S=getMaterialMatrixS(material)
%Structure material{E1,E2,nu12,nu21,G}
%3*3 matrix S
S=[1/material.E1,-material.nu12/material.E2,0
    -material.nu21/material.E1,1/material.E2,0
    0,0,1/material.G];
end