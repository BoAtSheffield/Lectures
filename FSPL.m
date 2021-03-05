
i = 1;
j = 1; 

d_list = 1:1:3000;
f_list = 5e8:5e8:3e9; % 0.05GHz

for i = 1:size(d_list,2)
    d = d_list(i);
    for j = 1:size(f_list,2)
        f = f_list(j);
        L_dB(i,j) = FSPL0(d,f);
      
    end
    
    
end

function L_dB = FSPL0(d,f)
pi = 3.1415926; %
c = 299792458; % m/s
l1 = 20*log10(4*pi/c); %
l2 = 20*log10(d); %
l3 = 20*log10(f); %
L_dB = l1 + l2 + l3; %
end

% fc = 10.0e9;
% lambda = physconst('LightSpeed')/fc;
% R = 10e3;
% L = fspl(R,lambda)