function children = crossOver(parents)  
  
  children = parents;
  %gera posição aleatória para trocar entre os cromossomos
  position = randi(20);  
  do
    hasRepeated = 0;
    %troca os valores dos cromossomos na posicao escolhida
    valueChild = children(1, position);
    children(1, position) = children(2, position);
    children(2, position) = valueChild;
    %verifica quais posições ficaram repetidas e retorne o loop para ajuste
    %se necessário
    for i=1:20
      if (i != position && children(1, i) == children(1, position)) 
        position = i;
        hasRepeated = 1;
        break;
      end
    end
  until hasRepeated == 0;
  %faz a mutação entre duas posições
  for i=1:2
    firstPosition = randi(20);
    do
      secondPosition = randi(20);
    until secondPosition != firstPosition;
    firstValue = children(i, firstPosition);
    children(i, firstPosition) = children(i, secondPosition);
    children(i, secondPosition) = firstValue;
  end  
end