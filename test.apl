#!/usr/bin/env apl --script

⍝ Clear logfile with given filename.
∇test∆clear_log filename
  handle←'w' ⎕FIO[3] filename
  _←⎕FIO[4] handle
∇

⍝ )COPY file relative to current directory.
∇test∆copy_relative path
  _←⍎ ')COPY ',test¯pwd,'/',path
∇

⍝ Write logfile with given filename to stderr as UTF-8.
∇test∆show_log filename
  cr←⎕ucs 10
  test¯warn cr,'***** TEST LOG *****',cr,cr
  test¯warn test¯read_unicode filename
∇

⍝ Evaluate APL code (as string).
⍝ Returns 2-element vector:
⍝ [1] Boolean (1 if error, 0 if not)
⍝ [2] Error message if error; original result if not.
∇z←test∆try apl_string;response;is_error
  response←⎕EC apl_string
  is_error←0=↑response
  z←is_error ((↑¯1↑response)[1;])
∇

⍝ private

⍝ Return current directory as a string.
∇pwd←test¯pwd
  pwd←⎕FIO 30
∇

⍝ Read a UTF-8 file into a Unicode character vector.
∇unicode←test¯read_unicode filename
  unicode←19⎕CR ⎕FIO[26] filename
∇

⍝ Write string to stderr.
∇test¯warn string
  _←'%s' string ⎕FIO[22] 2
∇
