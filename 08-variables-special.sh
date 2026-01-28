#!/bin/bash/


echo "All vars are passed to script: $@"

echo "number of vars passed:        $#"

echo "script name:                  $0"

echo "present which directory you have: $pwd"

echo "who is running this script:      $user"

echo "home directory of the user:      $home"

echo "PID of the script:               $$"

sleep 5&
echo "background process ID:           $!"

echo "Exit status of previous cmd:     $?"