% Game of Nim - Final
% Clarie Chek Yik Ling
% a1762428

clear all;
clc;

% start music
[y,Fs] = audioread('gameMusic.mp3');
player = audioplayer(y,Fs);
play(player);

% display instructions
fprintf('Welcome to the Game of Nim!\n')
fprintf('Here are some game rules:\n');
fprintf('1. This is a two player game where each player takes turn to remove stars.\n');
fprintf('2. There are 3 difficulty levels: Easy (15 stars), Medium (55 stars), Hard (120 stars).\n');
fprintf('3. The goal of the game is to be the player who removes the last star.\n');
fprintf('4. At each turn, each player can remove only 1 or 2 stars.\n');
fprintf('\n');

% read in Player 1 username
fprintf('Player 1: Please enter your username:\n');
fprintf('1. Use letters only.\n');
fprintf('2. No special characters or numbers\n');
fprintf('3. One word\n');
p1Name = input(" ",'s');

% print error if empty input
while isempty(p1Name) == 1
    fprintf('No input. Try again.\n');
    fprintf('Player 1: Please enter your username:\n');
    fprintf('1. Use letters only.\n');
    fprintf('2. No special characters or numbers\n');
    fprintf('3. One word\n');
    p1Name = input(" ",'s');
end

% print Player 1 username
fprintf('Player 1: %s\n',p1Name);
fprintf('\n');

% convert character to number
p1NameVal = double(p1Name);

% print error message if input is not letters
for i = 1:length(p1NameVal)
    while ~(p1NameVal(i) >= 65 && p1NameVal(i) <= 90 || p1NameVal(i) >= 97 && p1NameVal(i) <= 122)
        fprintf('Wrong input. Try again.\n');
        fprintf('Player 1: Please enter your username:\n');
        fprintf('1. Use letters only.\n');
        fprintf('2. No special characters or numbers\n');
        fprintf('3. One word\n');
        p1Name = input(" ",'s');
        fprintf('Player 1: %s\n',p1Name);
        fprintf('\n');
    end
end

% read in Player 2 username
fprintf('Player 2: Please enter your username:\n');
fprintf('1. Use letters only.\n');
fprintf('2. No special characters or numbers\n');
fprintf('3. One word\n');
p2Name = input(" ",'s');

% print error if empty input
while isempty(p2Name) == 1
    fprintf('No input. Try again.\n');
    fprintf('Player 2: Please enter your username:\n');
    fprintf('1. Use letters only.\n');
    fprintf('2. No special characters or numbers\n');
    fprintf('3. One word\n');
    p2Name = input(" ",'s');
end

% print Player 2 username
fprintf('Player 2: %s\n',p2Name);
fprintf('\n');

% convert character to number
p2NameVal = double(p2Name);

% print error message if input is not letters
for i = 1:length(p2NameVal)
    while ~(p2NameVal(i) >= 65 && p2NameVal(i) <= 90 || p2NameVal(i) >= 97 && p2NameVal(i) <= 122)
        fprintf('Wrong input. Try again.\n');
        fprintf('Player 2: Please enter your username:\n');
        fprintf('1. Use letters only.\n');
        fprintf('2. No special characters or numbers\n');
        fprintf('3. One word\n');
        p2Name = input(" ",'s');
        fprintf('Player 2: %s\n',p2Name);
        fprintf('\n');
    end
end

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

% print game start
fprintf('%s VS %s\n', p1Name, p2Name);
fprintf('Let the games begin!\n');

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
    play(player);
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

% stop music
stop(player);
