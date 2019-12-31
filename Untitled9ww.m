close all
clear all
clc
x = input('What is your string: ');
h=string;
z=0;
while x>0
y=rem(x,10);
z=z*10+y;
x=floor(x./10);
end
z
if h == z;
	disp (['The string is a palindrome.'])
else
	disp (['The string is not a palindrome.'])
end