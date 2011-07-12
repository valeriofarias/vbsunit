Sub Include(file)

	Dim file_system_object, loaded_file, file_string

	Set file_system_object = CreateObject("Scripting.FileSystemObject")
	
	if GLOBAL_PATH_VBSUNIT <> "" Then
		file = GLOBAL_PATH_VBSUNIT & file
	end if 
	
	If file_system_object.FileExists(file) Then
		Set loaded_file = file_system_object.OpenTextFile(file)
		file_string = loaded_file.ReadAll
		loaded_file.Close
		ExecuteGlobal(file_string)
	else 
		wscript.echo "File not Found: " & file 
		wscript.quit
	End If
	Set file_system_object = Nothing
	Set file_string = Nothing
	Set loaded_file = nothing
End Sub