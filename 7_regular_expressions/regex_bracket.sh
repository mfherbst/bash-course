[[ "o" =~ ^[oale]$ ]]; echo $?   #0=true
[[ "a" =~ ^[oale]$ ]]; echo $?   #0=true
[[ "oo" =~ ^[oale]$ ]]; echo $?  #1=false
[[ "\$" =~ ^[$]$ ]]; echo $?     #0=true
