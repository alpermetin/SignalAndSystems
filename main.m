clc
clear
clear all
close all
%% a-) 1 y�l 10 g�n sonra kan�nda bulunan doz miktar� ka� mg?
alfa=100
beta=0.5
temp=beta*alfa
result=0
n=375
for i=1:n-1    
    sonuc=alfa+temp
    temp=beta*sonuc 
    
end
result=sonuc
%%  c-) Recursive function

prompt='Hangi g�ndeki dozaj� almak istiyorsunuz?'
tic;
n=input(prompt)
dozaj(n)
sayac1=toc
fprintf ( 1, '  MY_PROGRAM took %f seconds to run.\n', sayac1 );
%d-) timer komutu ile;
fprintf(2, 'resursive fonksiyonu(%f) < iterative fonksiyonundan',sayac1);
%% e-) Grafi�i �iziniz.
%% deger1
alfa=1/4
beta=3/5
result1=0
temp=beta*alfa
n=10 % 10 g�nl�k de�er al�nm��t�r.
for i=1:n-1
    sonuc=alfa+temp
    temp=beta*sonuc
    
end
result1=sonuc

%% deger2
alfa1=1/2
beta1=3/5
result2=0
temp=beta1*alfa1
n=10 % 10 g�nl�k de�er al�nm��t�r.
for i=1:n-1
    sonuc=alfa1+temp
    temp=beta1*sonuc
end
result2=sonuc
figure

%% deger3
alfa2=1/4
beta2=3/4
result3=0
temp=beta2*alfa2
n=10 % 10 g�nl�k de�er al�nm��t�r.
for i=1:n-1
    sonuc=alfa2+temp
    temp=beta2*sonuc
end
result3=sonuc

X = linspace(result1,n,10);
stem(X,'red','LineStyle','-')
grid on
hold on
X = linspace(result2,n,10);
stem(X,'green','LineStyle',':')
grid on
hold on
X = linspace(result3,n,10);
stem(X,'blue','LineStyle','--')
grid on
legend('alfa=1/4 beta=3/5','alfa=1/2 beta=3/5','alfa=1/4 beta=3/4','Location','northwest')
xlabel('G�nler')
ylabel('Doz miktar�/mg')
title('doz miktar�/G�n Grafi�i')
%% c-) Iterative function
prompt='Hangi g�ndeki dozaj� almak istiyorsunuz?'
tic;
n=input(prompt)
doz(n)


fprintf ( 1, '  MY_PROGRAM took %f seconds to run.\n', sayac2 );
%d-) timer konutu ile 200 sonra kanda bulunan toplam dozaj fonksiyon kar��la�t�rmas�
fprintf(2, 'resursive fonksiyonu < iterative fonksiyonundan(%f)',sayac2);



