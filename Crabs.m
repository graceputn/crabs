
function crabs ()

% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;


% Put your call to drawCapt() here ..... You must give drawCapt its
captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);
% input and output arguments.
%*******************************************************

% initial command
cmd = "null";

  while(cmd !="Q")

  %read the keyboard
  cmd = kbhit();

    if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s")

      %erase old captain
      for i=1:length(captainGraphics)
        set(captainGraphics(i),'Visible','off');
      endfor

      %move captain
      [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);

      %draw new captain
      captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

    endif

  endwhile

close all

endfunction

