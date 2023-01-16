% Game of Nim - Stage 1 Initialisation
% Clarie Chek Yik Ling
% a1762428

clear all;
clc;

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

% print game start
fprintf('%s VS %s\n', p1Name, p2Name);
fprintf('Let the game begin!\n');