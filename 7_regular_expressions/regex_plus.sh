[[ "woo (rd" =~ wo+ \( ]]; echo $?      #0=true
[[ "oo (rd" =~ (wo)+ \( ]]; echo $?     #1=false
[[ "wo (rd" =~ (wo)+ \( ]]; echo $?     #0=true
