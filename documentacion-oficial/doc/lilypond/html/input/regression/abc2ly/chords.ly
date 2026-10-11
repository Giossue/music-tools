\version "2.24.0"

\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = "LilyPond (unknown version) was here -- automatically converted from ABC"
  title = "Chords"
}

cadenzaMeasure = {
  \cadenzaOff
  \partial 1024 s1024
  \cadenzaOn
}

"voicedefault" = {
\once \omit Staff.TimeSignature
 \cadenzaOn
 r4. < d' f' >8~( [ d'8 dis'8 )] \cadenzaMeasure \bar "|" dis'8[ f'8 < dis' f' 
>8 < e' g' >8 g'8] \cadenzaMeasure \bar "|" \times 2/3 { < f' b' >8 [ < d' f' 
>8 < b d' >8] } e'8 \cadenzaMeasure \bar "|" 
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
