#!/usr/bin/env apl --script

⍝ Atbash cipher

pta ← 'abcdefghijklmnopqrstuvwxyz'
cta ← ⌽pta

⎕ex 'atbash∆decipher'
∇p ← atbash∆decipher c
 p ← condense decipher c ∇

⎕ex 'atbash∆encipher'
∇c ← atbash∆encipher p
 c ← group condense encipher p ∇
