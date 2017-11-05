[[ "wo (rd" =~ wo* \( ]]; echo $?       #0=true
[[ "woo (rd" =~ wo* \( ]]; echo $?      #0=true
[[ "oo (rd" =~ wo* \( ]]; echo $?       #1=false
[[ "oo (rd" =~ (wo)* \( ]]; echo $?     #0=true
[[ "wowo (rd" =~ (wo)* \( ]]; echo $?   #0=true
