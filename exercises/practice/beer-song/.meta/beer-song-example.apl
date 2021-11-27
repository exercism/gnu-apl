#!/usr/local/bin/apl --script

⍝ The famous '99 Bottles of Beer' road song in APL
⍝
⍝ This solution uses a straightforward recursive solution.
⍝ There are iterative and tail-recursive ways to do it, why
⍝ not try it those ways afterwards?
⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝

∇s beers n;next
 ⍝⍝ This function does the real work; note that it takes
 ⍝⍝ two arguments: s is the original count at the start of
 ⍝⍝ the song, so that it can be printed at the end.
 ⍝⍝⍝⍝

 next←n-1
 →(n=0)/none
 →(n=1)/last
 ⎕←n,'Bottles of beer on the wall,',n,'bottles of beer.'
 ⎕←'Take one down and pass it around,',next,'bottles of beer on the wall.'
 s beers next
 →0
last:
 ⎕←n,'Bottle of beer on the wall,',n,'bottle of beer.'
 ⎕←'Take it down and pass it around, no more bottles of beer on the wall.'
 s beers next
 →0
none:
 ⎕←'No more bottles of beer on the wall, no more bottles of beer.'
 ⎕←'Go to the store and buy some more,',s,'bottles of beer on the wall.'
 →0
∇

∇beerSong n
 ⍝⍝ This is the main entry function.
 ⍝⍝ Note we avoid counting down from 0 bottles of beer!
 ⍝⍝⍝⍝
 →(n≥0)/viableSong
nonsense:
 ⎕←'Negative beer? Madness!'
 →0
viableSong:
 n beers n
∇
