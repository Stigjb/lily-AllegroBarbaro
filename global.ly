\version "2.18.2"

tupletNumbersOn = { \revert Voice.TupletNumber.stencil }
tupletNumbersOff = { \override Voice.TupletNumber.stencil = ##f }

global = \relative c {
  \compressFullBarRests
  \numericTimeSignature
  \time 2/4
  \key c \major
  \tempo "Tempo giusto"
  
  s2*6
  s2*7
  s2*7
  s2*7
  s2*6
  
}
