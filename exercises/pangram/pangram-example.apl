#!/usr/bin/env apl --script

lowercase←⎕AF (⎕AF 'a')+(⍳26)-1

∇z←is_pangram string
  z←∧/lowercase∊to_lower string
∇

∇z←to_lower string;uppercase;to_change
  uppercase←⎕AF ((⎕AF lowercase)-⎕AF 'a')+(⎕AF 'A')
  to_change←(string⍳uppercase)~1+⍴string
  z←string
  z[to_change]←lowercase[uppercase⍳string[to_change]]
∇