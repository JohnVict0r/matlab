% captura nome do arquivo e o diretorio que ele se encontra ao selecionar
[nome diretorio] = uigetfile('*.*', 'Abrir');

% Constroi o endereço do local do arquivo
local = fullfile(diretorio, nome);

% ler o arquivo no local escolhido
n = imread(local);

% Converte a imagem de RGB para escala de cinza
I = rgb2gray(n);

subplot(2,3,2); imshow(n); title ('Img Entrada');

% comando edge para aplicar o filtro canny
imgcanny = edge(I, 'canny');
subplot(2,3,4); imshow(imgcanny); title ('Filtro Canny');

% comando edge para aplicar o filtro sobel
imgsobel = edge(I, 'sobel');
subplot(2,3,5); imshow(imgsobel); title ('Filtro Sobel');

% comando edge para aplicar o filtro prewitt
imgprewitt = edge(I, 'prewitt');
subplot(2,3,6); imshow(imgprewitt); title ('Filtro Prewitt');

