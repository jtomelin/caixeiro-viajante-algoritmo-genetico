function children = crossOver(parents)  
  
  children = parents;
  position = randi(20);  
  do
    hasRepeated = 0;
    valueChild = children(1, position);
    children(1, position) = children(2, position);
    children(2, position) = valueChild;
    for i=1:20
      if (i != position && children(1, i) == children(1, position)) 
        position = i;
        hasRepeated = 1;
        break;
      end
    end
  until hasRepeated == 0;
end