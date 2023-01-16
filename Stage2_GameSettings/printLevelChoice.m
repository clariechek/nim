
function [] = printLevelChoice(level)
% printLevelChoice Takes a parameter, level and prints user's choice of 
% difficulty level or calls the displayLevels function if level is 'VIEW'

if level == 'E'
    fprintf('Easy (15 stars) \n');
    % print 5 tier triangle of 15 stars
    asterisk = "";
    for i = 1:5
        asterisk = asterisk + "*";
        fprintf("%s \n",asterisk);
    end
    fprintf('\n');
    
elseif level == 'M'
    fprintf('Medium (55 stars) \n');
    % print 10 tier triangle of 55 stars
    asterisk = "";
    for i = 1:10
        asterisk = asterisk + "*";
        fprintf("%s \n",asterisk);
    end
    fprintf('\n');
    
elseif level == 'H'
    fprintf('Hard (120 stars) \n');
    % print 15 tier triangle of 120 stars
    asterisk = "";
    for i = 1:15
        asterisk = asterisk + "*";
        fprintf("%s \n",asterisk);
    end
    fprintf('\n');
    
elseif level == 'VIEW'
    displayLevels('Y');
end
end