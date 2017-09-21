function matrizPrincipal = funcaoGeraMatriz
 
  matrizAux = randi(20,20,20);
  
  for i=1:21
    matrizAux(i,:) = randperm(20,20);
  end
 
end