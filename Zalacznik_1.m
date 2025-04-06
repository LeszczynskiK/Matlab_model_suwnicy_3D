
function SIM = optymalizacja_sim(PID)
czas_symulacji=20;
global MODEL;

assignin('base','Kp',PID(1));
assignin('base','Ki',PID(2));
assignin('base','Kd',PID(3));

[~,~,yout] = sim(MODEL,czas_symulacji);
SIM = yout(end);