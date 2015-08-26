[[ "woo (rd" =~ wo+ \( ]]; echo $?      #true
[[ "oo (rd" =~ (wo)+ \( ]]; echo $?     #false
[[ "wo (rd" =~ (wo)+ \( ]]; echo $?     #true
