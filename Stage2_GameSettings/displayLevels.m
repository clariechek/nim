
function [] = displayLevels(reply)
% displayLevels Takes a parameter,reply and displays all the difficulty 
% levels

if reply == 'Y'
    fprintf('Easy (15 stars) \n');
    % print 5 tier triangle of 15 stars
    asterisk = "";
    for i = 1:5
        asterisk = asterisk + "*";
        fprintf("%s \n",asterisk);
    end
    fprintf('\n');
    
    fprintf('Medium (55 stars) \n');
    % print 10 tier triangle of 55 stars
    asterisk = "";
    for i = 1:10
        asterisk = asterisk + "*";
        fprintf("%s \n",asterisk);
    end
    fprintf('\n');
    
    fprintf('Hard (120 stars) \n');
    % print 15 tier triangle of 120 stars
    asterisk = "";
    for i = 1:15
        asterisk = asterisk + "*";
        fprintf("%s \n",asterisk);
    end
    fprintf('\n');
    
elseif reply == 'N'
    fprintf('OK.\n');
end
end