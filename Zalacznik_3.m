global MODEL;
%w³¹cz potrzebne modele
wychylenie1
wychylenie2

ograniczenie_dolne=[0 0 0];

pid_wartosci_poczatkowe = [0.01 0.01 0.01];
ograniczenie_gorne=[15 20 15]; 
  
MODEL = 'wychylenie1'; % Optymalizacja dla osi X
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_wychylenie_X=wartosci_optymalne

MODEL = 'wychylenie2'; %Optymalizacja dla osi Y
[wartosci_optymalne,~,~,~] = fmincon('optymalizacja_sim',pid_wartosci_poczatkowe,[],[],[],[],ograniczenie_dolne,ograniczenie_gorne);
Wzmocnienia_Optymalne_wychylenie_Y=wartosci_optymalne


