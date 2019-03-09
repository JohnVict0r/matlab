% captura nome do arquivo e o diretorio que ele se encontra ao selecionar
[nome diretorio] = uigetfile('*.*', 'Abrir');

% Constroi o endereço do local do arquivo
local = fullfile(diretorio, nome);

% ler o arquivo no local escolhido
n = imread(local);

subplot(3,3,2); imshow(n); title ('Img Colorida');

subplot(3,3,4); imshow(n(:,:,1)); title ('Imag R');

subplot(3,3,5); imshow(n(:,:,2)); title ('Imag G');

subplot(3,3,6); imshow(n(:,:,3)); title ('Imag B');

% Tipo de dados uint8
b_R = uint8(zeros(size(n)));
b_G = uint8(zeros(size(n)));
b_B = uint8(zeros(size(n)));

% atribui o primeiro plano da imagem original
% ao primeiro plano da imagem b_R, b_G, b_B
b_R(:,:,1) = n(:,:,1);
b_G(:,:,2) = n(:,:,2);
b_B(:,:,3) = n(:,:,3);


% Plotando as imagens coloridas

subplot(3,3,7); imshow(b_R); title ('Imag R');

subplot(3,3,8); imshow(b_G); title ('Imag G');

subplot(3,3,9); imshow(b_B); title ('Imag B');
