function fizzbuzz(number)
	temp = ""
	if number mod 3 = 0 then temp = "fizz"
	if number mod 5 = 0 then temp = temp & "buzz"
	if temp = "" then temp = number
	fizzbuzz = temp
end function

assert_equal  1, fizzbuzz(1), "should recieve a number" 
assert_equal "fizz", fizzbuzz(3), "should return fizz when recieve multiples of 3"
assert_equal "buzz", fizzbuzz(5), "should return buzz when recieve multiples of 5"
assert_equal "fizzbuzz", fizzbuzz(15), "should return fizzbuzz when recieve multiples of 3 and 5"
 
fizz_buzz_list = array(0)
for counter = 1 to 15
  if counter = 1 then fizz_buzz_list(0) = fizzbuzz(counter)
  if counter > 1 then redim preserve fizz_buzz_list(ubound(fizz_buzz_list) + 1 ) : fizz_buzz_list(ubound(fizz_buzz_list)) = fizzbuzz(counter)
next
fizzbuzz_string = join(fizz_buzz_list," ")
 
assert_equal "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz", fizzbuzz_string, "should return the follow sequence: 1 2 fizz 4 buzz..."  