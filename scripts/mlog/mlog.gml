///log(string)
	var message = argument0

	global.log_file = file_text_open_append(working_directory+"debug.log")
	file_text_write_string(global.log_file, message)
	file_text_writeln(global.log_file)
	file_text_close(global.log_file)
