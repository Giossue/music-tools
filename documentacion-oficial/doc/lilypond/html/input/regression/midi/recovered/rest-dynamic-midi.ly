% Lily was here -- automatically converted by midi2ly.py from out-www/rest-dynamic.midi
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

% included from ./out-www/rest-dynamic.header
\header {
texidoc="LilyPond respects rests, also when there are dynamics"
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 2/4
  
  \tempo 4 = 60
  \skip 1 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  \skip 1 
}

trackBchannelB = \relative c {
  e'4 e 
  | % 2
  r4 e 
  | % 3
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
