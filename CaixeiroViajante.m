close all; clc; clear;

global iag x y
%% Configuracao Inicial
npar=20; % numero das variaveis para serem otimizadas (genes)
Nt=npar; % numero de colunas da matriz de populacao

x=rand(1,npar);
y=rand(1,npar); % cidades em (cidadeX, cidadeY)

% Adiciona o numero maximo de interacoes (Criterio de Parada)

% Parametros do AG
% tamanho da populacao
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

%calcular o custo da populacao utilizando a funcao de aptidao
% colocar o custo minimo no elemento 1 (Veja funcao sort)
% organizar a populacao com o custo mais baixo primeiro
% calcula o custo minimo da populacao (veja funcao min)
% calcula a media aritmetica da populacao (veja funcao mean)


%% Interacao pelas geracoes (LOOP PRINCIPAL)
while iag<maxit
    iag=iag+1; % incrementa o contador de geracoes
    
    % Escolha do Pai1 e Pa2 que são escolhidos aleatoriamente do vetor
    % probab
    escolha1=ceil(Nprobab*rand(1,M)); % escolher aleatoriamente na roleta os indivíduos
    escolha2=ceil(Nprobab*rand(1,M)); % escolher aleatoriamente na roleta os indivíduos
    indPai1=probab(escolha1); % selecionar os indices escolhidos na roleta para o pai 1
    indPai2=probab(escolha2); % selecionar os indices escolhidos na roleta para o pai 2
    
    % Execucao da Recombinacao (crossover)
    for ic=1:M
        %seleciona o Pai 1
        %seleciona o Pai 2 
       
        
        % Faz a técnica de recombinação Cycle

    % Faz a Mutacao da populacao

   
    % Se calcula um novo custo para a nova população
    
    
    %_______________________________________________________
    % Organiza em ordem crescente os custos e associa aos parametros

end %iga


%_______________________________________________________
% Mostrar os resultados

