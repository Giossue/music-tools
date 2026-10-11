\version "2.24.0"

\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = "LilyPond (unknown version) was here -- automatically converted from ABC"
  title = "Tempo marks"
}

cadenzaMeasure = {
  \cadenzaOff
  \partial 1024 s1024
  \cadenzaOn
}

"voicedefault" = {
\key c \major \clef "bass"
 \tempo 4 = 120
 \once \omit Staff.TimeSignature
 \cadenzaOn
 c'4 e'4 g'4 c''4 \cadenzaMeasure \bar "|" \tempo "Andante" 2 = 66
 c'4 e'4 g'4 c''4 \cadenzaMeasure \bar "|." 
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
