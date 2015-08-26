#!/bin/bash

echo "Plain grep gives:"
<  resources/testfile grep ".[a-f]$"

echo "grep -o gives:"
<  resources/testfile grep -o ".[a-f]$"
