#!/bin/sh

# >&2 is a trick to print to stderr instead of stdout.
# There is no need to worry about this for now as this will
# be covered in much more detail in chapter 4.
echo stdout
echo stderr >&2
echo stdout
echo stderr >&2
