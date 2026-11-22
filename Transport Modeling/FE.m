%[text] Constants
F = 96485; % Faraday's constant [A*s/mol]
z = 1; % Stoichiometric electron transfer number of hydroxide
V_catholyte = 0.1; % Cathodic feed solution volume [L]
%[text] 2\. Trials
I = [0.3, 0.6, 0.9]; % Applied current [A]
t = [600, 600, 600]; % Operation time [s]
pH_i = [7, 8, 9]; % Initial pH
pH_f = [12, 12, 12]; % Final pH

num_trials = length(I);
deltan = zeros(1, num_trials); % Pre-allocate array [mol]
FE = zeros(1, num_trials); % Pre-allocate array [%]
%[text] 3\. FE Calculation
for i = 1:num_trials %[output:group:19b4b290]
    deltan(i) = (10^-(14-pH_f(i))-10^-(14-pH_i(i))).*V_catholyte; %[output:3eabb134] %[output:63e1d718] %[output:0279f29f]
    FE(i) = deltan(i).*(z*F)/(I(i).*t(i))*100;
end %[output:group:19b4b290]
%[text] 4\. Output
fprintf('--- E-DAC Specfic Energy Consumption ---\n'); %[output:63089a5f]
fprintf('Trial 1 FE: %.1f percent\n', FE(1)); %[output:66d90e23]
fprintf('Trial 2 FE: %.1f percent\n', FE(2)); %[output:15aa476f]
fprintf('Trial 3 FE: %.1f percent\n', FE(3));  %[output:1424465d]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:3eabb134]
%   data: {"dataType":"matrix","outputData":{"columns":3,"exponent":"-3","name":"deltan","rows":1,"type":"double","value":[["1.0000","0","0"]]}}
%---
%[output:63e1d718]
%   data: {"dataType":"matrix","outputData":{"columns":3,"exponent":"-3","name":"deltan","rows":1,"type":"double","value":[["1.0000","0.9999","0"]]}}
%---
%[output:0279f29f]
%   data: {"dataType":"matrix","outputData":{"columns":3,"exponent":"-3","name":"deltan","rows":1,"type":"double","value":[["1.0000","0.9999","0.9990"]]}}
%---
%[output:63089a5f]
%   data: {"dataType":"text","outputData":{"text":"--- E-DAC Specfic Energy Consumption ---\n","truncated":false}}
%---
%[output:66d90e23]
%   data: {"dataType":"text","outputData":{"text":"Trial 1 FE: 53.6 percent\n","truncated":false}}
%---
%[output:15aa476f]
%   data: {"dataType":"text","outputData":{"text":"Trial 2 FE: 26.8 percent\n","truncated":false}}
%---
%[output:1424465d]
%   data: {"dataType":"text","outputData":{"text":"Trial 3 FE: 17.8 percent\n","truncated":false}}
%---
