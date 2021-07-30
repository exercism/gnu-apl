#!/usr/bin/env apl --script

word←'listen'
candidates←'enlists' 'google' 'inlets' 'banana' 'tinsel'

⍝ Start by writing a function that, given a _word_ as left argument,
⍝ returns either true (1) or false (0) if _other_ is an anagram.

∇r ← word   is_anagram_of   other
  ⍝ Return 1 if _other_ is an anagram of _word_; else 0
  ⍝ r ← .. your code here ..
∇

⍝ Construct here a call to the above function that, given _word_ and _candidates_,
⍝ returns the list of anagrams of _word_, if any, present in _candidates_.

      ⍝ (your APL expression invoking is_anagram_of with _word_ and _candidates_)
 inlets tinsel 


