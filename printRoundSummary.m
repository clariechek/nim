
function [] = printRoundSummary(playerInput)
% printRoundSummary Takes parameter, playerInput and prints each player's 
% input for each move

fprintf('Move       Player 1        Player 2\n');
fprintf('-----------------------------------------------\n');

% create empty vectors to store player's inputs
p1 =[];
p2 =[];
for k = 1:length(playerInput)
    % check for player 1 input
    if mod(k,2)~=0
        % concatenate each player's input into separate vectors
        p1 = [p1 playerInput(k)];
    else
        p2 = [p2 playerInput(k)];
    end
end

% if p1 is longer, append 0 into p2 so length of vectors equal
if length(p1)>length(p2)
    p2(length(p1)) = 0;
    % print each player's input for each move
    for move = 1:length(p1)
        fprintf('#%d            %d               %d\n', move,p1(move),p2(move));
        fprintf('\n');
    end
else
    % if vectors are equal length, print each player's input for each move
    for move = 1:length(p1)
        fprintf('#%d            %d               %d\n', move,p1(move),p2(move));
        fprintf('\n');
    end
end
end
