
function handle = drawLine (p, q, mycolor)

%{
drawLine draws a line from point p to point q
%}
% extract the x coordinates
x=[ p(1) ; q(1) ];

% extract the y coordinates
y=[ p(2) ; q(2) ];

handle = plot(x,y,mycolor);

set(handle, "LineWidth", 1.75);

endfunction
