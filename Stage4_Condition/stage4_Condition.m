% Game of Nim - Stage 4 Condition
% Clarie Chek Yik Ling
% a1762428

clear all;
clc;

% Define total stars, turn, playerInput, winnerVec,levelVec, round, p1Win 
% and p2Win

totalStars = 0;
turn = 2;
playerInput = [2 2 1 2];
winnerVec = [2];
levelVec = ["Medium"];
round = 1;
p1Win = 0;
p2Win = 1;

% check game result
[result] = checkResult(totalStars);
[turn] = printResult(result,turn);
printRoundSummary(playerInput);
playAgain = newRound();

while playAgain == 'Y'
    fprintf("Play again.\n");
    playAgain = newRound();
end

% print game summary
fprintf('Round        Winner          Difficulty\n');
fprintf('-----------------------------------------------\n');
for r = 1:round
    fprintf('#%d            Player %d         %s\n', r,winnerVec(r),levelVec(r));
    fprintf('\n');
end

% check and print overall winner
if p1Win > p2Win
    fprintf('Player 1 wins: %d times.\n', p1Win);
    fprintf('Player 2 wins: %d times.\n', p2Win);
    fprintf('The overall winner is Player 1!\n');
    fprintf('Game end.\n');
elseif p2Win > p1Win
    fprintf('Player 1 wins: %d times.\n', p1Win);
    fprintf('Player 2 wins: %d times.\n', p2Win);
    fprintf('The overall winner is Player 2!\n');
    fprintf('Game end.\n');
elseif p1Win == p2Win
    fprintf('Player 1 wins: %d times.\n', p1Win);
    fprintf('Player 2 wins: %d times.\n', p2Win);
    fprintf('It is a tie.\n');
    fprintf('Game end.\n');
end
