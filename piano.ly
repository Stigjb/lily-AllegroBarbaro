\version "2.18.2"

\include "global.ly"

rightVOne = \relative c {
  \clef bass
  
  <a cis fis a>8 \clef treble <a' cis fis a> r q |
  r q r q |
  r q r q |
  r q r q |
  \voiceOne r4 <a a'>---> |
  q---> q---> |
  
  <g g'>-.-^ <a a'>~
  q2~ |
  q4 q---> |
  q---> q---> |
  <bis bis'>-.-^ <a a'>~ |
  q2~ |
  \oneVoice q8 q <bis bis'> <a a'> |
  
  <g g'>-> <a a'> <bis bis'> <a a'> |
  <g g'>-> <a a'> <bis bis'> <a a'> |
  <fisis fisis'>4-^-- <eis eis'>-^-- |
}

rightVTwo = \relative c' {
  s2*4
  \voiceTwo
  r8 <a cis fis a> r <cis fis> |
  r q r q |
  
  r <cis e> r <cis fis> |
  r q r q |
  r q r q |
  r q r q |
  r <e g> r <cis fis> |
  r q r q |
  s2
}

leftVOne = \relative c,, {
  \clef bass
  
  <fis cis' fis>8 r <fis' cis' fis> r |
  q r q r |
  q r q r |
  q r q r |
  q r <fis fis'>-- <a cis> |
  <fis fis'>-- <a cis> <fis fis'>-- <a cis> |
  
  <cis, cis'>-^ <e g> <fis fis'> <a cis> |
  <fis fis'> <a cis> <fis fis'> <a cis> |
  <fis fis'> <a cis> <fis fis'>-- <a cis> |
  <fis fis'>-- <a cis> <fis fis'>-- <a cis> |
  <cis, cis'>-^ <e g> <fis fis'> <a cis> |
  <fis fis'> <a cis> <fis fis'> <a cis> |
  <fis fis'> <a cis> <fis fis'> <a cis> |
  
  <cis, cis'>-> <e g> <fis fis'> <a cis> |
  <cis, cis'>-> <e g> <fis fis'> <a cis> |
  <bis gis'> gis4 <bis gis'>8 |
}

leftVTwo = \relative c {
  
}

pianoR = {
  <<
    \global
    \new Voice \rightVOne
    \new Voice \rightVTwo
  >>
}

pianoL = {
  <<
    \global
    \new Voice \leftVOne
    \new Voice \leftVTwo
  >>
}

pianoDyn = \new Dynamics {
  \override Voice.Hairpin.to-barline = ##f
  
}
