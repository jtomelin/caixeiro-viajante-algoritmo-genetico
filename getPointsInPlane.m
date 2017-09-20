% Esta funcao retorna uma matrix cidadesxcidades que cria pontos randomicos no mapa.
% A funcao arredonda em duas casas decimas os valores do plano.
%TODO: Verificar em linha se ha valores repetidos
function points = getPointsInPlane(cities) 
  points = randi(cities, cities);
end
  