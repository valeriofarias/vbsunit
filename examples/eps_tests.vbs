
' pass
assert_not_equal_eps 0.1, 0.2, 0.001, "0.1 and 0.2 are not equal"
assert_equal_eps 0.201, 0.202, 0.01, "0.201 and 0.202 are close enough"

' fail
assert_not_equal_eps 0.2, 0.2, 0.001, "0.2 and 0.2 are not equal"
assert_equal_eps 0.501, 0.202, 0.01, "0.501 and 0.202 are close enough"
