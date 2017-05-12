function A = quicksort(A,left,right)
if left < right
    [A,q] = partition(A,left,right);
    A = quicksort(A,left,q-1); 
    A = quicksort(A,q+1,right); 
end
