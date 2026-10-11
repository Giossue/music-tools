% Lily was here -- automatically converted by midi2ly.py from out-www/beat-structure-by-metronome-8-8.midi
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

% included from ./out-www/beat-structure-by-metronome-8-8.header
\header {
texidoc=""
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 8/8
  
  \tempo 4 = 60
  \skip 1 
  | % 2
  
  \time #'(2) 8/8
  \skip 1 
  | % 3
  
  \time #'(4) 8/8
  \skip 1 
  | % 4
  
  \time #'(8) 8/8
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
  c'8 c c c c c c c 
  | % 2
  d d d d d d d d 
  | % 3
  e e e e e e e e 
  | % 4
  f f f f f f f f 
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
