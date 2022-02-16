% Guessing number game :
% guess the exact positions of three different numbers
% the user needs to enter three different digits
% the user gets 10 chances to guess the numbers otherwise the game is over!

% provide random three digit numbers
% the range of the number in each place is from 0 to 9
a = randi([0,9]); 
b = randi([0,9]); 
c = randi([0,9]); 

% while the number contains repeated digits, the digits will be generated
% again
while a==b || b==c || c==a
    a = randi([0,9]);
    b = randi([0,9]); 
    c = randi([0,9]); 
end

% random vector 'A'
A = [a b c];

% display game descriptions
disp ('Guess the exact positions of three different numbers.');
disp ('The range of each number is from 0 to 9!');
disp ('You have only 10 chances to win');
disp ('Lets get started!');
fprintf('\n');

% ask the user for three digit numbers (the range is from 0 to 9)
guess=getInputFromUser();

chance = 0; 

% while the user gets at least one of the digits wrong!
while guess(1)~=a || guess(2)~=b || guess(3)~=c

% count how many digits the user guesses correctly regardless of position
 digit = 0;
for i = 1:3
    if (guess(i)==a || guess(i)==b || guess(i)==c)
        digit = digit+1;
    end
end

% count how many places the user guesses correctly
place = 0;
if guess(1)==a
    place = place+1;
end
if guess(2)==b
    place = place+1;
end
if guess(3)==c
    place = place+1;
end


% print out how many times the user tries to guess the number
if a~=guess(1) || b~=guess(2) || c~=guess(3) % if the user gets the answer wrong
    chance = chance+1; % count the number of attempt
    fprintf('This is your %d attempt(s)\n', chance);
end

% if the user have tried to guess the number 10 times, break the loop
if chance>9 
% the reason why chance is greater than 9(not 10)is that the user already tried it once in outside of while loop
    break
end

% print out the numbers of digits and positions the user guesses correctly
fprintf('You got %d right digit(s) and %d right place(s)\n', digit, place);
fprintf('\n')

% if guess is wrong
% ask the user for trying to guess the number again

guess=getInputFromUser();

end

% when you get the answer correct within 10 times (including one chance in outside of while-loop)
if chance<=9 
% print out
    disp('Yay! you got the right number! Good job!');
elseif chance>9 % when you tried it more than 10 times (including one chance in outside of while-loop)
    disp('The game is over! Try it again!');
    fprintf('The answer was [%d, %d, %d]\n', A(1), A(2), A(3));
end

% divide into three different levels
% 1-6 times -> master / 7-8 times -> intermediate / 9-10 times -> beginner
if chance<=5 % if the user guesses the number within 6 times -> master!
    disp('You are a master of this game! Awesome!');
elseif chance>5 && chance<=7 % if the user guesses the number 7 times or 8 times -> intermediate!
    disp('You are an intermediate of this game! Good job!');
elseif chance>7 && chance<=9 % if the user guesses the number 9 or 10 times -> beginner!
    disp('You are a beginner of this game! Try it again!');
end

fprintf('\n');
