#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ isogram exercise, GNU-APL track, exercism

alphabet ← 'abcdefghijklmnopqrstuvwxyz'
ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

counts ← {+/ ⍺ ∘.= ⍵}

isIsogram ← {2 > ⌈/ (alphabet counts ⍵) + (ALPHABET counts ⍵)}
