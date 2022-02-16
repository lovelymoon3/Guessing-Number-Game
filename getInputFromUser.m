% ask the user for three digit numbers (the range is from 0 to 9)
function [guess] = getInputFromUser()

    guess(1) = input('enter the number in the first place: ');
    guess(2) = input('enter the number in the second place: ');
    guess(3) = input('enter the number in the third place: ');

% while the user writes any repeated digits, ask the user for three different digits again
% if the user entered the same numbers, then this is not counted as an attempt
while guess(1)==guess(2) || guess(2)==guess(3) || guess(3)==guess(1)
    disp('You entered the same number. Please enter three different digits.');
    fprintf('\n');
    guess(1) = input('enter the number in the first place: ');
    guess(2) = input('enter the number in the second place: ');
    guess(3) = input('enter the number in the third place: ');
end
end