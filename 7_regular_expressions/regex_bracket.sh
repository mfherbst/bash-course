[[ "o" =~ ^[oale]$ ]]; echo $?   #true
[[ "a" =~ ^[oale]$ ]]; echo $?   #true
[[ "oo" =~ ^[oale]$ ]]; echo $?  #false
[[ "\$" =~ ^[$]$ ]]; echo $?     #true
