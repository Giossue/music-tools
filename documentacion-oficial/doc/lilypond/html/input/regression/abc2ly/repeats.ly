\version "2.24.0"

\header {
  crossRefNumber = "1"
  footnotes = ""
  meter = "jig"
  tagline = "LilyPond (unknown version) was here -- automatically converted from ABC"
  title = "Repeats"
}

"voicedefault" = {
\repeat volta 2 {
\time 6/8 \key g \major g'8[ fis'8 g'8] b'8[ a'8 b'8] 

  \alternative {
    \volta 1 { d''8[ b'8 a'8] a'8[ fis'8 d'8] }
    \volta 2 { d''8[ b'8 a'8] a'8[ b'8 d''8] } } }
\repeat volta 2 { e''8[ fis''8 e''8] e''8[ d''8 b'8] }
\repeat volta 2 { g''8[ d''8 b'8] a'8[ b'8 d''8] \bar "|" d''8[ b'8 a'8] 

  \alternative {
    \volta 1 { a'8[ b'8 d''8] }
    \volta 2 { d''8[ b'8 a'8] a'8[ fis'8 d'8] \bar "|." } } }
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
