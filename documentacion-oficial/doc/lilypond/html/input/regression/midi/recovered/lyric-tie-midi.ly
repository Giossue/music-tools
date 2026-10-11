% Lily was here -- automatically converted by midi2ly.py from out-www/lyric-tie.midi
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove Note_heads_engraver
    \consists Completion_heads_engraver
    \remove Rest_engraver
    \consists Completion_rest_engraver
  }
}

% included from ./out-www/lyric-tie.header
\header {
texidoc=""
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = 60
  \skip \breve 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = ":uniqueContext0"
  \skip \breve 
}

trackBchannelB = \relative c {
  c'1 
  | % 2
  c 
  | % 3
  
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = \lyricmode {
  "a~~~a" 
  | % 2
  "a~~~a~~~a"4 " "2. 
  | % 3
  
}

trackC = <<
  \context Lyrics = voiceA \trackCchannelA
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Lyrics=trackC \trackC
  >>
  \layout {}
  \midi {}
}
