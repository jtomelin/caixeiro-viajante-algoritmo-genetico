close all; clc; clear;

global iag x y
%% Configuracao Inicial
npar=20; % numero das variaveis para serem otimizadas (genes)
Nt=npar; % numero de colunas da matriz de populacao

x=rand(1,npar);
y=rand(1,npar); % cidades em (cidadeX, cidadeY)

% Adiciona o numero maximo de interacoes (Criterio de Parada)
maxit = 1000;

% Parametros do AG
% tamanho da populacao
tamPop = 20;
% taxa de mutacao (probabilidade de 0.05)
selecao=0.5; % fracao da populacao a ser mantida
manter=floor(selecao*tamPop); % numero de membros da populacao que sobrevivem
M=ceil((tamPop-manter)/2); % numero de cruzamentos

% calculo da probabilidade para a selecao dos pais
probab=1; %probabilidade
for ii=2:manter
    probab=[probab ii*ones(1,ii)];
end
Nprobab=length(probab);
probab=manter-probab+1; 


% Gerar a populacao inicial
iag=0; % contador para iniciar a geracao
% gerar a populacao aleatoria (Veja funcao randperm)
% deve ser uma matriz 20x20 (cromossomo + n. da populacao)
populacao = funcaoGeraMatriz();


%% Interacao pelas geracoes (LOOP PRINCIPAL)
while iag<maxit
    iag=iag+1; % incrementa o contador de geracoes
    
    %calcular o custo da populacao utilizando a funcao de aptidao
    populacao(:, 21) = cvfun(populacao);
    % colocar o custo minimo no elemento 1 (Veja funcao sort)
    % organizar a populacao com o custo mais baixo primeiro
    populacao = sortrows(populacao, 21);
    populacao = populacao(:, 1:20);
    % calcula o custo minimo da populacao (veja funcao min)
    % calcula a media aritmetica da populacao (veja funcao mean)
    
    % Escolha do Pai1 e Pa2 que s�o escolhidos aleatoriamente do vetor
    % probab
    escolha1=ceil(Nprobab*rand(1,M)); % escolher aleatoriamente na roleta os indiv�duos
    escolha2=ceil(Nprobab*rand(1,M)); % escolher aleatoriamente na roleta os indiv�duos
    indPai1=probab(escolha1); % selecionar os indices escolhidos na roleta para o pai 1
    indPai2=probab(escolha2); % selecionar os indices escolhidos na roleta para o pai 2
    
    % Execucao da Recombinacao (crossover)
    result = [];
    for ic=1:M
        %seleciona o Pai 1
        parents(1, :) = populacao(indPai1(1, ic), :);       
        %seleciona o Pai 2 
        parents(2, :) = populacao(indPai2(1, ic), :);       
        
        % Faz a t�cnica de recombina��o Cycle
        children = crossOver(parents);
        result = vertcat(result, children);
    end
    populacao(11:20, :) = result;   
    % Se calcula um novo custo para a nova popula��o
    
    
    %_______________________________________________________
    % Organiza em ordem crescente os custos e associa aos parametros

end %iga

%calcular o custo da populacao utilizando a funcao de aptidao
populacao(:, 21) = cvfun(populacao);
% colocar o custo minimo no elemento 1 (Veja funcao sort)
% organizar a populacao com o custo mais baixo primeiro
populacao = sortrows(populacao, 21);

%_______________________________________________________
% Mostrar os resultados
scatter(x(populacao(1,1)), y(populacao(1,1)));
hold on;
scatter(x(populacao(1,20)), y(populacao(1,20)));
hold on;
plot(x(populacao(1,1:2)), y(populacao(1,1:2)), "color", "black", 
     x(populacao(1,2:3)), y(populacao(1,2:3)), "color", "blue",
     x(populacao(1,3:4)), y(populacao(1,3:4)), "color", "blue",
     x(populacao(1,4:5)), y(populacao(1,4:5)), "color", "blue",
     x(populacao(1,5:6)), y(populacao(1,5:6)), "color", "blue",
     x(populacao(1,6:7)), y(populacao(1,6:7)), "color", "blue",
     x(populacao(1,7:8)), y(populacao(1,7:8)), "color", "blue",
     x(populacao(1,8:9)), y(populacao(1,8:9)), "color", "blue",
     x(populacao(1,9:10)), y(populacao(1,9:10)), "color", "blue",
     x(populacao(1,10:11)), y(populacao(1,10:11)), "color", "blue",
     x(populacao(1,11:12)), y(populacao(1,11:12)), "color", "blue",
     x(populacao(1,12:13)), y(populacao(1,12:13)), "color", "blue",
     x(populacao(1,13:14)), y(populacao(1,13:14)), "color", "blue",
     x(populacao(1,14:15)), y(populacao(1,14:15)), "color", "blue",
     x(populacao(1,15:16)), y(populacao(1,15:16)), "color", "blue",
     x(populacao(1,16:17)), y(populacao(1,16:17)), "color", "blue",
     x(populacao(1,17:18)), y(populacao(1,17:18)), "color", "blue",
     x(populacao(1,18:19)), y(populacao(1,18:19)), "color", "blue",
     x(populacao(1,19:20)), y(populacao(1,19:20)), "color", "red");