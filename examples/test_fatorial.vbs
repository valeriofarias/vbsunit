Include("factorial.vbs")

assert_equal  -1, factorial(-1), "factorial(-1) should return -1" 
assert_equal   1, factorial(0) , "factorial(0) should return 1"
assert_equal   1, factorial(1) , "factorial(1) should return 1"
assert_equal   2, factorial(2) , "factorial(2) should return 2"
assert_equal   6, factorial(3) , "factorial(3) should return 6"
assert_equal  -1, factorial("string"), "factorial('string') should return -1"