clear all;
clc;

% code to play music while game is playing
% Music URL: https://soundcloud.com/kjs0118/game-background-music

% Define total stars
totalStars = 10;

% Load and play music
[y,Fs] = audioread('gameMusic.mp3');
player = audioplayer(y,Fs);
play(player);

% stop music when game ends
if totalStars <= 0
    stop(player);
end

