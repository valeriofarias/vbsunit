' Examples of emails asserts 

false_email = "test"
false_email2 = "test@false"
false_email3 = "test@false."

email = "temp@something.com"
email2 = "temp2@something.com"

email_pattern = "^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"

assert_match email_pattern, false_email, "should be a valid email address"  ' fail
assert_match email_pattern, false_email2, "should be a valid email address" ' fail
assert_match email_pattern, false_email3, "should be a valid email address" ' fail
assert_match email_pattern, email, "should be a valid email address"
assert_match email_pattern, email2, "should be a valid email address"
 
assert_equal email, email2, "email2 should be equals to email"  ' fail
