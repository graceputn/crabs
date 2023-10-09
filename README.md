# crabs

Function: getTranslation: number1 number2 -> matrix <br>
Purpose: Number1 represents the amount to shift in the x direction and number2 the amount to shift in the y direction. getTranslation uses these number to create a 3x3 matrix that will translate an object stored as a 3xN matrix when it multiplies the object matrix. <br>
Dependencies: None. <br>
Call: T = getTranslation(xCapt,yCapt) <br>
Side Effect: None. <br>
<br>
<br>
Function: getCapt: number -> matrix <br>
Purpose: Function expects a number and returns a series of points stored in columns of a matrix.<br>
Dependencies: None. <br>
Call: capt = getCpat (captSize) <br>
Side Effect: None <br>
<br>
<br>
Function: drawLine: vector vector color -> graphics handle <br>
Purpose: Function draws lines between points using the points created in function getCapt. 
Dependencies: depends on Octave's plot function. <br>
Call: handle = drawLine (p, q, mycolor) <br>
Side Effects: draws lines from points to points. <br>
<br>
<br>
Function: drawCapt: captainGraphics: number1 number2 number3 number4 -> vector <br>
Purpose: draws the captain at the given (xCapt , yCcapt) position with the heading theatCapt. <br>
Dependencies: getCapt, getRotation, getTranslation, drawLine <br>
Call: captainGraphics = drawCapt (xCapt, yCapt, thetaCapt, captSize) <br>
Side Effects: draws all of the lines between the points to create the captain in the window. <br>
<br>
<br>
Function: moveCapt : number1 number2 number3 -> moveCapt <br>
Purpose: allows user to rotate and move the captain using the keyboard. <br>
Dependencies: isOnMap <br>
Call: [xCapt, yCapt, thetaCapt] = moveCapt (cmd, x, y, theta, width, height, size) <br>
Side Effects:  
