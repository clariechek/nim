clear all;
clc;

% code to read in username

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

