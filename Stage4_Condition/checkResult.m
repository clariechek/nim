
function [ result ] = checkResult(totalStars)
% checkResult Takes parameter, totalStars and checks if total stars is less
% than or equal to 0, and outputs the result

if totalStars <= 0
    result = "win";
else
    result = "resume";
end
end
