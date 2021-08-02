#!/usr/bin/env apl --script

⍝⍝ Determine if a number _n_ is an Armstrong number

⎕ex 'digitsOf'
∇r ← digitsOf n;digitList
digitList ← ⍬
loop:→((⌊n)=0)/done
  digitList ← digitList,(⌊n|⍨10)
  n ← n÷10
→loop
done: r ← ⊖digitList
∇

⎕ex 'isArmstrongNumber'
∇r ← isArmstrongNumber n;digits;nd     
  digits ← digitsOf n
  nd ← ≢ digits
  r ← n = +/digits * nd
∇

⍝      isArmstrongNumber 9
⍝1
⍝      isArmstrongNumber 10
⍝0
⍝      isArmstrongNumber 153
⍝1
