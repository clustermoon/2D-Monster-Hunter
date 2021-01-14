/// @description Marks the start of a debug message
/// @param description(s)... string
function print_debug_message_start(){
	
	var arg_string = ""

	for (var i = 0; i < argument_count; i += 1) {
	   arg_string += argument[i];
	}

	show_debug_message("\n////////// " + arg_string + " START //////////");

}