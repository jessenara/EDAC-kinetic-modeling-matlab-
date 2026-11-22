%[text] 1\. Glass Properties
rho_glass= 2.23;     % Beaker (Borosilicate 3.3) density [g/cm^3]
m_glass= 53;     % Empty beaker mass [g]
%[text] 2\. Volumes
V_chamber=2.060;                         % Biochamber 2000 volume [L]
V_solution=0.200;                          % K2CO3 Solution volume [L]
V_sensor=0.035;    % Displaced sensor volume [L]
V_glass=(m_glass/rho_glass)/1000;       % Displaced glass volume [L]
%[text] 3\. Control Volume Calculation
V_gas=V_chamber-V_sensor-V_solution-V_glass;
%[text] 4\. Volume Output
fprintf('--- E-DAC Control Volume Analysis ---\n'); %[output:9424e008]
fprintf('Glass Dish :  %.3f L\n', V_glass); %[output:17e2c2cf]
fprintf('V_gas:     %.3f L\n', V_gas); %[output:570cc039]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":26.2}
%---
%[output:9424e008]
%   data: {"dataType":"text","outputData":{"text":"--- E-DAC Control Volume Analysis ---\n","truncated":false}}
%---
%[output:17e2c2cf]
%   data: {"dataType":"text","outputData":{"text":"Glass Dish :  0.024 L\n","truncated":false}}
%---
%[output:570cc039]
%   data: {"dataType":"text","outputData":{"text":"V_gas:     1.801 L\n","truncated":false}}
%---
