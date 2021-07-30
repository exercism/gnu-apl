#!/usr/bin/env  apl --script

word←'listen'
candidates←'enlists' 'google' 'inlets' 'banana' 'tinsel'

∇r ← word is_anagram_of other
  r ← word[⍋word] ≡ other[⍋other]
∇

((⊂word) is_anagram_of ¨ candidates)/candidates

⍝⍝ NB. GNU APL also supports 'dfns' (simple lambdas). An equivalent
⍝⍝ solution using dfn syntax:
⍝⍝   ((⊂word) {⍺[⍋⍺] ≡ ⍵[⍋⍵]} ¨ candidates)/candidates

