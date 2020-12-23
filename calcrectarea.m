function calcrect = calcrectarea( ~ , ~ )
%calcrectarea
% This function calculates the area of a rectangle by giving 
% the value of its length and width
% pieq3, 13/12/2020
% v1


length = input('Please enter the length of the rectangle (in mm): ');
width = input('Please enter the width of the rectangle (in mm): ');
calcrect = length .* width;
fprintf('\n')
fprintf('The area of a rectangle with %.2f length and %.2f width \n' , length , width )
fprintf('is %.2f '  , calcrect )
fprintf('so we need %d square mm \n' , ceil(calcrect))
end