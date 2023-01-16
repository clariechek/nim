
function [ totalStars ] = calculateTotalStars(totalStars, playerInput)
% calculateTotalStars Takes in 2 parameters, totalStars and playerInput, 
% calculates the total stars left, and calls the printStarsLeft function 

totalStars = totalStars - playerInput;
printStarsLeft(totalStars);
end