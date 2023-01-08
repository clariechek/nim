clear all;
clc;

% create empty vector to store level for each round
levelVec = [];

% game settings
reply = askToViewLevel();
displayLevels(reply);
level = chooseLevel();
level = chooseLevelIfView(level);
lvl = wordLevel(level);
levelVec = [levelVec lvl];
printLevelChoice(level);
[level,totalStars]=displayLevelChoice(level);

% count and print round
round = 1;
fprintf('Round %d\n',round);

% create empty vector to store winner for each round
winnerVec = [];

% game loop
[ playerInput,totalStars,result,turn ]=readPlayerInput2(totalStars);
turn = printResult(result,turn);
printRoundSummary(playerInput);
winnerVec = [winnerVec turn];
playAgain = newRound();
while playAgain == 'Y'
    % update count to next round and print new round
    round = round + 1;
    fprintf('Round %d\n',round);
    reply = askToViewLevel();
    displayLevels(reply);
    level = chooseLevel();
    level = chooseLevelIfView(level);
    lvl = wordLevel(level);
    levelVec = [levelVec lvl];
    printLevelChoice(level);
    [level,totalStars]=displayLevelChoice(level);
    [ playerInput,totalStars,result,turn ]=readPlayerInput2(totalStars);
    turn = printResult(result,turn);
    printRoundSummary(playerInput);
    winnerVec = [winnerVec turn];
    playAgain = newRound();
end

% print game summary
fprintf('Round        Winner          Difficulty\n');
fprintf('-----------------------------------------------\n');

% count number of times each player wins
p1Win = 0;
p2Win = 0;

for r = 1:round
    fprintf('#%d            Player %d         %s\n', r,winnerVec(r),levelVec(r));
    fprintf('\n');
    if winnerVec(r) == 1
        p1Win = p1Win + 1;
    elseif winnerVec(r) == 2
        p2Win = p2Win + 1;
    end
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