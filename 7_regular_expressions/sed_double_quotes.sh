# compare
echo '\$a' | sed "s/\\\\\$a/bbb/g"

# with the single-quote example
echo '\$a' | sed 's/\\$a/bbb/g'
