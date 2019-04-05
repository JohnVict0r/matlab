% algoritmo do kmeans

cidades = [32 27; 59 43; 80 63; 85 50; 58 38; 82 55; 25 31; 66 42; 60 49; 35 12];

plot(cidades(:,1),cidades(:,2),'.b', 'MarkerSize', 12);

c1 = [10 30];
c2 = [45 46];
c3 = [56 57];

hold on; plot(c1(1,1), c1(1,2),'.r', 'MarkerSize', 12);
hold on; plot(c2(1,1), c2(1,2),'.r', 'MarkerSize', 12);
hold on; plot(c3(1,1), c3(1,2),'.r', 'MarkerSize', 12);

D1=sqrt((cidades(:,1)-c1(1,1)).^2 + (cidades(:,2)-c1(1,2)).^2);
D2=sqrt((cidades(:,1)-c2(1,1)).^2 + (cidades(:,2)-c2(1,2)).^2);
D3=sqrt((cidades(:,1)-c3(1,1)).^2 + (cidades(:,2)-c3(1,2)).^2);
