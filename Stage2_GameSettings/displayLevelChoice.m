
function [ level, totalStars ] = displayLevelChoice(level)
% displayLevelChoice Takes a parameter, level and outputs user's choice of
% difficulty level and total stars in that level

if level == 'E'
    totalStars = 15;
    
elseif level == 'M'
    totalStars = 55;
    
elseif level == 'H'
    totalStars = 120;
    
elseif level == 'VIEW'
    totalStars = 0;
end
end