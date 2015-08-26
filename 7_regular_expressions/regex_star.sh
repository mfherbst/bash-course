[[ "wo (rd" =~ wo* \( ]]; echo $?       #true
[[ "woo (rd" =~ wo* \( ]]; echo $?      #true
[[ "oo (rd" =~ wo* \( ]]; echo $?       #false
[[ "oo (rd" =~ (wo)* \( ]]; echo $?     #true
[[ "wowo (rd" =~ (wo)* \( ]]; echo $?   #true
