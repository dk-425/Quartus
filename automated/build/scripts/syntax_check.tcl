# Read the file list from the command line arguments
set files [split [lindex $argv 0] " "]

# open project fir_filter with revision name filtref
# project_open dummy -revision filtref
project_new syntax_check -overwrite
set_global_assignment -name FAMILY "Agilex"

foreach file $files {
    post_message $file;         # echo which file was analyzed
    catch {
        analyze_files -files $file -library work; # analyze file for syntax
    }
}

project_close; # close project