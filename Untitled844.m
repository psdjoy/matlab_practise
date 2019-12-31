close all
clear all
clc

string = input('What is your string: ', 's');
fliplr(string)
if string == fliplr(string);
	disp (['The string, ' string ', is a palindrome.'])
else
	disp (['The string, ' string ', is not a palindrome.'])
end