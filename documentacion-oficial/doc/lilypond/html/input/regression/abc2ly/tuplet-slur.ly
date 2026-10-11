\version "2.24.0"

\header {
  crossRefNumber = "2"
  footnotes = ""
  tagline = "LilyPond (unknown version) was here -- automatically converted from ABC"
  title = "Tuplets and slurs"
}

"voicedefault" = {
\numericTimeSignature \time 4/4 \key c \major a''8 \times 2/3 { g''8 ([ a''8 
b''8 )] } a''8 \times 2/3 { g''8 ([ a''8 b''8 )] } 
}


\score {
  <<
    \context Staff = "default" {
      \"voicedefault"
    }
  >>

  \layout {
    \context {
      \Voice
      \autoBeamOff
      melismaBusyProperties = #'()
    }
  }
  \midi {}
}
