clear all;
clc;

% code to check for overall winner for all rounds

% Define number of times each player wins
p1Win = 1;
p2Win = 0;

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
