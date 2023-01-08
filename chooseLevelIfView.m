
function [level] = chooseLevelIfView(level)
% chooseLevelIfView Takes a parameter, level and calls printLevelChoice and 
% chooseLevel functions if level is VIEW and outputs level chosen

while level == 'VIEW'
    printLevelChoice(level);
    level = chooseLevel();
end
end