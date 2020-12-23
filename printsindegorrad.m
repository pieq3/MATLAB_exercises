%

angle = input('Please enter the value of an angle: ');
unit = input('Is it in (r)adians (the default) or (d)egrees?: ' , 's' );

if unit == 'd'
    
    sine = sind(angle);
    
else
    
    sine = sin(angle);
    
end

fprintf('The value of an angle of %u %s is %.5f \n' , angle , unit , sine )