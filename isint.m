function isint(~)
%This function shows if a number (or more, given in a row vector) is an integer.
%21/12/2020 , pieq3
%v1

innum = input('Please enter the number: ') ;
int = innum == int32(innum);
display(int)

%otherwise it can be used this form
%s = isinteger(innum)

end