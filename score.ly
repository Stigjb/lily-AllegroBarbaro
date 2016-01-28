\version "2.18.2"
\include "global.ly"
\include "piano.ly"

\header {
  title = "Allegro Barbaro"
  composer = "Béla Bartók"
  % opus = "Op. 120 no. 2"
}

\bookpart {
  \score {
    <<
      \new PianoStaff <<
        \new Staff = "up" \pianoR
        \pianoDyn
        \new Staff = "down" \pianoL
      >>
    >>
    \layout {}
    \midi {
      \tempo 2 = 84
    }
  }
}
