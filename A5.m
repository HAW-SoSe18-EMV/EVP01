% Frequenz
f = [50 100 500 1000 5000 10000 20000]; % Hz

% Messwerte (50-500Hz mit 3.3mH, 1k-20k mit 0.1mH)
B_Pl2 = [7726.0 7614.0 7587.0 1932.0 1941.0 2021.0 2334.0]; % µT
B_Mu2 = [ 137.9  119.8   83.2   12.2   11.8   15.1   12.3];
B_Mu1 = [ 119.7  113.1   88.9   12.3   12.1   11.7   12.1];
B_Al2 = [7346.0 7066.0 4496.0  973.9  192.3   84.0   33.6];
B_Cu2 = [6796.0 5755.0 1910.0  370.4   49.6   21.7   22.3];
B_Fe1 = [ 417.2  368.0  178.0   44.3   11.2   11.5   13.4];

% Dämpfungen
L_Mu2 = 20.*log10(B_Pl2./B_Mu2);
L_Mu1 = 20.*log10(B_Pl2./B_Mu1);
L_Al2 = 20.*log10(B_Pl2./B_Al2);
L_Cu2 = 20.*log10(B_Pl2./B_Cu2);
L_Fe1 = 20.*log10(B_Pl2./B_Fe1);

% Dämpfungsverlauf plotten
semilogx(f, L_Mu2, f, L_Mu1, f, L_Al2, f, L_Cu2, f, L_Fe1);
legend('Mumetall 2mm', 'Mumetall 1mm + Pappe 1mm', 'Aluminium 2mm', 'Kupfer 2mm', 'Eisen 1mm + Pappe 1mm', 'location', 'southeast');
grid on
grid minor
ylabel 'Schirmdämpfung [L] = dB'
xlabel 'Frequenz [f] = Hz'
xlim([50 20000]);
title 'Dämpfungsverlauf verschieder Schirmmaterialien'
