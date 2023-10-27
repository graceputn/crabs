
function capt = getCapt (captSize)

%left side
captPt1 = [captSize;captSize;1]; %left shoulder
captPt2 = [-1.5*captSize;captSize;1]; %leaft hip
captPt3 = [-3*captSize;captSize;1]; %left foot

%right side
captPt4 = [-3*captSize;-captSize;1]; %right foot
captPt5 = [-1.5*captSize;-captSize;1]; %rigth hip
captPt6 = [captSize;-captSize;1]; %right shoulder

%head
captPt7 = [captSize;-captSize/2;1]; %right neck
captPt8 = [2*captSize;-captSize/2;1]; %right top of head
captPt9 = [2*captSize;captSize/2;1]; %left top of head
captPt10 = [captSize;captSize/2;1]; %left neck

%hand
captPt11 = [0;2*captSize;1]; %left hand
captPt12 = [0;-2*captSize;1]; %right hand

%net
captPt13 = [2*captSize;-2*captSize;1]; % where net meets handle
captPt14 = [-captSize;-2*captSize;1]; %handle of net
captPt15 = [2*captSize;-captSize;1]; %left bottom corner of net
captPt16 = [2*captSize;-3*captSize;1]; %right bottom corner of net
captPt17 = [4*captSize;-captSize;1]; % left top corner of net
captPt18 = [4*captSize;-3*captSize;1]; %right top corner of net
captPt21 = [3*captSize;-2*captSize;1]; %middle point of the net

%elbows
captPt19 = [captSize/2.5;-1.5*captSize;1]; %right
captPt20 = [captSize/2.5;1.5*captSize;1]; %left



capt=[captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14, captPt15, captPt16 ,captPt17, captPt18, captPt19, captPt20, captPt21];

endfunction
