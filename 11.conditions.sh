#!/bin/bash

num=$1
target=50
if [$num -gt $target]; then
    echo " > target achieved."

elif [$num -eq $target]; then
    echo " = target achieved."

else
    echo " target not achieved."

fi