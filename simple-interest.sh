#!/bin/bash
# simple-interest.sh

echo "Enter the Principal Amount (P):"
read p
echo "Enter the Rate of Interest per year (R):"
read r
echo "Enter the Time Period in years (T):"
read t

# Perform calculation using bc
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l)

echo "-----------------------------------"
echo "Principal: $p"
echo "Rate: $r%"
echo "Time: $t years"
echo "Simple Interest: $interest"
echo "Total Amount: $(echo "$p + $interest" | bc -l)"
