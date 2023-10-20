
function jelly = getJelly (size)
  
  pt1 = [-7*size; size; 1];
  pt2 = [-5*size; size; 1];
  pt3 = [-3*size; 2*size; 1];
  pt4 = [-size; size; 1];
  pt5 = [size; size; 1];
  
  pt6 = [-9*size; -2*size; 1];
  pt7 = [-5*size; 0; 1];
  pt8 = [-3*size; -size; 1];
  pt9 = [-size; 0; 1]; 
  
  pt10 = [-5*size; -size; 1];
  pt11 = [-3*size; -2*size; 1];
  pt12 = [-size; -size; 1];
  pt13 = [size; -size; 1];
  
  jelly = [pt1, pt2, pt3, pt4, pt5, pt6, pt7, pt8, pt9, pt10, pt11, pt12, pt13];

endfunction
