[[ "o" =~ [^eulr] ]]; echo $?   #true
[[ "e" =~ [^eulr] ]]; echo $?   #false

#ATTENTION: this is not a cbe
[[ "a" =~ [o^ale] ]]; echo $?
