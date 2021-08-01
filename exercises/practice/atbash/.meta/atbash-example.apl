#!/usr/bin/env  apl --script

⍝ Atbash cipher

pta ← 'abcdefghijklmnopqrstuvwxyz'
cta ← ⌽pta

⎕ex 'atbash∆decipher'
∇p ← atbash∆decipher c
 p ← condense decipher c ∇

⎕ex 'atbash∆encipher'
∇c ← atbash∆encipher p
 c ← group condense encipher p ∇

⎕ex 'encipher'
∇ct ← encipher pt
 ⍝⍝ Encipher plaintext pt
 ⍝⍝
 ⍝⍝ @return: ct - ciphertext
 ⍝⍝
 ⍝⍝ NOTE: uses globals _pta_ (plaintext alphabet) and
 ⍝⍝ _cta_ (ciphertext alphabet)
 ct ← (cta,' ')[pta ⍳ pt]
   ⍝⍝ |   |||||
   ⍝⍝ ^---^^^^^  This handles chars in pt ~∊ pta (spaces and invalid syms)
   ⍝⍝
   ⍝⍝ Try just: cta[pta ⍳ pt] instead, see what occurs with:
   ⍝⍝ encipher 'test message' versus 'test me$sAge'
   ⍝⍝ NB: Consider how (cta,' ') work the way it does (Hint: it has to do with
   ⍝⍝    how the APL ⍳ dyadic function handles a not-found condition.)
∇

⎕ex 'decipher'
∇pt ← decipher ct
 ⍝⍝ Decipher ciphertext ct
 ⍝⍝
 ⍝⍝ @return: pt - plaintext
 ⍝⍝
 ⍝⍝ NOTE: uses globals _pta_ (plaintext alphabet) and
 ⍝⍝ _cta_ (ciphertext alphabet)
 pt ← (pta,' ')[cta ⍳ ct]
∇

∇c ← condense s
 ⍝⍝ 'Condense' s, removing spaces and any other chars not in
 ⍝⍝ _pta_ (plaintext alphabet) from s
 ⍝⍝
 ⍝⍝ @return: c - condensed s
 ⍝⍝
 ⍝⍝ NOTE: uses globals _pta_ (plaintext alphabet) and
 ⍝⍝ _cta_ (ciphertext alphabet)
 c ← (s ∊ pta)/s  ⍝ remove all symbols not in alphabet
∇

∇r ← group c;ct;mct
 ⍝⍝ Return c grouped by 5 chars, each group separated by a space
 ⍝⍝
 ⍝⍝ @param: c - a string
 ⍝⍝ @return: r - c, grouped into 5 char groups, each separated by a space

 ct ← condense c                 ⍝ Remove spaces
 mct ← ((⌈(≢ct)÷5) 5 ⍴ ct),' ' ⍝ Reform into a matrix, trailing space on each row

 ⍝ Return all rows as a single vector, trailing extra data omitted.
 ⍝ Note the calculated argument to iota (⍳) here, which adjusts to
 ⍝ both exclude any repeated data of _ct_ from reshaping into _mct_,
 ⍝ and also to count the number of groups (and thus spaces between)
 ⍝ required for output.

 r ← (∊ mct)[⍳(≢ct) + (≢mct)-1]  ⍝ ≢mct is tally of the first dim (rows) of mct
∇

⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝
⍝      atbash∆encipher 'test'
⍝gvhg
⍝      atbash∆decipher 'gvhg'
⍝test
⍝      atbash∆decipher atbash∆encipher 'test'
⍝test
⍝      atbash∆decipher atbash∆encipher 'test mes$Age'  ⍝⍝ NOTE the invalid '$' and 'A'!
⍝testmesge
⍝      atbash∆decipher atbash∆encipher 'this is a really long test message'
⍝thisisareallylongtestmessage
