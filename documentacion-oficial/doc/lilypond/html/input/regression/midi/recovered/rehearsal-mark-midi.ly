% Lily was here -- automatically converted by midi2ly.py from out-www/rehearsal-mark.midi
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

% included from ./out-www/rehearsal-mark.header
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
  \skip 1 
  | % 2
  
  % [MARKER] A
  \skip 1 
  | % 3
  
  % [MARKER] B
  \skip 1 
  | % 4
  
  % [MARKER] X
  \skip 1 
  | % 5
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "\new:"
  \skip \longa 
}

trackBchannelB = \relative c {
  c'1 
  | % 2
  d 
  | % 3
  e 
  | % 4
  f 
  | % 5
  
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
