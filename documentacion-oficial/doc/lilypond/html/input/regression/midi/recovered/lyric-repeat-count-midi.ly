% Lily was here -- automatically converted by midi2ly.py from out-www/lyric-repeat-count.midi
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

% included from ./out-www/lyric-repeat-count.header
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
  \skip 1*7 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  \skip 1*7 
}

trackBchannelB = \relative c {
  f'2 g 
  | % 2
  a g 
  | % 3
  f e 
  | % 4
  f1 
  | % 5
  g\breve f1 
  | % 8
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = \lyricmode {
  "Lo"2 "rem." 
  | % 2
  "Ip" "sum." 
  | % 3
  "Do" "lor." 
  | % 4
  "Sit."1 
  | % 5
  "A"\breve "met."4 " "2. 
  | % 8
  
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
