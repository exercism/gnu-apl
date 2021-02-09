#!/usr/bin/env apl --script

∇z←leap_year year
  z←(~×400|year)∨∧/0 1=×4 100|year
∇
