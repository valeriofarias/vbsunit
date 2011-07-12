function factorial(n)
	if(vartype(n) <> 2) then factorial = (-1) : exit function
    if(n < 0) then factorial = (-1) : exit function
    if(n = 0) then factorial = 1 : exit function
    factorial = n * factorial(n - 1)
end function