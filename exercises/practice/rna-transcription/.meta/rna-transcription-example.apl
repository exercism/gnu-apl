#!/usr/bin/env apl --script

∇rna←to_rna dna;dna_bases;rna_bases
  dna_bases←'CGTA'
  rna_bases←'GCAU'
  '1÷0' ⎕EA 'rna←rna_bases[dna_bases⍳dna]' ⍝ throw a domain error if not found
∇