# crabs

Function: getTranslation: number1 number2 -> matrix
Purpose: Number1 represents the amount to shift in the x direction and number2 the amount to shift in the y direction. 
getTranslation uses these number to create a 3x3 matrix that will translate an object stored as a 3xN matrix when it
multiplies the object matrix.
Dependencies: None.
Call: T = getTranslation(dx,dy)
Side Effect: None.
