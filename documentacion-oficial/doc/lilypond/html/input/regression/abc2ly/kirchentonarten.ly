\version "2.24.0"

\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = "LilyPond (unknown version) was here -- automatically converted from ABC"
  title = "Church mode (E Dorian)"
}

"voicedefault" = {
\time 4/4 \key e \dorian \clef "bass"
 e'16[ b'8. b'8. a'16] b'8.[ a'16 b'16 d''8.] \bar "|" fis'16[ d'8. a'8. d'16] 
b'8.[ d'16 a'8. fis'16] \bar "|" e''8.[ cis''16 e''16 g''8.] e''8.[ b'16 e''16 
g''8.] \bar "|" 
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
