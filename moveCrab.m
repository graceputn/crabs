
function [xCrab, yCrab, thetaCrab = moveCrab (cmd, x, y, theta, size, height, width)

  % This fucntion walks the crab sideways, swims the crab backwards and rotates it using the resolutions.
  % This crab can swim backwards such as the portunidae crab.
   % "j" = move left, "l" = move right, "k" = swim back, "i" = rotate clockwise, "o" rotate counter clockwise 
  % It returns the new position of the crab if it is in bounds, otherwise it returns the old positiion. 

  dStep = 10
  dTheta = pi/6;
  
  % r * (sin/cos (theta)) = new spot
  
  if (cmd == "j") 
    %move left
    xTemp = x + dStep * sin(theta);
    yTemp = y - dStep * cos(theta);
    
      if(isOnMap (xTemp, yTemp, size, height, width))
     
        xCrab = xTemp;
        yCrab = yTemp;
    
      else 
    
        xCrab = x;
        yCrab = y;
      
      endif
    
    thetaCrab = theta;
    
  elseif (cmd == "l")
    % move right
    xCrab = x - dStep * cos(theta);
    yCrab = y + dStep * sin(theta);
    thetaCrab = theta;
    
  elseif (cmd == "k") 
    % swim back
    xCrab = x - dStep * cos(theta);
    yCrab = y - dStep * sin(theta);
    thetaCrab = theta;
    
  elseif (cmd == "i")
    %rotate right
    xCrab = x;
    yCrab = y;
    thetaCrab = theta + dTheta;
    
  elseif (cmd == "o")
    %rotate left
    xCrab = x;
    yCrab = y;
    thetaCrab = theta - dTheta;
    
  endif



endfunction
