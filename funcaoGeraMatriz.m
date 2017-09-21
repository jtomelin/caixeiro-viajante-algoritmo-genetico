function matrizPrincipal = funcaoGeraMatriz  
  
  for i=1:20
    matrizPrincipal(i,:) = randperm(20,20);
  end
 
end