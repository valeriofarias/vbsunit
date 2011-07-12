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

function results()
	results = tester.results()
end function

function errors_results()
	errors_results = tester.errors_results()
end function