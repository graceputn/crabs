
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
healthCapt = 100;
caught = 0;

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
jellySting = 2;

% Draw initail captain and crab
[captGraphics, xNet, yNet] = drawCapt (xCapt , yCapt , thetaCapt , captSize);
crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , crabSize);
jellyGraphics = drawJelly (xJelly, yJelly, thetaJelly, jellySize);

%pring health status
  healthLoc=[100,100];
  caughtLoc=[100,175];
  healthStatus=text(healthLoc(1),healthLoc(2),strcat('Health=',num2str(healthCapt)),'FontSize',12,'Color','red');
  caughtStatus=text(caughtLoc(1),caughtLoc(2),strcat('Crabs Caught =',num2str(caught)),'FontSize',12,'Color','red');

% initial command

  while(1)
  
  %remove and plot new health and points status to screen
  delete(healthStatus);
  delete(caughtStatus);
  
  healthStatus=text(healthLoc(1),healthLoc(2),strcat('Health=',num2str(healthCapt)),'FontSize',12,'Color','red');
  caughtStatus=text(caughtLoc(1),caughtLoc(2),strcat('Crabs Caught =',num2str(caught)),'FontSize',12,'Color','red');
  
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
  
    if ( getDist(xJelly,yJelly,xCapt,yCapt) < 3*captSize )
      healthCapt = healthCapt - jellySting;
    endif
  
    if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s")

      %erase old captain
      for i=1:length(captGraphics)
        delete(captGraphics(i));
      endfor

      %move captain
      [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapHeight,mapWidth,captSize);

      %draw new captain
      [captGraphics, xNet, yNet] = drawCapt (xCapt , yCapt , thetaCapt , captSize);

    endif 
       
       if(getDist(xNet,yNet,xCrab,yCrab)<2*captSize) %crab is caught
       
       %keep track of how many crabs are caught
       caught = caught + 1;
       
      %erase old crab
       for i=1:length(crabGraphics)
         delete(crabGraphics(i));
       endfor

       %create new crab. initialize new crab location, heading, and size
       xCrab = rand*mapWidth;
       yCrab = rand*mapHeight;
       thetaCrab = -pi/2;
       crabSize = 50;
       
       %draw new crab
       crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,crabSize);
       
       endif

    fflush(stdout);
    pause(0.01)
    
  endwhile

close all
clear

endfunction

