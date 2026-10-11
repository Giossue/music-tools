% Lily was here -- automatically converted by midi2ly.py from out-www/tempo.midi
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

% included from ./out-www/tempo.header
\header {
texidoc=""
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 4/4
  
  \tempo 4 = #4000000/1118481 % ≈3.57628
  \skip 1 
  | % 2
  
  \tempo 4 = #4000000/1118481 % ≈3.57628
  \skip 1 
  | % 3
  
  \tempo 4 = #15/4 % 3.75
  \skip 1 
  | % 4
  
  \tempo 4 = #60000000/1831 % ≈32769
  \skip 1 
  | % 5
  
  \tempo 4 = 60000000
  \skip 1 
  | % 6
  
  \tempo 4 = 60000000
  \skip 1 
  | % 7
  
  \tempo 4 = 60000000
  \skip 1 
  | % 8
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "\new:"
  \skip 1*7 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
>>


\score {
  <<
    \context Staff \trackA
  >>
  \layout {}
  \midi {}
}
