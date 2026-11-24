#!/usr/bin/env nu
#MISE description="Check for unsaved projects"

cd $env.MISE_PROJECT_ROOT

print "Unsaved scaffolds:"
^fd '\[\[|\]\]'
    | lines
    | path dirname
    | where {|dir| not ($dir | str contains "/") }
    | sort
    | each {|dir| print $"  ($dir)" }
    | ignore
