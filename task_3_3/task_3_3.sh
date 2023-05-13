#!/bin/bash

# 1) declare array by declare -a
declare -a logs=(/var/log/*.log)


# 2) declare array without declare -a
logs=(/var/log/*.log)

echo "${logs[@]}"
