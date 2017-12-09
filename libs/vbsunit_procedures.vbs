dim tester : set tester = new VBSUnit

sub assert_equal(expected, actual, message)
 	tester.assert_equal expected, actual, message	
end sub

sub assert_not_equal(expected, actual, message)
 	tester.assert_not_equal expected, actual, message	
end sub

sub assert_match(expected, actual, message)
	tester.assert_match expected, actual, message	
end sub

sub assert_true(asserted, message)
	tester.assert_true asserted, message	
end sub

sub assert_false(asserted, message)
	tester.assert_false asserted, message	
end sub

sub assert_equal_eps(expected, actual, eps, message)
 	tester.assert_equal_eps expected, actual, eps, message	
end sub

sub assert_not_equal_eps(expected, actual, eps, message)
 	tester.assert_not_equal_eps expected, actual, eps, message	
end sub

function results()
	results = tester.results()
end function

function errors_results()
	errors_results = tester.errors_results()
end function