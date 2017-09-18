% Esta funcao retorna uma matrix 2xN que cria pontos randomicos no mapa, 
% com intervalo de ]0,1[
% A funcao arredonda em duas casas decimas os valores do plano.
function points = getPointsInPlane(N) 
  points = round(rand(N,2)*10^2)/10^2
end
  