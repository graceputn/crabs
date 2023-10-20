
function Crabs (level)

% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
captSize = 50;

% Initialize crab location, heading and size
xCrab = 1000;
yCrab = 1200;
thetaCrab = -pi/2;
crabSize = 50;

%initialize jelly location, heading, and size
xJelly = rand*mapWidth;
yJelly = 0;
thetaJelly = -pi/2;
jellySize = 25;

% Draw initail captain and crab
captGraphics = drawCapt (xCapt , yCapt , thetaCapt , captSize);
crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , crabSize);
jellyGraphics = drawJelly (xJelly, yJelly, thetaJelly, jellySize);


% initial command

  while(1)
  
  %erase old jelly
  for i=1:length(jellyGraphics)
    delete(jellyGraphics(i));
  endfor
 
  %move jellyfish
  [xJelly,yJelly,thetaJelly] = moveJelly (level,xJelly,yJelly,thetaJelly,mapHeight,mapWidth,jellySize);
  
  %draw new jellyfish
  jellyGraphics = drawJelly (xJelly, yJelly, thetaJelly, jellySize);

  %read the keyboard
  cmd = kbhit(1);
  if (cmd =="Q")
      break
  endif
  
    if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s")

      %erase old captain
      for i=1:length(captGraphics)
        delete(captGraphics(i));
      endfor

      %move captain
      [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapHeight,mapWidth,captSize);

      %draw new captain
      captGraphics = drawCapt (xCapt , yCapt , thetaCapt , captSize);

    elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd =="o")

      %erase old crab
       for i=1:length(crabGraphics)
         delete(crabGraphics(i));
       endfor

      %move crab
      [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapHeight,mapWidth,crabSize);

      %draw new crab
      crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,crabSize);

    endif

    fflush(stdout);
    pause(0.01)
    
  endwhile

close all
clear

endfunction

