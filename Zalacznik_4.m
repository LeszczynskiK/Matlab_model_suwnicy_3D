global MODEL;
%w³¹cz potrzebne modele
osX
osY
osZ

ograniczenie_dolne=[0 0 0 0 0];

pid_wartosci_poczatkowe = [10 15 0.3 0.4 0.4];%poczatkowe wzmocnienia dla FOPIDa X
ograniczenie_gorne=[150 135 12 0.99 0.99]; 
  
MODEL = 'osX'; % Optymalizacja dla osi X
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_X=wartosci_optymalne

pid_wartosci_poczatkowe = [1 1 1 0.1 0.1];%poczatkowe wzmocnienia dla FOPIDa Y
ograniczenie_gorne=[10 10 10 1 1]; 

MODEL = 'osY'; %Optymalizacja dla osi Y
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_Y=wartosci_optymalne

pid_wartosci_poczatkowe = [10 15 1 0.01 0.06];%poczatkowe wzmocnienia dla FOPIDa Z
ograniczenie_gorne=[25 25 25 1 1]; 

MODEL = 'osZ'; %optymalizacja dla osi Z
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_Z=wartosci_optymalne

