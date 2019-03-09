% captura nome do arquivo e o diretorio que ele se encontra ao selecionar
[nome diretorio] = uigetfile('*.*', 'Abrir');

% Constroi o endereço do local do arquivo
local = fullfile(diretorio, nome);

% ler o arquivo no local escolhido
n = imread(local);

% Converte a imagem de RGB para escala de cinza
I = rgb2gray(n);

%
Eq = histeq(I);

subplot(2,3,1); imshow(n); title ('Imag Entrada');
subplot(2,3,2); imshow(I); title ('Imag Cinza');
subplot(2,3,5); imhist(I); title ('Histograma');
subplot(2,3,3); imshow(Eq); title ('Imag Equalizada');
subplot(2,3,6); imhist(Eq); title ('Histograma');
