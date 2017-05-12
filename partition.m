function [A,q] = partition(A,left,right)
 
pivot = A(right);
pointer_div = left-1;
for pointer = left:(right-1)
    if A(pointer) <= pivot
        pointer_div = pointer_div + 1;
        tmp = A(pointer_div);
        A(pointer_div) = A(pointer);
        A(pointer) = tmp;
    end
end
 
tmp = A(right);
A(right) = A(pointer_div+1);
A(pointer_div+1) = tmp;
 
q = pointer_div+1;
