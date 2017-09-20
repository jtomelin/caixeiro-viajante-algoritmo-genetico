close all; clc; clear;

global iag x y
%% Configuracao Inicial
cities=20; % numero das variaveis para serem otimizadas (genes)
Nt=cities; % numero de colunas da matriz de populacao

%PontoX e pontoY de cada cidade - Posicao no plano.
x=rand(1,cities);
y=rand(1,cities); % cidades em (cidadeX, cidadeY)

%Quem e a populacao?
populacao = getPointsInPlane(cities);
dist = cvfun(populacao);


dist = sort(dist, 1)
%positions = getPointsInPlane(cities);
%X = positions(:,1);
%Y = positions(:, 2);
%Scatter exibe somente os pontos no plano
%scatter(X, Y);
% Hold on necessario para esperar a escrita do scatter
%hold on;
% Faz o plot aqui dos 2 primeiros elementos de cada vetor, 
% correspondendo aos 2 primeiros pontos, criando a linha entre eles
%plot(X(1:2), Y(1:2));

% Adiciona o numero maximo de interacoes (Criterio de Parada)

% Parametros do AG
% tamanho da populacao
% taxa de mutacao (probabilidade de 0.05)
selecao=0.5; % fracao da populacao a ser mantida
%manter=floor(selecao*tamPop); % numero de membros da populacao que sobrevivem
%M=ceil((tamPop-manter)/2); % numero de cruzamentos

% calculo da probabilidade para a selecao dos pais
probab=1; %probabilidade
%for ii=2:manter
%    probab=[probab ii*ones(1,ii)];
%end
%Nprobab=length(probab);
%probab=manter-probab+1; 


% Gerar a populacao inicial
iag=0; % contador para iniciar a geracao
% gerar a populacao aleatoria (Veja funcao randperm)
% deve ser uma matriz 20x20 (cromossomo + n. da populacao)

%calcular o custo da populacao utilizando a funcao de aptidao
% colocar o custo minimo no elemento 1 (Veja funcao sort)
% organizar a populacao com o custo mais baixo primeiro
% calcula o custo minimo da populacao (veja funcao min)
% calcula a media aritmetica da populacao (veja funcao mean)


%% Interacao pelas geracoes (LOOP PRINCIPAL)
%while iag<maxit
%    iag=iag+1; % incrementa o contador de geracoes
    
    % Escolha do Pai1 e Pa2 que sao escolhidos aleatoriamente do vetor
    % probab
    %escolha1=ceil(Nprobab*rand(1,M)); % escolher aleatoriamente na roleta os individuos
    %escolha2=ceil(Nprobab*rand(1,M)); % escolher aleatoriamente na roleta os individuos
    %indPai1=probab(escolha1); % selecionar os indices escolhidos na roleta para o pai 1
    %indPai2=probab(escolha2); % selecionar os indices escolhidos na roleta para o pai 2
    
    % Execucao da Recombinacao (crossover)
    %for ic=1:M
        %seleciona o Pai 1
        %seleciona o Pai 2 
    %end
        
        % Faz a tecnica de recombinacao Cycle

    % Faz a Mutacao da populacao

   
    % Se calcula um novo custo para a nova populacao
    
    
    %_______________________________________________________
    % Organiza em ordem crescente os custos e associa aos parametros

%end %iga


%_______________________________________________________
% Mostrar os resultados