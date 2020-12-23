%This script calculates the volume of a hollow sphere
%It is better to be aware that the first value to be entered is the outer
%radius, that has to be, in fact, the bigger one among the two
%pieq3 , 14/12/2020

r0 = input('Please enter the value of the outer radius: ') ; %this is the outer radius
r1 = input('And now please enter the value of the inner one: ') ; %this is the inner radius
V = (4 * pi /3) * ( r0 .^ 3 - r1 .^ 3 );
fprintf( 'The volume of a hollow sphere with %.2f inner radius \n and %.2f the outer one is %.2f \n' , r1 , r0 , V )