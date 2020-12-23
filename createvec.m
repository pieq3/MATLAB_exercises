function createvec(~,~)
%createvec creates a vector that iterates from a specified mymin to mymax (both values have to be entered by the user)
%returns a row vector of integers
%23/12/2020 , pieq3
%v1


%first try with the if operator :)

%value from you want to start
mymin = input('Please enter the value from where you want it to start: ') ;
%last number
mymax = input('Please enter the value from where you want it to end: ') ;

%let's check out if everything's ok ;)
if mymin > mymax
    temp = mymin;
    mymin = mymax;
    mymax = temp;
end

vec = mymin : mymax %here's your vector

end