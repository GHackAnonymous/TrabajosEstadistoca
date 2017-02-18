clc
clear

% str1 = '*****************************************************************\n';
% str2 = '*                      Autores del codigo                       *\n';
% str3 = '*                                                               *\n';
% str4 = '*              Eder Gomez de Segura (GHackAnonymous)            *\n';
% str5 = '*                   Xabier Gandiaga (DoctorMckay)               *\n';
% str6 = '*****************************************************************';
% 
% str = strcat(str1,str2,str3,str4,str5,str6)

load('Zutabe10.mat')
display('resultados x')
mean(Zutabe10) %media
geomean(Zutabe10) %media geom�trica
harmmean(Zutabe10) %media harm�nica
median(Zutabe10)  %mediana
mad(Zutabe10)  %media absoluta
bar(Zutabe10)  %diagrama de barras1
hist(Zutabe10) %histograma
Qz10(1) = median(Zutabe10(find(Zutabe10<median(Zutabe10)))) %cuartil 1
Qz10(2) = median(Zutabe10) %cuartil 2
Qz10(3) = median(Zutabe10(find(Zutabe10>median(Zutabe10)))) %cuartil 3
IQR = Qz10(3)-Qz10(1) %Intercuartil
prctile(Zutabe10,25) %Percentil 25
prctile(Zutabe10,75) %Percentil 75
boxplot(Zutabe10) %Diagrama caja bigote


load('Zutabe11.mat')
display('resultados Y')
mean(Zutabe11) %media
geomean(Zutabe11) %media geom�trica
harmmean(Zutabe11) %media harm�nica
median(Zutabe11)  %mediana
mad(Zutabe11)  %media absoluta
bar(Zutabe11)  %diagrama de barras1
hist(Zutabe11)
Qz11(1) = median(Zutabe11(find(Zutabe11<median(Zutabe11)))) %cuartil 1
Qz11(2) = median(Zutabe11) %cuartil 2
Qz11(3) = median(Zutabe11(find(Zutabe11>median(Zutabe11)))) %cuartil 3
IQR = Qz11(3)-Qz11(1) %Intercuartil
prctile(Zutabe11,25) %Percentil 25
prctile(Zutabe11,75) %Percentil 75
boxplot(Zutabe11) %Diagrama caja bigote

%Diagrama caja bigote para comparaci�n
boxplot([Zutabe10,Zutabe11],'Labels',{'Zutabe 10','Zutabe 11'}) 