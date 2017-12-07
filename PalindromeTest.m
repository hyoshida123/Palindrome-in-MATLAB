function [ isPalindrome ] = PalindromeTest( inPhrase )
% Test if a phrase is a palindrome.

% All whitespace characters are removed by:
%  1. isspace() finds all whitespace chars,
%  2. negated isspace(), i.e. ~ispace finds 
%     all the non-white-space characters 
nonSpaceIdx = ~isspace(inPhrase); 
inPhrase = inPhrase(nonSpaceIdx);
 
% Palindrome word test
isPalindrome = strcmpi(inPhrase,inPhrase(end:-1:1));
end