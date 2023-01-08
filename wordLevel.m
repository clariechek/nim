
function [ lvl ] = wordLevel(level)
% wordLevel Takes a parameter, level and outputs the corresponding word

if level == 'E'
    lvl = "Easy";
elseif level == 'M'
    lvl = "Medium";
elseif level == 'H'
    lvl = "Hard";
end
end