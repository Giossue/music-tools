\version "2.24.0"

\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = "LilyPond (unknown version) was here -- automatically converted from ABC"
}

"wordsdefaultV1" = \lyricmode {
For he's a fel -- _ _ _ low, for 
he's a nice __ _ _ fel -- low, for he's a jol -- ly good  
fel -- low, which no-bo-dy no_bo_dy _ can de -- ny!  
}

"voicedefault" = {
%  T: For He's a Jolly Good Fellow
 \time 6/8 \key c \major r4. r4 g'8 \bar "|" e'4 ^"C" e'8 e'8[ d'8 e'8] 
\bar "|" f'4. e'4 e'8 \bar "|" d'4 ^"G" d'8 d'8[ c'8 d'8] \bar "|" e'4. ^"C" 
c'4 c'8 \bar "|" e'4 ^"C7" e'8 e'8[ d'8 e'8] \bar "|" f'4. ^"F" a'4 ^\fermata 
a'8 \bar "|" g'2. ^"C" \bar "|" a'2. \bar "|" g'4. f'4 ^"G" d'8 \bar "|" c'4. 
^"C" r4. \bar "|." 
}


\score {
  <<
    \context Staff = "default" {
      \"voicedefault"
    }
    \addlyrics {
      \"wordsdefaultV1"
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
