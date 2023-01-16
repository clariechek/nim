clear all;
clc;

% driver for readPlayerInput2

totalStars = 5;
[ playerInput,totalStars,result, turn ] = readPlayerInput2(totalStars);
fprintf("\n");
fprintf("Player input is: ");
fprintf("%d ",[playerInput]);
fprintf("\n");
fprintf("Total stars left is: %d\n",totalStars);
fprintf("Result is: %s\n",result);
fprintf("Turn is: Player %d\n",turn);
