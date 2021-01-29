#!/usr/bin/env apl --script

∇drops←convert integer;factors;sounds;multiple_of
  factors←3 5 7
  sounds←('Pling' 'Plang' 'Plong')
  multiple_of←0=factors|integer
  drops←∊(multiple_of,∧/0=multiple_of)/sounds,⊂⍕integer
∇