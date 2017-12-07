% string_lab 
% Hideaki Yoshida

string1 = input('Enter string number 1 for the equality comparison: ', 's');
string2 = input('Enter string number 2 for the equality comparison: ', 's');
fprintf('The length of string 1 is %d characters.\n',length(string1));
fprintf('The length of string 2 is %d characters.\n',length(string2));

%compare the strings with upper-lower case matching and show the result
compareWithCase = strcmp(string1,string2);
fprintf('Upper-Lower compare result (1=true,0=false): %d.\n',compareWithCase);

fprintf('Compare result(Ignore any upper-lower case differences)(1=true,0=false): %d.\n',strcmpi(string1,string2));
punctIdx1 = isstrprop(string1, 'punct');
punctIdx2 = isstrprop(string2, 'punct');
string1(punctIdx1) = [];
string2(punctIdx2) = [];

fprintf('Palindrome Test result (1=true,0=false): %d.\n',PalindromeTest(string1));
fprintf('Palindrome Test result (1=true,0=false): %d.\n',PalindromeTest(string2));
