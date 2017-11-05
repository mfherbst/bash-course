[[ "o" =~ [^eulr] ]]; echo $?   #0=true
[[ "e" =~ [^eulr] ]]; echo $?   #1=false

#ATTENTION: this is not a cbe
[[ "a" =~ [o^ale] ]]; echo $?   #0=true
