% captura nome do arquivo e o diretorio que ele se encontra ao selecionar
[nome diretorio] = uigetfile('*.*', 'Abrir');

% Constroi o endereço do local do arquivo
local = fullfile(diretorio, nome);

% ler o arquivo no local escolhido
n = imread(local);

% Transformar valores proximos de 0 em valores proximos de 255 
% e vice-versa. (subtraindo 255 - imagem)
y = uint8((255-double(n)));
subplot(2,3,1); imshow(n); title ('Img de Entrada');
subplot(2,3,2); imshow(y); title ('negativo');

% Aumentando ou reduzindo o brilho

z = n + 50;
subplot(2,3,5); imshow(z); title ('Brilho Aumentado');
t = n - 50;
subplot(2,3,6); imshow(t); title ('Brilho Diminuido');

% Aumentando e reduzindo o contraste
% Para aumentar o contraste, deixamos as cores claras mais claras
% e as cores escuras mais escuras.
% Para isso definimos um limiar
limiar = 180;

% número  entre 0 e 1 = ára vaçpres de x ,menores que 180
% números maiores que 1, para valores maiores que 180
img = double(n)/limiar;
b = img.^2;

% Esta operação faz com que os valores maiores que 1
% fiquem ainda maiores e os valores menores que 1 ainda menores.
% Assim concluimos multiplicando os valores pelo limiar e convertendo
% os dados para uint8
c = uint8(b*limiar);
subplot(2,3,3); imshow(c); title('Aumento do contraste');

