\version "2.24.0"

\header {
  crossRefNumber = "1"
  footnotes = ""
  subtitle = "(missing square bracket, duration of grace notes)"
  tagline = "LilyPond (unknown version) was here -- automatically converted from ABC"
  title = "abc2ly grace note bug"
}

"voicedefault" = {
\time 4/4 \key e \dorian \grace { g''8[ a''8] } g''8[ d''8 g''8 b''8] \grace { 
a''8 } g''8.[ d''16] g''16[ a''8.] \bar "|" 
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
