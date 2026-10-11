% Lily was here -- automatically converted by midi2ly.py from out-www/time-signature-unsupported.midi
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

% included from ./out-www/time-signature-unsupported.header
\header {
texidoc=""
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] LilyPond 2.26.0               
  
  \time 2/2
  
  \tempo 4 = 60
  \skip \breve 
  \time 2/2
  \skip \breve 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "\new:"
  \skip \longa 
}

trackBchannelB = \relative c {
  c'4*128/384 c c c c c c c d d d d 
  | % 2
  d d d d e e e e e e e e 
  | % 3
  f f f f f f f f g g g g 
  | % 4
  g g g g a a a a a a a a 
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
