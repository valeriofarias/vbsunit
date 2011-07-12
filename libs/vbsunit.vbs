' Class: VBSUnit
' Licence: MIT
' Author: Valério Farias
' Contact: http://github.com/valeriofarias

class VBSUnit
    
 	public dots
	public failures
	public errors

    private sub Class_initialize()
        redim dots(0)
		redim failures(0)
		redim errors(0)
    end sub
    
    private sub Class_terminate()
    end sub
    
	public sub assert(asserted, message)
    
		on error resume next
        
		if( asserted ) then
				
			redim preserve dots(ubound(dots) + 1) : dots(ubound(dots)) = "."
				
		else
			
			dim failure_number, failure_description
			
			redim preserve dots(ubound(dots) + 1) : dots(ubound(dots)) = "F"
			redim preserve failures(ubound(failures) + 1)
			
			failure_number      = ubound(failures)
			failure_description = failure_number & ". Failure: " & vbNewLine &_
								  message & vbNewLine	
				
			failures(ubound(failures)) = failure_description 
		
		end if
		
        if Err.Number <> 0 then
		
		  if errors(ubound(errors)) <> error_description then 
		  
				dim error_description
				error_description = "Error " & err.number & " - " & err.description & vbNewLine & err.source

				redim preserve errors(ubound(errors) + 1) : errors(ubound(errors)) = error_description
				err.clear
          
		  end if 				
		
		end if
		
        on error goto 0
    end sub
    
	public sub assert_equal(expected, actual, message)
		assert (expected = actual), message & " Expected:(" & expected & ") Actual: (" & actual & ")"
	end sub
	
	public sub assert_not_equal(expected, actual, message)
		assert  not(expected = actual), message & " Expected:(" & expected & ") Actual: (" & actual & ")"
	end sub
	
	public sub assert_match(expected, actual, message)
		set regex = new RegExp
		regex.pattern = expected
		regex.ignorecase = true
		assert regex.test(actual), message & " Expected:(" & expected & ") Actual: (" & actual & ")"
	end sub
	
	public sub assert_true(asserted, message)
		assert (asserted), message & " Asserted: (" & asserted & ")"
	end sub
	
	public sub assert_false(asserted, message)
		assert not (asserted), message & " Asserted: (" & asserted & ")"
	end sub
	
	
	Public function results()
		
		dim assertions_number, failures_number, errors_number, failures_descriptions
		
		assertions_number = cstr(ubound(dots) - ubound(failures))
		failures_descriptions =  join(failures, vbNewLine)
		failures_number = ubound(failures)
		errors_number = ubound(errors)
		
		results =  join(dots) & vbNewLine & failures_descriptions & vbNewLine & vbNewLine &_ 
				   assertions_number & " assertions,  " & failures_number & " failures, " & errors_number &  " errors." & vbNewLine
	
	end function
	
		
	Public function errors_results()
	
		if (ubound(errors) > 0) then 

			errors_results = trim(join(errors))
		
		else
		
			errors_results = ""
		
		end if 
	
	end function
	
end class
