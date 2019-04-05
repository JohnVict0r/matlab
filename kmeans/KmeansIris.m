x = load ('iris.dat');

[idx, c, sumd, d] = kmeans(x,3);

plot(x(idx==1,1), x(idx==1,2), 'r.', 'MarkerSize', 12);

hold on; plot(x(idx==2,1), x(idx==2,2), 'g.', 'MarkerSize', 12);

hold on; plot(x(idx==3,1), x(idx==3,2), 'b.', 'MarkerSize', 12);

plot(c(:,1), c(:,2), 'kx', 'MarkerSize', 12, 'LineWidth', 12);
plot(c(:,1), c(:,2), 'ko', 'MarkerSize', 12, 'LineWidth', 12);

legend('classe1', 'classe2', 'classe3', 'centros', 'Location', 'NorthEastOutSide');