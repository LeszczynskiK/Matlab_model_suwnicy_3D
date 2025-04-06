global MODEL;
osX
osY
osZ

ograniczenie_dolne=[0 0 0];

pid_wartosci_poczatkowe = [25 25 1];%poczatkowe wzmocnienia dla PIDa X
ograniczenie_gorne=[25 25 25]; 
  
MODEL = 'osX'; % Optymalizacja dla osi X
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_X=wartosci_optymalne

pid_wartosci_poczatkowe = [25 25 1];%poczatkowe wzmocnienia dla PIDa Y 
ograniczenie_gorne=[25 25 25]; 

MODEL = 'osY'; %Optymalizacja dla osi Y
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_Y=wartosci_optymalne

pid_wartosci_poczatkowe = [0.001 0.001 0.001];%poczatkowe wzmocnienia dla PIDa 
ograniczenie_gorne=[20 50 2]; 

MODEL = 'osZ'; %optymalizacja dla osi Z
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_Z=wartosci_optymalne

