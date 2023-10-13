
function crabs ()

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

% Draw initail captain and crab
captGraphics = drawCapt (xCapt , yCapt , thetaCapt , captSize);
crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , crabSize);



% initial command
cmd = "null";

  while(cmd !="Q")

  %read the keyboard
  cmd = kbhit();

    if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s")

      %erase old captain
      for i=1:length(captGraphics)
        set(captGraphics(i),'Visible','off');
      endfor

      %move captain
      [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,captSize);

      %draw new captain
      captGraphics = drawCapt (xCapt , yCapt , thetaCapt , captSize);

    elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd =="o")

      %erase old crab
       for i=1:length(crabGraphics)
         set(crabGraphics(i),'Visible','off');
       endfor

      %move crab
      [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapWidth,mapHeight,crabSize);

      %draw new captain and crab
      crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,crabSize);

    endif

  endwhile

close all
clear

endfunction

