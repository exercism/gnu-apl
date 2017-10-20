#!/usr/bin/env apl --script

∇z←square_of_sum integer
  z←(+/⍳integer)*2
∇

∇z←sum_of_squares integer
  z←+/(⍳integer)*2
∇