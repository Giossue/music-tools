% Lily was here -- automatically converted by midi2ly.py from out-www/spacer-no-notes.midi
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

% included from ./out-www/spacer-no-notes.header
\header {
texidoc=""
options=""
}
% end

trackAchannelA = {


  \key g \minor
    
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
  
  \set Staff.instrumentName = "\new:"
  

  \key g \minor
  \skip \breve 
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
