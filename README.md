# crabs

Function: getTranslation: number1 number2 -> matrix <br>
Purpose: Number1 represents the amount to shift in the x direction and number2 the amount to shift in the y direction. <br>
getTranslation uses these number to create a 3x3 matrix that will translate an object stored as a 3xN matrix when it
multiplies the object matrix. <br>
Dependencies: None. <br>
Call: T = getTranslation(dx,dy) <br>
Side Effect: None. <br>
<br>
<br>
Function: getCapt: number -> plots <br>
Purpose: Function expects a number and returns a series of plots. 
<br>
<br>
Function: drawLine: vector vector color -> graphics handle <br>
Purpose: Function draws lines between plots using the points created in function drawCapt. 
