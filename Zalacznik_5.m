global MODEL;
%w³¹cz potrzebne modele
wychylenie1
wychylenie2

ograniczenie_dolne=[0 0 0 0 0];

pid_wartosci_poczatkowe = [0.0001 0.0001 0.0001 0.1 0.1];%poczatkowe wzmocnienia dla PIDa X
ograniczenie_gorne=[50 50 50 1 1]; 
  
MODEL = 'wychylenie1'; % Optymalizacja dla osi X
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_wychylenie_1=wartosci_optymalne

MODEL = 'wychylenie2'; %Optymalizacja dla osi Y
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_wychylenie_2=wartosci_optymalne


